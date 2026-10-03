#> effect_test:benchmark/loop
#
# 指定された反復数だけ全付与先の Effect を処理する
# @private

# 全付与先の Effect を処理する
    execute as @e[tag=EffectTest.Bench] at @s run function asset_manager:effect/tick

# 残りの反復を実行する
    scoreboard players add $BenchCompleted Temporary 1
    scoreboard players remove $BenchIterations Temporary 1
    execute if score $BenchIterations Temporary matches 1.. run function effect_test:benchmark/loop
