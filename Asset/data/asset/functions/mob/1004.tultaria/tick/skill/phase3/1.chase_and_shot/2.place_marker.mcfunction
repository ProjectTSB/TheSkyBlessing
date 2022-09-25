#> asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/2.place_marker
#
# マーカー設置
#
# @within function asset:mob/1004.tultaria/tick/**

#> private
# @private
    #declare score_holder $Random

# タグ付与
    tag @s add RW.ChaseShot

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# ランダムな方向から飛んでくる
    execute if score $Random Temporary matches 0 run summon marker ~ ~ ~ {Tags:[RW.ChaseMarker,RW.ChaseMarker1]}
    execute if score $Random Temporary matches 1 run summon marker ~ ~ ~ {Tags:[RW.ChaseMarker,RW.ChaseMarker2]}
    execute if score $Random Temporary matches 2 run summon marker ~ ~ ~ {Tags:[RW.ChaseMarker,RW.ChaseMarker3]}
    execute if score $Random Temporary matches 3 run summon marker ~ ~ ~ {Tags:[RW.ChaseMarker,RW.ChaseMarker4]}

# リセット
    scoreboard players reset $Random Temporary