#> asset:artifact/0727.oblivious_snow/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{feet:727} run function asset:artifact/0727.oblivious_snow/trigger/dis_equip/main