#> asset:mob/0216.gray_guardian/tick/3.skill_axe/1.skill_axe
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/2.first_tick

# ポーズ

    execute if score @s 60.Tick matches 12..154 as @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~40 ~

# プレイヤーを追尾する
    execute if score @s 60.Tick matches 15..151 facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s positioned ^ ^ ^0.25 run function asset:mob/0216.gray_guardian/tick/move/tereport_non_facing
# 3tick毎にダメージを発生させる

# 目を回す
    execute if score @s 60.Tick matches 156 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/3.stan

# 回している間動くやつ
    execute if score @s 60.Tick matches 156.. positioned ~ ~2.3 ~ rotated ~ 0 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/particle

# リセット
    execute if score @s 60.Tick matches 230.. run function asset:mob/0216.gray_guardian/tick/reset