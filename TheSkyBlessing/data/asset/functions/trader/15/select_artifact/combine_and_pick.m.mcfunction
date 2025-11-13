#> asset:trader/15/select_artifact/combine_and_pick.m
#
#
#
# @within function asset:trader/15/select_artifact/

#> Length
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Random

# 配列を結合
    $data modify storage api: Return.Registry.Normal[$(Rarity)] append from storage api: Return.Registry.Rare[$(Rarity)]

# 念のためdistinctして同一要素を取り除き、その中からPickする
# distinctが要らないならレビューしてくれ～
    function lib:array/session/open

# lib: Arrayに配列をコピー
    $data modify storage lib: Array set from storage api: Return.Registry.Normal[$(Rarity)]

# 被り除去
    function lib:array/distinct

# picksする
    data modify storage lib: Picks set value [0]
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
    function lib:array/picks
    # tellraw @a {"storage":"lib:","nbt":"Elements"}

# 2次元配列を1次元にしておく
    data modify storage lib: Elements set from storage lib: Elements[]

# 選んだ要素が要素数2以上ならもう一度picksする
    execute if data storage lib: Elements[1] run function asset:trader/15/select_artifact/re_picks
    # tellraw @a {"storage":"lib:","nbt":"Elements"}

# 配列に設定しておく
    $data modify storage asset:temp Sell[$(Rarity)] set from storage lib: Elements[0]

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary
