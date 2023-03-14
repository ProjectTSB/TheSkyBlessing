#> asset:artifact/0635.elec_boots/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{feet:635} run function asset:artifact/0635.elec_boots/trigger/dis_equip/main