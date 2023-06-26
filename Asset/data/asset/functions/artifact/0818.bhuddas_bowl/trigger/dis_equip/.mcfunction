#> asset:artifact/0818.bhuddas_bowl/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{legs:818} run function asset:artifact/0818.bhuddas_bowl/trigger/dis_equip/main