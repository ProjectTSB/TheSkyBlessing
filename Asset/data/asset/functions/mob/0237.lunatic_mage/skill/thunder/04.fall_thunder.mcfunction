#> asset:mob/0237.lunatic_mage/skill/thunder/04.fall_thunder
#
# ここでメインの技をやるよ
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/03.activate_skill

# 1回目の雷
    execute if score @s 6J.SkillTick matches 21 run function asset:mob/0237.lunatic_mage/skill/thunder/05.thunder

# 2回目
    execute if score @s 6J.SkillTick matches 31 positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/thunder/05.thunder

# 3回目
    execute if score @s 6J.SkillTick matches 41 positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/thunder/05.thunder