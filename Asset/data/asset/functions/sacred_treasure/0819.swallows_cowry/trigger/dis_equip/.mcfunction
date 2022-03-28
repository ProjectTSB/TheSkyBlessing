#> asset:sacred_treasure/0819.swallows_cowry/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{feet:819} run function asset:sacred_treasure/0819.swallows_cowry/trigger/dis_equip/main