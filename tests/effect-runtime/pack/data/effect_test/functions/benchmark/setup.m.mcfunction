#> effect_test:benchmark/setup.m
#
# 性能測定用の付与先数と、一つの付与先あたりの Effect 数を準備する。
# Owners / Effects は benchmark.json の条件から渡す。
# @private

# 前の条件の付与先を片付け、イベント本体を省略する測定モードへ切り替える
    kill @e[tag=EffectTest.Bench]
    forceload add 0 0
    data modify storage effect_test: Benchmark set value true

# 指定要素数のテンプレートを用意し、指定数の付与先へ複製する
    $function effect_test:benchmark/template/$(Effects)
    $scoreboard players set $BenchOwners Temporary $(Owners)
    function effect_test:benchmark/summon
