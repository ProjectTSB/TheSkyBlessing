#> asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/2.first_tick

# パーティクル
    execute if score @s 60.Tick matches 1..30 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~ 90 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/particle

# 発砲
    execute if score @s 60.Tick matches 30 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-8 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 30 run tag @s remove Landing
    execute if score @s 60.Tick matches 30 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-28 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 30 run tag @s remove Landing
    execute if score @s 60.Tick matches 30 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~12 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 30 run tag @s remove Landing

    execute if score @s 60.Tick matches 35 at @s facing entity @p[distance=..100] eyes run function asset:mob/0216.gray_guardian/tick/move/teleport

    execute if score @s 60.Tick matches 40 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-8 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 40 run tag @s remove Landing
    execute if score @s 60.Tick matches 40 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-28 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 40 run tag @s remove Landing
    execute if score @s 60.Tick matches 40 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~12 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 40 run tag @s remove Landing

    execute if score @s 60.Tick matches 45 at @s facing entity @p[distance=..100] eyes run function asset:mob/0216.gray_guardian/tick/move/teleport

    execute if score @s 60.Tick matches 50 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-8 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 50 run tag @s remove Landing
    execute if score @s 60.Tick matches 50 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-28 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 50 run tag @s remove Landing
    execute if score @s 60.Tick matches 50 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~12 ~10 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
    execute if score @s 60.Tick matches 50 run tag @s remove Landing


# 発射モデル
    execute if score @s 60.Tick matches 100 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20132}

# リセット
    execute if score @s 60.Tick matches 120.. run function asset:mob/0216.gray_guardian/tick/reset