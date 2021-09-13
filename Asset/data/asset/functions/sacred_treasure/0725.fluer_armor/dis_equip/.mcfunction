#> asset:sacred_treasure/0725.fluer_armor/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{chest:725} run function asset:sacred_treasure/0725.fluer_armor/dis_equip/main