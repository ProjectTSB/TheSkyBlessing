#> asset:sacred_treasure/0669.blizzard_armor/6.tick
#
#
#
# @within function asset:sacred_treasure/0669.blizzard_armor/5.schedule_loop

# 演出
    particle snowflake ~ ~1.5 ~ 2 0.6 2 0.15 6 normal @a

    # 一定周期で音を出す
    scoreboard players add @s IL.SoundLoop 1
    execute if score @s IL.SoundLoop matches 1 run playsound item.elytra.flying master @a ~ ~ ~ 0.7 1 0
    execute if score @s IL.SoundLoop matches 200.. run scoreboard players reset @s IL.SoundLoop

# 吹雪
    execute if entity @e[type=#lib:living,type=!player,distance=..4] as @e[type=#lib:living,type=!player,distance=..3.2] at @s run function asset:sacred_treasure/0669.blizzard_armor/7.blizzard