#> asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/2.first_tick

# パーティクル
    execute if score @s 60.Tick matches 1..40 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~ 90 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/particle

# 再帰で予測線を出す
    execute if score @s 60.Tick matches 5..10 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~ ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line
    execute if score @s 60.Tick matches 5..10 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~20 ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line
    execute if score @s 60.Tick matches 5..10 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-20 ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line

# 発砲
    execute if score @s 60.Tick matches 15 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~ ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/4.shot
    execute if score @s 60.Tick matches 15 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~20 ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/4.shot
    execute if score @s 60.Tick matches 15 rotated ~ 0 positioned ^-0.8 ^ ^2.5 positioned ~ ~1.2 ~ rotated ~-20 ~ run function asset:mob/0216.gray_guardian/tick/2.skill_bow/4.shot


# 発射モデル
    execute if score @s 60.Tick matches 40 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20132}

# リセット
    execute if score @s 60.Tick matches 90.. run function asset:mob/0216.gray_guardian/tick/reset