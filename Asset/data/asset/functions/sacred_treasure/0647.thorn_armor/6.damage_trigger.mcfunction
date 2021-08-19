#> asset:sacred_treasure/0647.thorn_armor/6.damage_trigger
#
#
#
# @within tag/function asset:sacred_treasure/damage/from_entity/

# フルセットなら実行
    execute if data storage asset:context id.all{head:646,chest:647,legs:648,feet:649} run function asset:sacred_treasure/0647.thorn_armor/7.check_condition
