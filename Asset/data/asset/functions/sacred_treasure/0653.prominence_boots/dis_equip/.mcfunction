#> asset:sacred_treasure/0653.prominence_boots/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{feet:653} run function asset:sacred_treasure/0653.prominence_boots/dis_equip/main