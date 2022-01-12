#> asset:mob/0237.lunatic_mage/skill/thunder/01.manage
#
# 雷スキルを管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 予備動作
    execute if score @s 6J.SkillTick matches ..20 run function asset:mob/0237.lunatic_mage/skill/thunder/02.ready

# スキル発動
    execute if score @s 6J.SkillTick matches 20.. run function asset:mob/0237.lunatic_mage/skill/thunder/03.activate_skill

# リセット
    execute if score @s 6J.SkillTick matches 61.. run function asset:mob/0237.lunatic_mage/skill/thunder/07.reset