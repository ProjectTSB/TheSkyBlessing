#> asset:sacred_treasure/0661.rainbow_armor/1.trigger
#
#
#
# @within tag/function asset:sacred_treasure/equip

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
 execute if data storage asset:context id{chest:661} run function asset:sacred_treasure/0661.rainbow_armor/2.check_condition