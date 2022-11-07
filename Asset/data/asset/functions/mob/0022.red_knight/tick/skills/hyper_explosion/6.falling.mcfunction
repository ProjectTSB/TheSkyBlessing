#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/6.falling
#
# 落下中の処理
#
# @within function asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick

# 複数回実行で高速落下させる
    execute at @s positioned ~ ~-0.5 ~ if block ~ ~ ~ #lib:no_collision run function asset:mob/0022.red_knight/tick/move/tp
    execute at @s positioned ~ ~-0.5 ~ if block ~ ~ ~ #lib:no_collision run function asset:mob/0022.red_knight/tick/move/tp
    execute at @s positioned ~ ~-0.5 ~ if block ~ ~ ~ #lib:no_collision run function asset:mob/0022.red_knight/tick/move/tp

# 下にブロックあったらフィニッシュに移行
    execute unless block ~ ~-0.5 ~ #lib:no_collision run scoreboard players set @s M.Tick 200

# 演出
    execute at @s rotated ~ 0 run particle flame ^ ^ ^1.2 0 0 0 0.01 2
    execute at @s rotated ~ 0 run particle flame ^ ^0.5 ^1.2 0 0 0 0.01 2
    execute at @s rotated ~ 0 run particle flame ^ ^1 ^1.2 0 0 0 0.01 2