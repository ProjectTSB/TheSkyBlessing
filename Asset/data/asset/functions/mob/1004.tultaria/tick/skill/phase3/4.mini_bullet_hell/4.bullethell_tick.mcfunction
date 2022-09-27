#> asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/4.bullethell_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/1.tick

#> SpreadLib
# @private
#declare tag SpreadMarker
#declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $6 Const

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # 拡散設定
        execute if score $Random Temporary matches 0..1 run data modify storage lib: Argument.Bounds set value [[1d,1d],[0d,3d],[8d,8d]]
        execute if score $Random Temporary matches 2..3 run data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
        execute if score $Random Temporary matches 4..5 run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,3d],[1d,1d]]

    # 拡散実行
        execute as @e[type=marker,tag=SpreadMarker,distance=..50] run function lib:spread_entity/

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1017
    execute if score $Random Temporary matches 0 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~12 ~ ~ run function api:mob/summon
    execute if score $Random Temporary matches 1 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~-12 ~ ~ run function api:mob/summon
    execute if score $Random Temporary matches 2 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~ ~12 run function api:mob/summon
    execute if score $Random Temporary matches 3 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~ ~-12 run function api:mob/summon
    execute if score $Random Temporary matches 4..5 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~12 ~ run function api:mob/summon

# 拡散マーカーを消す
    kill @e[type=marker,tag=SpreadMarker,distance=..50]

# リセット
    scoreboard players reset $Random Temporary
