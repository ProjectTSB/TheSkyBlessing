#> asset:mob/0078.messenger_of_thunder/skill/1/3.thunder_point2
#
# 雷を落とす位置用のAECを召喚し拡散する
#
# @within function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1

# AECを召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:31,Tags:["Object","26.SkillThunderMarker"]}

# 拡散する ハードだと拡散範囲が拡大 ハードで体力半分以下でさらに拡大
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Bounds set value [[12.5d,12.5d],[0d,0d],[12.5d,12.5d]]
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=26.HPLess50Per] run data modify storage lib: Argument.Bounds set value [[15.0d,15.0d],[0d,0d],[15.0d,15.0d]]

    execute as @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# リセット
    data remove storage lib: Argument