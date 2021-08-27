#> asset:sacred_treasure/0639.neptune_armor/1.1.attack_trigger
#
#
#
# @within tag/function asset:sacred_treasure/attack

# フルセットなら実行
execute if data storage asset:context id.all{head:638,chest:639,legs:640,feet:641} if entity @s[tag=!HS.Attack] run function asset:sacred_treasure/0639.neptune_armor/1.2.complete_attack

