#> asset:sacred_treasure/0718.world_tree_root/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{feet:718} run function asset:sacred_treasure/0718.world_tree_root/trigger/dis_equip/main