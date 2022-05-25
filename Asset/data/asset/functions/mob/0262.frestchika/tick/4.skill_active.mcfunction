#> asset:mob/0262.frestchika/tick/4.skill_active
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.tick

# 雷
    execute if entity @s[tag=7A.SkillThunder] run function asset:mob/0262.frestchika/tick/1.thunder/1.thunder
# 剣
    execute if entity @s[tag=7A.SkillMelee] run function asset:mob/0262.frestchika/tick/2.melee/1.melee
# 剣2
    execute if entity @s[tag=7A.SkillMelee2] run function asset:mob/0262.frestchika/tick/3.melee2/1.melee2
# 銃
    execute if entity @s[tag=7A.SkillGun] run function asset:mob/0262.frestchika/tick/4.gun/1.gun


# オーバーヒート
    execute if entity @s[tag=7A.SkillOverHeat] run function asset:mob/0262.frestchika/tick/999.overheat/1.overheat