#> asset:mob/0131.haruclaire/tick/reset
#
#
#
# @within function asset:mob/0131.haruclaire/tick/**

# タグを消す
    tag @s remove 3N.SkillIceArea
    tag @s remove 3N.SkillIceAreaHit
    tag @s remove 3N.SkillIceCannon
    tag @s remove 3N.SkillIcePillar

# スコア戻す
    scoreboard players set @s 3N.Tick -30
