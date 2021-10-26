#> asset:mob/0129.lexiel/tick/2.3.skill_active
#
# スキル実行中
#
# @within function asset:mob/0129.lexiel/tick/2.tick

# 剣スキル
    execute if entity @s[tag=3L.SkillSword] run function asset:mob/0129.lexiel/tick/skill_sword/1.skill_sword

# 魔法スキル
    execute if entity @s[tag=3L.SkillMagic] run function asset:mob/0129.lexiel/tick/skill_magic/1.skill_magic

# 爆破スキル
    execute if entity @s[tag=3L.SkillExplode] run function asset:mob/0129.lexiel/tick/skill_explode/1.skill_explode

# 雷スキル
    execute if entity @s[tag=3L.SkillThunder] run function asset:mob/0129.lexiel/tick/skill_thunder/1.skill_thunder