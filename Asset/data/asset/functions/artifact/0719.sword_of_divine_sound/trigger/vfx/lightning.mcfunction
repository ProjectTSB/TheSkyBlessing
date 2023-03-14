#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/lightning
#
# 雷のパーティクルを出す処理
#
# @within function
#   asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
#   asset:artifact/0719.sword_of_divine_sound/trigger/vfx/random_rotation

# パーティクル
    particle end_rod ^ ^ ^0.15 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^0.3 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^0.45 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^0.6 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^0.75 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^0.9 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.05 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.2 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.35 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.5 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.65 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.8 0 0 0 0 1 normal @a
    particle end_rod ^ ^ ^1.95 0 0 0 0 1 normal @a

# 再帰用スコア
    scoreboard players add $RecursiveLimit Temporary 1

# 向きを変える
    execute if score $RecursiveLimit Temporary matches ..6 positioned ^ ^ ^1.95 run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/random_rotation