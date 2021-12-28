#> asset:mob/0139.blast_eye/tick/2.1.active_tick
#
# Playerが近くにいる時のみ実行するtick
#
# @within function asset:mob/0139.blast_eye/tick/2.tick

# eye本体にタイマー加算
    scoreboard players add @s 3v.Time 1

# 一定確率で爆発後のクールダウン短縮
execute if score @s 3v.Time matches 160..199 if predicate lib:random_pass_per/2 run scoreboard players set @s 3v.Time 200

# 爆破予告
    execute if score @s 3v.Time matches 200..240 anchored eyes run function asset:mob/0139.blast_eye/tick/2.1.1.prepare

# 爆破
    execute if score @s 3v.Time matches 240 anchored eyes positioned ^ ^ ^2 run function asset:mob/0139.blast_eye/tick/2.1.2.boom

# 爆破後も数tickだけ爆発particleを出し続ける
    execute if score @s 3v.Time matches 241..249 anchored eyes positioned ^ ^ ^2 run function asset:mob/0139.blast_eye/tick/2.1.3.timeshift_particle

# タイマーリセット
    execute if score @s 3v.Time matches 250 run scoreboard players set @s 3v.Time 0