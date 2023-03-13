#> asset:artifact/0261.holy_symbol_lv.1/trigger/recursive
#
#
#
# @within function
#   asset:artifact/0261.holy_symbol_lv.1/trigger/3.main
#   asset:artifact/0261.holy_symbol_lv.1/trigger/rejoin_process
#   asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/
#   asset:artifact/0261.holy_symbol_lv.1/trigger/effect/

execute as @e[type=area_effect_cloud,tag=79.HolySymbol] at @s run function asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/

execute as @a[scores={79.HolySymbol=0..}] at @s run function asset:artifact/0261.holy_symbol_lv.1/trigger/effect/