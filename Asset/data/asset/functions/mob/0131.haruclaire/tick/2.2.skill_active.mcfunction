#> asset:mob/0131.haruclaire/tick/2.2.skill_active
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.tick

# アイスエリア
    execute if entity @s[tag=3N.SkillIceArea] run function asset:mob/0131.haruclaire/tick/skill_ice_area/1.skill_ice_area

# アイスキャノン
    execute if entity @s[tag=3N.SkillIceCannon] run function asset:mob/0131.haruclaire/tick/skill_ice_canon/1.skill_ice_cannon

# アイスピラー
    execute if entity @s[tag=3N.SkillIcePillar] run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/1.skill_ice_pillar