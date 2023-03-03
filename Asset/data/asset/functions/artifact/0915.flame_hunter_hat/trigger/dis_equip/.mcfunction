#> asset:sacred_treasure/0915.flame_hunter_hat/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{head:915} run function asset:sacred_treasure/0915.flame_hunter_hat/trigger/dis_equip/main