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
    execute if score @s M.Tick matches 20 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/3.dash

# 前方にプレイヤーがいたら振り抜く
    execute if score @s M.Tick matches 20..25 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s M.Tick 25

# マーカーまでたどり着いたら移動をやめる
    execute if score @s M.Tick matches 20..25 if entity @e[type=marker,tag=M.TeleportMarker,distance=..3] at @s run scoreboard players set @s M.Tick 25

# 振り抜く
    execute if score @s M.Tick matches 25 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/4.slash

# 遅れて斬撃が発生
    execute if score @s M.Tick matches 31..35 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 run function asset:mob/0022.red_knight/tick/skills/1.dash_slash/back_slash_swoosh
    execute if score @s M.Tick matches 31 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 32 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_2
    execute if score @s M.Tick matches 33 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_3
    execute if score @s M.Tick matches 34 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_4
    execute if score @s M.Tick matches 35 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_1

# リセット
    execute if score @s M.Tick matches 60.. run function asset:mob/0022.red_knight/tick/reset