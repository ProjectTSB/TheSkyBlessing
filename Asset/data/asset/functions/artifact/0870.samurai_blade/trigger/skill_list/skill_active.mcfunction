#> asset:artifact/0870.samurai_blade/trigger/skill_list/skill_active
#
#
#
# @within function asset:artifact/0870.samurai_blade/trigger/schedule_loop

# スキル1(1度しか実行しない)
    execute if score @s O6.Turn matches 1 run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_1/skill
# スキル2(1度しか実行しない)
    execute if score @s O6.Turn matches 2 run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_2/skill
# スキル3
    execute if score @s O6.Turn matches 3 run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_3/skill
# スキル4
    execute if score @s O6.Turn matches 4 run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_4/skill
# スキル5
    execute if score @s O6.Turn matches 5 run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_5/skill