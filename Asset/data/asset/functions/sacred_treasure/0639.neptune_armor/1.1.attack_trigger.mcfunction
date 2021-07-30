#> asset:sacred_treasure/0639.neptune_armor/1.1.attack_trigger
#
#
#
# @within tag/function asset:sacred_treasure/attack

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
execute if entity @s[tag=HS.Complete] run function asset:sacred_treasure/0639.neptune_armor/1.2.complete_attack

