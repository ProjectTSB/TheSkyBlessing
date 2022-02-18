#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/schedule_loop
#
#
#
# @within function asset:sacred_treasure/0651.red_flame_chestplate/trigger/**

# プレイヤーが実行
    execute as @a[tag=I3.Fullset] at @s run function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/effect
# ループ
    execute if entity @p[tag=I3.Fullset] run schedule function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/schedule_loop 1t