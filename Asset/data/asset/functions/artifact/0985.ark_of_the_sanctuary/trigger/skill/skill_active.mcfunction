#> asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill_active
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop

# スキル1(1度しか実行しない)
    execute if score @s RD.Turn matches 1 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill1
# スキル2(1度しか実行しない)
    execute if score @s RD.Turn matches 2 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill2
# スキル3
    execute if score @s RD.Turn matches 3 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill3
# スキル4
    execute if score @s RD.Turn matches 4 run function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill4