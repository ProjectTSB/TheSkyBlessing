#> asset:sacred_treasure/0566.great_sage_helmet/equip/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{head:566} run function asset:sacred_treasure/0566.great_sage_helmet/equip/dis_equip/main