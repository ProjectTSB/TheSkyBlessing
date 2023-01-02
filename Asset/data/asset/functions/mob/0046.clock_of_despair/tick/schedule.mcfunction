#> asset:mob/0046.clock_of_despair/tick/schedule
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# スキル用の常時実行
    execute as @e[type=marker,tag=1A.SkillMarker] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/tick
    execute as @e[type=armor_stand,tag=1A.SkillMarker] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/tick
