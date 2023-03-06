#> asset:artifact/0736.sailor_hat/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{head:736} run function asset:artifact/0736.sailor_hat/trigger/dis_equip/main