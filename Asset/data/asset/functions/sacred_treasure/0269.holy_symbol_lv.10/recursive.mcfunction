#> asset:sacred_treasure/0269.holy_symbol_lv.10/recursive
#
#
#
# @within function
#   asset:sacred_treasure/0269.holy_symbol_lv.10/3.main
#   asset:sacred_treasure/0269.holy_symbol_lv.10/rejoin_process
#   asset:sacred_treasure/0269.holy_symbol_lv.10/symbol/
#   asset:sacred_treasure/0269.holy_symbol_lv.10/effect/

execute as @e[type=area_effect_cloud,tag=7H.HolySymbol] at @s run function asset:sacred_treasure/0269.holy_symbol_lv.10/symbol/

execute as @a[scores={7H.HolySymbol=0..}] at @s run function asset:sacred_treasure/0269.holy_symbol_lv.10/effect/