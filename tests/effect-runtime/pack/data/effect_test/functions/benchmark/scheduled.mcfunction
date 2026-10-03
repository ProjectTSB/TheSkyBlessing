#> effect_test:benchmark/scheduled
#
# プロファイラ開始後の tick に、計測対象のバッチを実行する
# debug start 直後の RCON 呼出しが profiling 区間外になることを避ける
# @private

# シナリオが準備した反復数でバッチを開始する
    function effect_test:benchmark/batch.m with storage effect_test: BenchArgs
