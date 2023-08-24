#> asset:mob/0055.hetukedah/tick/skill_active
#
#
#
# @within function asset:mob/0055.hetukedah/tick/2.tick

# おててビーム
    execute if entity @s[tag=1J.Skill.OteteBeam] run function asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
    execute if entity @s[tag=1J.Skill.Explosion] run function asset:mob/0055.hetukedah/tick/skill/explosion/tick