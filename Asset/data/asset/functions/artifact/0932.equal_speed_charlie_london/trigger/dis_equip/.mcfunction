#> asset:artifact/0932.equal_speed_charlie_london/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[932]} run function asset:artifact/0932.equal_speed_charlie_london/trigger/dis_equip/main