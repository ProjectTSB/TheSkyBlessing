#> asset:sacred_treasure/0687.soaring_wing/4.equip_trigger
#
#
#
# @within tag/function asset:sacred_treasure/equip

# 687番の神器なら実行
    execute if data storage asset:context id{chest:687} run function asset:sacred_treasure/0687.soaring_wing/5.believe_check
