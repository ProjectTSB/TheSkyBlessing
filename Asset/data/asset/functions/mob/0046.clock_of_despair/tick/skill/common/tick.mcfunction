#> asset:mob/0046.clock_of_despair/tick/skill/common/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/schedule

execute if entity @s[tag=1A.SkillBallAEC] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/tick
execute if entity @s[tag=1A.SkillBeam] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/tick
execute if entity @s[tag=1A.SkillThunderMaker] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/vfx
execute if entity @s[tag=1A.SkillFireMaker] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/vfx
