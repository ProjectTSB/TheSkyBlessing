#> asset:artifact/0954.inverted_parachute/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[954]} run function asset:artifact/0954.inverted_parachute/trigger/dis_equip/main
#execute if data storage asset:context id{offhand:954} run function asset:artifact/0954.inverted_parachute/trigger/dis_equip/main