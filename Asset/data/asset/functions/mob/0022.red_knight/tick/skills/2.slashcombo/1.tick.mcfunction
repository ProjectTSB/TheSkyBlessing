#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 構える
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/2.windup1

# 前進
    execute if score @s M.Tick matches 10..20 run tp @s ^ ^ ^0.2 ~ ~
    execute if score @s M.Tick matches 21..30 run tp @s ^ ^ ^0.1 ~ ~
    execute if score @s M.Tick matches 31..35 run tp @s ^ ^ ^0.05 ~ ~

# 斬撃
    execute if score @s M.Tick matches 10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/3.slash1

# 構える
    execute if score @s M.Tick matches 13 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/4.windup2

# 斬撃
    execute if score @s M.Tick matches 16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/5.slash2

# 構える
    execute if score @s M.Tick matches 18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/6.windup3

# 斬撃
    execute if score @s M.Tick matches 21 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/7.slash3
    # パーティクル
        execute if score @s[scores={M.Phase=1}] M.Tick matches 21 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 22 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 23 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^6 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 24 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^8 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 25 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 26 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^12 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 27 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^14 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 28 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 29 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
        execute if score @s[scores={M.Phase=1}] M.Tick matches 30 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/8.finishwave
    # パーティクル(フェイズ2)
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 21 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 22 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 23 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^6 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 24 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^8 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 25 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 26 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^12 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 27 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^14 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 28 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 29 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 30 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
    # パーティクル(フェイズ2)
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 21 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 22 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 23 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^6 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 24 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^8 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 25 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 26 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^12 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 27 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^14 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 28 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 29 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 30 rotated ~45 0 positioned ~ ~1 ~ positioned ^ ^ ^20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
    # パーティクル(フェイズ2)
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 21 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 22 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 23 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^6 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 24 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^8 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 25 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^10 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 26 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^12 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 27 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^14 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 28 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^16 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 29 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^18 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave
        execute if score @s[scores={M.Phase=2..}] M.Tick matches 30 rotated ~-45 0 positioned ~ ~1 ~ positioned ^ ^ ^20 run function asset:mob/0022.red_knight/tick/skills/2.slashcombo/9.neo_finishwave

# デバッグ用: この処理をループする
    #execute if score @s M.Tick matches 60.. run scoreboard players set @s M.Tick -20

# リセット
    execute if score @s M.Tick matches 50.. run function asset:mob/0022.red_knight/tick/reset