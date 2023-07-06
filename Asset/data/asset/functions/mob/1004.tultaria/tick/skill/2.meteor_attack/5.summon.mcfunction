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
#declare score_holder $AttackAmount

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] run function lib:spread_entity/

# マーカーに対してメテオを召喚
    data modify storage api: Argument.ID set value 1011
    execute at @e[type=marker,tag=SpreadMarker,distance=..100] positioned ~ ~40 ~ run function api:mob/summon

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..100]

# スコア減らす
    scoreboard players remove $AttackAmount Temporary 1

# スコア残ってるようなら再帰
    execute if score $AttackAmount Temporary matches 0.. run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/5.summon

# 0以下ならリセット
    execute if score $AttackAmount Temporary matches 0.. run scoreboard players reset $AttackAmount Temporary