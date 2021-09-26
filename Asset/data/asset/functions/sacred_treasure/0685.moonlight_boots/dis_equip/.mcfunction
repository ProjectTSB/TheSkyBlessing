#> asset:sacred_treasure/0685.moonlight_boots/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{feet:685} run function asset:sacred_treasure/0685.moonlight_boots/dis_equip/main