#> asset:mob/0131.haruclaire/tick/interval
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.tick

# アイスキャノン用particle
    execute if entity @s[tag=3N.SkillIceCannonParticle] positioned ~ ~1.3 ~ positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0131.haruclaire/tick/particle
# アイスキャノン用particle
    execute if entity @s[tag=3N.SkillIceCannonParticle] positioned ~ ~1.3 ~ positioned ^ ^ ^1.4 rotated ~ ~90 run function asset:mob/0131.haruclaire/tick/particle2
# アイスピラー用のパーティクル
    execute if entity @s[tag=3N.SkillIcePillar] if entity @e[type=area_effect_cloud,tag=3N.SkillPillarMaker,limit=1] run schedule function asset:mob/0131.haruclaire/tick/particle_pillar 1t replace
