#> asset:sacred_treasure/example/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/example/1.trigger

function asset:sacred_treasure/lib/check_condition/mainhand
execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/example/3.main