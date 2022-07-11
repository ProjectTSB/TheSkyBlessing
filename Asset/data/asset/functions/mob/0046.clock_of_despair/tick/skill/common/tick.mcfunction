#> asset:mob/0046.clock_of_despair/tick/skill/common/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/schedule

execute if entity @s[tag=1A.SkillBeam] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/tick
execute if entity @s[tag=1A.SkillThunderMaker] rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/vfx
execute if entity @s[tag=1A.SkillFireMaker] rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/vfx
execute if entity @s[tag=1A.GearGold] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/tick
execute if entity @s[tag=1A.GearSilver] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/tick
execute if entity @s[tag=1A.WallLazerClock] run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/tick
execute if entity @s[tag=1A.SkillPenaltyThunderMaker] run function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/tick