#> asset:artifact/0355.barrel/trigger/barrel/break
#
# 樽が壊れたときに実行される
#
# @within function asset:artifact/0355.barrel/trigger/barrel/*

# 壊す
    kill @s
# 演出
    particle block barrel ~ ~ ~ 0.3 0.3 0.3 1 20
    playsound block.wood.break neutral @a ~ ~ ~ 1.0 1.0
    playsound block.fence_gate.close neutral @a ~ ~ ~ 1.0 1.3