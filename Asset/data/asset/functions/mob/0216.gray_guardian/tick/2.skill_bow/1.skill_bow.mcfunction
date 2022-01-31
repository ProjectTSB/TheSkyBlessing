#> asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/2.first_tick

# パーティクル
    execute if score @s 60.Tick matches 1..15 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~ 90 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/particle


# 発砲(発砲が終わったら終了へ行く)
    execute if score @s 60.Tick matches 15..70 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-8 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 15..70 run tag @s remove Landing
# プレイヤーを追尾
    execute if score @s 60.Tick matches 17.. facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s feet positioned as @s positioned ^ ^ ^ run function asset:mob/0216.gray_guardian/tick/move/tereport
# 発射モデル
    execute if score @s 60.Tick matches 100 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20132}

# リセット
    execute if score @s 60.Tick matches 120.. run function asset:mob/0216.gray_guardian/tick/reset