#> asset:mob/1004.tultaria/tick/4.skill_active
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# 近接
    execute if entity @s[tag=RW.SkillMelee] run function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack
# 範囲
    execute if entity @s[tag=RW.SkillMeteor] run function asset:mob/1004.tultaria/tick/2.meteor_attack/1.meteor_attack
# 座標
    execute if entity @s[tag=RW.SkillCoordinate] run function asset:mob/1004.tultaria/tick/3.coordinate_attack/1.coordinate_attack
# 座標外し
    execute if entity @s[tag=RW.SkillOffCoordinate] run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/1.off_coordinate_attack
# 波状

# 流星

# 召喚
