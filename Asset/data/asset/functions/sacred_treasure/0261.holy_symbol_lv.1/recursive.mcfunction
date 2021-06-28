#> asset:sacred_treasure/0261.holy_symbol_lv.1/recursive
#
#
#
# @within function
#   asset:sacred_treasure/0261.holy_symbol_lv.1/3.main
#   asset:sacred_treasure/0261.holy_symbol_lv.1/rejoin_process
#   asset:sacred_treasure/0261.holy_symbol_lv.1/symbol/
#   asset:sacred_treasure/0261.holy_symbol_lv.1/effect/

execute as @e[type=area_effect_cloud,tag=79.HolySymbol,limit=1] at @s run function asset:sacred_treasure/0261.holy_symbol_lv.1/symbol/

execute as @a[scores={79.HolySymbol=0..}] at @s run function asset:sacred_treasure/0261.holy_symbol_lv.1/effect/