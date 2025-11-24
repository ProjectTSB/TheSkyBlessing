#> lib:random/with_biased/m
#
# バイアス付きの乱数を返します。
#
# scarcity_history_size として max の 35% (切り捨て、ただし 2 以上) を利用します。
#
# @input args
#   key: string
#       同じバイアスを利用するキー
#   max: int
#       生成結果の範囲
# @api

# オーバーロード用の値を設定する
    $data modify storage lib: Args set value {key:"$(key)",max:$(max)}
    $execute store result storage lib: Args.scarcity_history_size int 0.35 run scoreboard players set $max Temporary $(max)
    execute if data storage lib: Args{scarcity_history_size:0} run data modify storage lib: Args.scarcity_history_size set value 2
    execute if data storage lib: Args{scarcity_history_size:1} run data modify storage lib: Args.scarcity_history_size set value 2
    scoreboard players reset $max Temporary

# マニュアル側を呼び出す
    return run function lib:random/with_biased/manual.m with storage lib: Args
