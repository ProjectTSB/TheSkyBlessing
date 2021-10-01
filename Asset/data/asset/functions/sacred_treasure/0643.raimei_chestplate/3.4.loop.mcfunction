#> asset:sacred_treasure/0643.raimei_chestplate/3.4.loop
#
# ループします
#
# @within function
#   asset:sacred_treasure/0643.raimei_chestplate/3.1.armorfullset
#   asset:sacred_treasure/0643.raimei_chestplate/3.4.loop
#   asset:sacred_treasure/0643.raimei_chestplate/rejoin_process

# 対象へ実行
    execute as @a[tag=HV.Full] at @s run function asset:sacred_treasure/0643.raimei_chestplate/3.5.loop_effect

# ループ
    execute if entity @a[tag=HV.Full] run schedule function asset:sacred_treasure/0643.raimei_chestplate/3.4.loop 1t replace