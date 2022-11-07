#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick
#
# 突進斬り
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 構える
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/2.windup

# ターゲッティング
    execute if score @s M.Tick matches 17 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/targeting

# ダッシュで突っ込んでくる
    execute if score @s M.Tick matches 25 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/3.dash

# 前方にプレイヤーがいたら振り抜く
    execute if score @s M.Tick matches 25..35 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s M.Tick 35

# マーカーまでたどり着いたら移動をやめる
    execute if score @s M.Tick matches 25..35 if entity @e[type=marker,tag=M.TeleportMarker,distance=..3] at @s run scoreboard players set @s M.Tick 35

# 振り抜く
    execute if score @s M.Tick matches 35 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/4.slash

# 斬撃が発生するぞ！
    execute if score @s M.Tick matches 40 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_start

# 遅れて斬撃が発生
    # 1個目
        execute if score @s M.Tick matches 50..55 positioned ~ ~1 ~ positioned ^ ^ ^-3 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_swoosh
        execute if score @s M.Tick matches 51 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
        execute if score @s M.Tick matches 52 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_2
        execute if score @s M.Tick matches 53 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_3
        execute if score @s M.Tick matches 54 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_4
        execute if score @s M.Tick matches 55 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
    # 2個目
        execute if score @s M.Tick matches 50..550 positioned ~ ~1 ~ positioned ^ ^ ^-7 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_swoosh
        execute if score @s M.Tick matches 51 positioned ~ ~1 ~ positioned ^ ^ ^-7 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
        execute if score @s M.Tick matches 52 positioned ~ ~1 ~ positioned ^ ^ ^-7 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_2
        execute if score @s M.Tick matches 53 positioned ~ ~1 ~ positioned ^ ^ ^-7 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_3
        execute if score @s M.Tick matches 54 positioned ~ ~1 ~ positioned ^ ^ ^-7 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_4
        execute if score @s M.Tick matches 55 positioned ~ ~1 ~ positioned ^ ^ ^-7 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
    # 3個目
        execute if score @s M.Tick matches 50..55 positioned ~ ~1 ~ positioned ^ ^ ^-11 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_swoosh
        execute if score @s M.Tick matches 51 positioned ~ ~1 ~ positioned ^ ^ ^-11 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
        execute if score @s M.Tick matches 52 positioned ~ ~1 ~ positioned ^ ^ ^-11 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_2
        execute if score @s M.Tick matches 53 positioned ~ ~1 ~ positioned ^ ^ ^-11 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_3
        execute if score @s M.Tick matches 54 positioned ~ ~1 ~ positioned ^ ^ ^-11 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_4
        execute if score @s M.Tick matches 55 positioned ~ ~1 ~ positioned ^ ^ ^-11 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1

# リセット
    execute if score @s M.Tick matches 60.. run function asset:mob/0022.red_knight/tick/reset