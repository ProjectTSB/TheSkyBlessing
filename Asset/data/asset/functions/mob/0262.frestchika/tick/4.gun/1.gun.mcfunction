#> asset:mob/0262.frestchika/tick/4.gun/1.gun
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行
    execute if score @s 7A.Tick matches 0 as @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] run function asset:mob/0262.frestchika/tick/4.gun/2.first_tick

# 発砲
    execute if score @s 7A.Tick matches 15..30 run function asset:mob/0262.frestchika/tick/4.gun/3.ready

# 向き転換
    execute if score @s 7A.Tick matches 30 facing entity @p feet run function asset:mob/0262.frestchika/tick/move/teleport

# 発砲
    execute if score @s 7A.Tick matches 45..60 run function asset:mob/0262.frestchika/tick/4.gun/3.ready

# # リセット
    execute if score @s 7A.Tick matches 80 at @s run function asset:mob/0262.frestchika/tick/reset