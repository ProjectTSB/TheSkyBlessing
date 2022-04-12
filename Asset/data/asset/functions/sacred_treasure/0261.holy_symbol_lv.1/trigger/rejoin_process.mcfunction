#> asset:sacred_treasure/0261.holy_symbol_lv.1/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @a[scores={79.HolySymbol=0..}] run schedule function asset:sacred_treasure/0261.holy_symbol_lv.1/trigger/recursive 1t