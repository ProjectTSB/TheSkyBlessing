#> effect_test:benchmark/batch.m
#
# 全付与先の Effect manager を Iterations 回実行し、完了した反復数を保存する。
# @private

# 反復数を初期化する
    $scoreboard players set $BenchIterations Temporary $(Iterations)
    scoreboard players set $BenchCompleted Temporary 0

# バッチを実行して完了数を保存する
    function effect_test:benchmark/loop
    execute store result storage effect_test: Completed int 1 run scoreboard players get $BenchCompleted Temporary
