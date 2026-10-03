#> effect_test:benchmark/setup.m
#
# 性能測定用に指定数の付与先を作り、それぞれに指定数の Effect を設定する。
# @private

# 前の条件の付与先を片付け、イベント本体を省略する測定モードへ切り替える
    kill @e[tag=EffectTest.Bench]
    forceload add 0 0
    data modify storage effect_test: Benchmark set value true

# 指定された条件で付与先を作成する
    $function effect_test:benchmark/template/$(Effects)
    $scoreboard players set $BenchOwners Temporary $(Owners)
    function effect_test:benchmark/summon
