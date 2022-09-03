#> asset:mob/1004.tultaria/tick/skill/2.meteor_attack/5.summon
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor
#   asset:mob/1004.tultaria/tick/skill/2.meteor_attack/5.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @r run function lib:spread_entity/

# マーカーに対してメテオを召喚
    data modify storage api: Argument.ID set value 1011
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~40 ~ run function api:mob/summon

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]

# スコア減らす
    scoreboard players remove $AttackAmount Temporary 1

# スコア残ってるようなら再帰
    execute if score $AttackAmount Temporary matches 0.. run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/5.summon

# 0以下ならリセット
    execute if score $AttackAmount Temporary matches 0.. run scoreboard players reset $AttackAmount Temporary