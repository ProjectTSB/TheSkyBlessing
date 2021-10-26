#> asset:sacred_treasure/0679.kitsunebi_armor/6.player_tick
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/5.schedule_loop

# 演出
    execute rotated ~ 0 positioned ^ ^ ^-0.4 run particle flame ~ ~1.3 ~ 0.3 0.5 0.3 0 1 normal @a
    execute rotated ~ 0 positioned ^ ^ ^-0.4 run particle soul_fire_flame ~ ~1.3 ~ 0.3 0.5 0.3 0 1 normal @a

# 音を一定時間ごとに鳴らす
    scoreboard players add @s IV.SoundLoop 1
    execute if score @s IV.SoundLoop matches 30.. run function asset:sacred_treasure/0679.kitsunebi_armor/8.sound_loop

# 夜ならバフ
    execute unless predicate lib:is_day run function asset:sacred_treasure/0679.kitsunebi_armor/7.night_buff

# 暗いと暗視
    execute if predicate asset:sacred_treasure/0679.kitsunebi_armor/is_in_dark_place run effect give @s night_vision 12 0 true