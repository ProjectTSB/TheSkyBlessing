#> asset:sacred_treasure/0644.raimei_leggings/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{legs:644} run function asset:sacred_treasure/0644.raimei_leggings/trigger/dis_equip/main