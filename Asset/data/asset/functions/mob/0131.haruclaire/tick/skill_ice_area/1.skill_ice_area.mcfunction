#> asset:mob/0131.haruclaire/tick/skill_ice_area/1.skill_ice_area
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.2.skill_active



# タグを消す
    execute if score @s 3N.Tick matches 100 run tag @s remove 3N.SkillIceArea
# スコアを少し進めた状態に戻す
    execute if score @s 3N.Tick matches 100 run scoreboard players set @s 3N.Tick -30