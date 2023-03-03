#> asset:artifact/0269.holy_symbol_lv.10/trigger/recursive
#
#
#
# @within function
#   asset:artifact/0269.holy_symbol_lv.10/trigger/3.main
#   asset:artifact/0269.holy_symbol_lv.10/trigger/rejoin_process
#   asset:artifact/0269.holy_symbol_lv.10/trigger/symbol/
#   asset:artifact/0269.holy_symbol_lv.10/trigger/effect/

execute as @e[type=area_effect_cloud,tag=7H.HolySymbol] at @s run function asset:artifact/0269.holy_symbol_lv.10/trigger/symbol/

execute as @a[scores={7H.HolySymbol=0..}] at @s run function asset:artifact/0269.holy_symbol_lv.10/trigger/effect/