#> effect_test:benchmark/loop
#
# 一回の反復で測定対象の全付与先を処理する。
# 関数の再帰でバッチを作り、実ゲームの tick 数とは区別する。
# @private

# それぞれの付与先を実行者・位置にして manager を呼ぶ
    execute as @e[tag=EffectTest.Bench] at @s run function asset_manager:effect/tick

# 完了数と残り回数を更新し、必要な回数だけ反復する
    scoreboard players add $BenchCompleted Temporary 1
    scoreboard players remove $BenchIterations Temporary 1
    execute if score $BenchIterations Temporary matches 1.. run function effect_test:benchmark/loop
