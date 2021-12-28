#> asset:mob/0139.blast_eye/tick/2.1.active_tick
#
# Playerが近くにいる時のみ実行するtick
#
# @within function asset:mob/0139.blast_eye/tick/2.tick

# eye本体にタイマー加算
    scoreboard players add @s 3v.Time 1

# 爆破予告
    execute if score @s 3v.Time matches 120..160 anchored eyes run function asset:mob/0139.blast_eye/tick/2.1.1.prepare

# 爆破
    execute if score @s 3v.Time matches 160 anchored eyes positioned ^ ^ ^2 run function asset:mob/0139.blast_eye/tick/2.1.2.boom

# 爆破後も数tickだけ爆発particleを出し続ける
    execute if score @s 3v.Time matches 161..168 anchored eyes positioned ^ ^ ^2 run function asset:mob/0139.blast_eye/tick/2.1.3.timeshift_particle

# タイマーリセット
    execute if score @s 3v.Time matches 169 run scoreboard players set @s 3v.Time 0