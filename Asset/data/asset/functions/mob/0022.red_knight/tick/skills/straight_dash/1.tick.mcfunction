#> asset:mob/0022.red_knight/tick/skills/straight_dash/1.tick
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# パーティクル
    particle minecraft:dust 0.7 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 1 50

# テレポート
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/straight_dash/2.targeting

# リセット
    execute if score @s M.Tick matches 5.. run function asset:mob/0022.red_knight/tick/reset
