#> asset:sacred_treasure/0679.kitsunebi_armor/8.player_tick
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop

# 演出
    particle flame ~ ~1.3 ~ 0.3 0.5 0.3 0 1 normal @a
    particle soul_fire_flame ~ ~1.3 ~ 0.3 0.5 0.3 0 1 normal @a

# 音を一定時間ごとに鳴らす
    scoreboard players add @s IV.SoundLoop 1
    execute if score @s IV.SoundLoop matches 30.. run function asset:sacred_treasure/0679.kitsunebi_armor/14.sound_loop

# 夜ならバフ
    execute if predicate asset:sacred_treasure/0679.kitsunebi_armor/night run function asset:sacred_treasure/0679.kitsunebi_armor/9.night_buff
