#> asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill2
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill_active

# 剣を振る
    execute anchored eyes positioned ~ ~ ~ run function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash/slash2
    function asset:artifact/0985.ark_of_the_sanctuary/trigger/slash
# スコアを消す
    scoreboard players reset @s RD.Time