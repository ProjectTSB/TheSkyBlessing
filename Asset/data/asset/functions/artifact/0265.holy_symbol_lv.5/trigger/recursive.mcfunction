#> asset:artifact/0265.holy_symbol_lv.5/trigger/recursive
#
#
#
# @within function
#   asset:artifact/0265.holy_symbol_lv.5/trigger/3.main
#   asset:artifact/0265.holy_symbol_lv.5/trigger/rejoin_process
#   asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/
#   asset:artifact/0265.holy_symbol_lv.5/trigger/effect/

execute as @e[type=area_effect_cloud,tag=7D.HolySymbol] at @s run function asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/

execute as @a[scores={7D.HolySymbol=0..}] at @s run function asset:artifact/0265.holy_symbol_lv.5/trigger/effect/