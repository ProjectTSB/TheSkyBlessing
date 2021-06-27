#> asset:sacred_treasure/0369.fire_magic/3.1.tick
#
# 弾の処理
#
# @within function
#    asset:sacred_treasure/0369.fire_magic/3.main
#    asset:sacred_treasure/0369.fire_magic/3.1.tick

# 火の玉が実行する処理
    execute as @e[tag=5X.Fire] at @s run function asset:sacred_treasure/0369.fire_magic/3.2.fireball

# Scheduleループ
    execute if entity @e[tag=5X.Fire] run schedule function asset:sacred_treasure/0369.fire_magic/3.1.tick 1t replace