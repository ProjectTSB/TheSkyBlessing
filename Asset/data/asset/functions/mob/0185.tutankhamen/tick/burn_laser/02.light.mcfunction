#> asset:mob/0185.tutankhamen/tick/burn_laser/02.light
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_laser/01.main

# lightは照射の意

# プレイヤーの方向を見る
    execute if entity @s[scores={55.AttackTick=2}] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet

# 照射
    execute positioned ~ ~1.3 ~ run function asset:mob/0185.tutankhamen/tick/burn_laser/03.light_recursive

# 実行中の音
    execute as @a[distance=..30] at @s run playsound block.note_block.bit hostile @s ~ ~ ~ 0.8 1 1