#> asset:mob/0046.clock_of_despair/tick/schedule
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# スキル用の常時実行
    execute as @e[type=area_effect_cloud,tag=1A.SkillBallAEC] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_tick
    execute as @e[type=area_effect_cloud,tag=1A.SkillBeam] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_tick
    execute as @e[type=area_effect_cloud,tag=1A.SkillThunderMaker] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/paticle_thunder
    execute as @e[type=area_effect_cloud,tag=1A.SkillFireMaker] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_fire