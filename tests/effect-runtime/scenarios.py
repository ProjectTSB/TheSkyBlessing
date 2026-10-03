"""Expand explicit test conditions into DevSpace runner commands.

Only reporting boilerplate and benchmark repetition are generated; inputs and
expected conditions remain in the JSON files. The expanded JSON is kept in the
disposable checkout and archived by the common runner.
"""
import copy


def expand(source):
    scenario = copy.deepcopy(source)
    if 'cases' in scenario:
        scenario['steps'] = benchmark_steps(scenario.pop('cases'))
    for step in scenario['steps']:
        if 'checks' not in step:
            continue
        step['expect'] = []
        for index, check in enumerate(step.pop('checks')):
            label = f"{step['name']}_{index}"
            if 'probe' in check:
                step['commands'] += [
                    'data remove storage effect_test: Probe',
                    'data modify storage effect_test: Probe set from storage effect_test: ' + check['probe'],
                ]
            step['commands'] += [
                f'data modify storage effect_test: Check set value "FAIL_{label}"',
                f'execute {check["condition"]} run data modify storage effect_test: Check set value "PASS_{label}"',
                'data get storage effect_test: Check',
            ]
            step['expect'].append(f'PASS_{label}')
    return scenario


def benchmark_steps(cases):
    steps = [{
        'name': 'benchmark_limits',
        'commands': ['gamerule maxCommandChainLength 10000000', 'gamerule maxCommandChainLength'],
        'expect': ['10000000'],
    }]
    for case in cases:
        owners, effects, iterations = case['owners'], case['effects'], case['iterations']
        name = f'M{owners}_N{effects}'
        args = f'{{Iterations:{iterations}}}'
        steps.append({
            'name': f'setup_{name}',
            'commands': [
                f'function effect_test:benchmark/setup.m {{Owners:{owners},Effects:{effects}}}',
                f'function effect_test:benchmark/batch.m {args}',
                'data get storage effect_test: Completed',
            ],
            'expect': [f'following contents: {iterations}'],
        })
        for sample, duration in enumerate(case['expectedDurations'], 1):
            sample_name = f'{name}_{sample}'
            steps += [
                {'name': f'profile_start_{sample_name}', 'commands': ['debug start'],
                 'expect': ['Started tick profiling']},
                {'name': f'profile_activate_{sample_name}', 'ticks': 1},
                {'name': f'schedule_{sample_name}', 'commands': [
                    f'data modify storage effect_test: BenchArgs set value {args}',
                    'data modify storage effect_test: Completed set value 0',
                    'schedule function effect_test:benchmark/scheduled 1t',
                    'data get storage effect_test: Completed',
                ], 'expect': ['following contents: 0']},
                {'name': f'profile_batch_{sample_name}', 'ticks': 1},
                {'name': f'measure_{sample_name}', 'commands': [
                    'debug stop',
                    'data get storage effect_test: Completed',
                    'execute as @e[tag=EffectTest.Bench,limit=1] run function oh_my_dat:please',
                    'data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0].Duration',
                ], 'expect': ['Stopped.*profiling', f'following contents: {iterations}',
                              f'following contents: {duration}']},
            ]
    return steps
