#> asset:sacred_treasure/0355.barrel/barrel/break
#
# 樽が壊れたときに実行される
#
# @within function asset:sacred_treasure/0355.barrel/barrel/*

# 壊す
    kill @s
# 演出
    particle block barrel ~ ~ ~ 0.3 0.3 0.3 1 20
    playsound block.wood.break block @a ~ ~ ~ 1.0 1.0