#> asset:sacred_treasure/0573.final_prism/final_sound
#
# ファイナルレーザー開始時のイベント
#
# @within function asset:sacred_treasure/0573.final_prism/3.main
execute at @a[distance=..10] run playsound minecraft:block.portal.travel player @a ~ ~ ~ 0.25 2
particle explosion ~ ~ ~ 0 0 0 0 0 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10