#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 構える
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/2.windup1

# 前進
    execute if score @s M.Tick matches 20..30 run tp @s ^ ^ ^0.2 ~ ~
    execute if score @s M.Tick matches 31..40 run tp @s ^ ^ ^0.1 ~ ~

# 斬撃
    execute if score @s M.Tick matches 20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/3.slash1

# 構える
    execute if score @s M.Tick matches 25 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/4.windup2

# 斬撃
    execute if score @s M.Tick matches 30 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/5.slash2

# 構える
    execute if score @s M.Tick matches 35 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/6.windup3

# 斬撃
    execute if score @s M.Tick matches 40 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/7.slash3
    # パーティクル
        execute if score @s M.Tick matches 40 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^0 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 41 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 42 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 43 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^6 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 44 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^8 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 45 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 46 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^12 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 47 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^14 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 48 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 49 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s M.Tick matches 50 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave

# デバッグ用: この処理をループする
    execute if score @s M.Tick matches 60.. run scoreboard players set @s M.Tick -20

# リセット
    #execute if score @s M.Tick matches 60.. run function asset:mob/0022.red_knight/tick/reset