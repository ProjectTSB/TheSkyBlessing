#> asset:mob/0129.lexiel/tick/2.3.skill_active
#
# スキル実行中
#
# @within function asset:mob/0129.lexiel/tick/2.tick

# 剣スキル
    execute if entity @s[tag=3L.SkillSword] run function asset:mob/0129.lexiel/tick/2.4.skill_sword

# 魔法スキル
    execute if entity @s[tag=3L.SkillMagic] run function asset:mob/0129.lexiel/tick/2.7.skill_magic

# 爆破スキル
    execute if entity @s[tag=3L.SkillExplode] run function asset:mob/0129.lexiel/tick/2.11.skill_explode

# 雷スキル
    execute if entity @s[tag=3L.SkillThunder] run function asset:mob/0129.lexiel/tick/2.14.skill_thunder