#> asset:sacred_treasure/0708.mage_robe_upper/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{chest:708} run function asset:sacred_treasure/0708.mage_robe_upper/trigger/dis_equip/main