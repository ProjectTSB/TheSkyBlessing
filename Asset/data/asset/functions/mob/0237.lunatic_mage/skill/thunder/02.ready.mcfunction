#> asset:mob/0237.lunatic_mage/skill/thunder/02.ready
#
# 予備動作的な
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/01.manage

# 音
    execute if score @s 6J.SkillTick matches 2 run playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.8 2 0

# パーティクル
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.5 1 0 5 normal @a