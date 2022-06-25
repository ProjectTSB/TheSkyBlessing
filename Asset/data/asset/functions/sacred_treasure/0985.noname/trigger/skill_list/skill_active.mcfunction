#> asset:sacred_treasure/0985.noname/trigger/skill_list/skill_active
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/schedule_loop

# スキル1(1度しか実行しない)
    execute if score @s RD.Turn matches 1 run function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_1/skill
# スキル2(1度しか実行しない)
    execute if score @s RD.Turn matches 2 run function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_2/skill
# スキル3(1度しか実行しない)
    execute if score @s RD.Turn matches 3 run function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_3/skill
# スキル4
    execute if score @s RD.Turn matches 4 run function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_4/skill