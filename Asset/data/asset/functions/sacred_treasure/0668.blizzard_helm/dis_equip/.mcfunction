#> asset:sacred_treasure/0668.blizzard_helm/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{head:668} run function asset:sacred_treasure/0668.blizzard_helm/dis_equip/main