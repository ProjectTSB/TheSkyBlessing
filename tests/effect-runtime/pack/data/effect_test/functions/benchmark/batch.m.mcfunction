#> effect_test:benchmark/batch.m
#
# 全付与先の Effect manager を Iterations 回実行し、完了した反復数を保存する。
# 総 owner-tick 数は付与先数 × Iterations。結果は effect_test: Completed に保持する。
# @private

# 今回の反復回数を設定し、完了数をゼロへ戻す
    $scoreboard players set $BenchIterations Temporary $(Iterations)
    scoreboard players set $BenchCompleted Temporary 0

# バッチを実行し、シナリオが検証する完了数を保存する
    function effect_test:benchmark/loop
    execute store result storage effect_test: Completed int 1 run scoreboard players get $BenchCompleted Temporary
