#> asset:mob/0055.hetukedah/tick/skill_active
#
#
#
# @within function asset:mob/0055.hetukedah/tick/2.tick

# 使用スキルの選択
    execute if entity @s[tag=1J.Skill.OteteBeam] run function asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
    execute if entity @s[tag=1J.Skill.Explosion] run function asset:mob/0055.hetukedah/tick/skill/explosion/tick
    execute if entity @s[tag=1J.Skill.FlameThrower] run function asset:mob/0055.hetukedah/tick/skill/flamethrower/tick
    execute if entity @s[tag=1J.Skill.Charge] run function asset:mob/0055.hetukedah/tick/skill/charge/tick
    execute if entity @s[tag=1J.Skill.Summon] run function asset:mob/0055.hetukedah/tick/skill/summon/tick
