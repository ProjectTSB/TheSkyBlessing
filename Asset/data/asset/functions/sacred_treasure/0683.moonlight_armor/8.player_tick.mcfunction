#> asset:sacred_treasure/0683.moonlight_armor/8.player_tick
#
#
#
# @within function asset:sacred_treasure/0683.moonlight_armor/5.schedule_loop

# 演出
    particle end_rod ~ ~1.2 ~ 1 1 1 0.1 1 normal @a

# 音
    scoreboard players add @s IZ.SoundLoop 1
    execute if score @s IZ.SoundLoop matches 30.. run playsound block.beacon.ambient master @a ~ ~ ~ 0.2 1.3 0
    execute if score @s IZ.SoundLoop matches 30.. run scoreboard players reset @s IZ.SoundLoop


# 一個でも条件から外れた場合色々削除
    execute unless predicate lib:dimension/is_overworld run function asset:sacred_treasure/0683.moonlight_armor/10.remove_modifier
    execute unless predicate lib:weather/is_sunny run function asset:sacred_treasure/0683.moonlight_armor/10.remove_modifier
    execute if predicate lib:is_day run function asset:sacred_treasure/0683.moonlight_armor/10.remove_modifier