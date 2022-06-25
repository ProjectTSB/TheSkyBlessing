#> asset:sacred_treasure/0985.noname/trigger/skill_list/skill_2/skill
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_active

# 剣を振る
    execute anchored eyes positioned ~ ~ ~ run function asset:sacred_treasure/0985.noname/trigger/slash/slash2
    function asset:sacred_treasure/0985.noname/trigger/slash
# スコアを消す
    scoreboard players reset @s RD.Time