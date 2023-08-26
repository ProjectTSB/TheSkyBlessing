#> asset:mob/0055.hetukedah/tick/skill/explosion/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/explosion/windup

# スタート
    execute if score @s 1J.Tick matches 30 run function asset:mob/0055.hetukedah/tick/skill/explosion/start

# 加速
    execute if score @s 1J.Tick matches 30..60 run function asset:mob/0055.hetukedah/tick/skill/explosion/dash

# プレイヤーを捉えたら
    execute if score @s 1J.Tick matches 30..60 if entity @a[distance=..2] run scoreboard players set @s 1J.Tick 60

# 警告
    execute if score @s 1J.Tick matches 60 rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert
    execute if score @s 1J.Tick matches 65 rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert
    execute if score @s 1J.Tick matches 70 rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert

# 爆発
    execute if score @s 1J.Tick matches 80 rotated ~ 0 positioned ~ ~0.2 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion

# リセット
    execute if score @s 1J.Tick matches 100.. run function asset:mob/0055.hetukedah/tick/reset