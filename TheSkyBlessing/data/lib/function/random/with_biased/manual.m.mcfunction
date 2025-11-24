#> lib:random/with_biased/manual.m
#
# バイアス付きの乱数を返します。
#
# @input args
#   key: string
#       同じバイアスを利用するキー
#   max: int
#       生成結果の範囲
#   scarcity_history_size: int
#       過去何回の生成結果を出にくくするか、この値は 2 以上である必要があります
# @api

#> Private
# @private
    #declare score_holder $size

#> Private
# @within function lib:random/with_biased/*
    #declare score_holder $max

# Validate
    $execute if score $0 Const matches $(scarcity_history_size) run tellraw @s [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"scarcity_history_size に 1 以下の値が指定されています。"}]
    $execute if score $1 Const matches $(scarcity_history_size) run tellraw @s [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"scarcity_history_size に 1 以下の値が指定されています。"}]

# マクロ引数をスコアとして取得する
    $scoreboard players set $max Temporary $(max)

# そのキーの過去の生成結果を取得する
    $data modify storage lib: RecentHits set from storage lib: RecentHitsData.$(key)

# 値を生成する
    function lib:random/with_biased/rec

# 生成結果を追加する
    data modify storage lib: RecentHits append from storage lib: Random.value

# 生成結果のサイズが scarcityHistorySize 以上の場合先頭を削除する
    execute store result score $size Temporary if data storage lib: RecentHits[]
    $execute if score $size Temporary matches $(scarcity_history_size).. run data remove storage lib: RecentHits[0]

# 生成結果を保存する
    $data modify storage lib: RecentHitsData.$(key) set from storage lib: RecentHits

# 諸々リセット
    scoreboard players reset $max Temporary
    scoreboard players reset $size Temporary
    data remove storage lib: isScarcityHistoryIncluded
    data remove storage lib: Random
    data remove storage lib: RecentHits

# 値を返すために get する
    $return run data get storage lib: RecentHitsData.$(key)[-1]
