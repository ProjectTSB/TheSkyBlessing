#> asset:sacred_treasure/0265.holy_symbol_lv.5/recursive
#
#
#
# @within function
#   asset:sacred_treasure/0265.holy_symbol_lv.5/3.main
#   asset:sacred_treasure/0265.holy_symbol_lv.5/rejoin_process
#   asset:sacred_treasure/0265.holy_symbol_lv.5/symbol/
#   asset:sacred_treasure/0265.holy_symbol_lv.5/effect/

execute as @e[type=area_effect_cloud,tag=7D.HolySymbol] at @s run function asset:sacred_treasure/0265.holy_symbol_lv.5/symbol/

execute as @a[scores={7D.HolySymbol=0..}] at @s run function asset:sacred_treasure/0265.holy_symbol_lv.5/effect/