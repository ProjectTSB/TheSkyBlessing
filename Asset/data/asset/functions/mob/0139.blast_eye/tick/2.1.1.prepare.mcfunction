#> asset:mob/0139.blast_eye/tick/2.1.1.prepare
#
# 爆破準備演出
#
# @within function asset:mob/0139.blast_eye/tick/2.1.active_tick

# 着火し始めた瞬間の演出
    execute if score @s 3v.Time matches 160 run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 0.5
    execute if score @s 3v.Time matches 160 run particle flame ^ ^ ^ 0.2 0.2 0.2 0 5 normal

# 爆破準備中の演出
    particle large_smoke ^ ^0.5 ^ 0 0 0 0 1 normal
    particle minecraft:dust_color_transition 1.0 0.75 0.0 1.0 0.0 0.0 0.0 ^ ^ ^0.25 0.1 0.1 0.1 1 2

# ハード以上の場合の処理
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0139.blast_eye/tick/hard_effects