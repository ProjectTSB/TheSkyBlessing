#> asset:mob/0301.sinful_thoughts/tick/4.step/1.step
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.skill_active

# 姿を消す
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/4.step/2.fitst_tick

# どこかへ移動して
    execute if score @s 8D.Tick matches 1 run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute if score @s 8D.Tick matches 1 run function asset:mob/0301.sinful_thoughts/tick/move/spread

# パーティクルだして
    execute if score @s 8D.Tick matches 10 at @s run particle minecraft:large_smoke ~ ~ ~ 0.4 1 0.4 0.01 30

# 姿現して
    execute if score @s 8D.Tick matches 20 run function asset:mob/0301.sinful_thoughts/tick/4.step/3.show_body
# プレイヤーを見る
    execute if score @s 8D.Tick matches 27 facing entity @p eyes run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# 斬る
    execute if score @s 8D.Tick matches 27 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,181f,111f]
    execute if score @s 8D.Tick matches 29 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches 29 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [235f,8f,92f]
    execute if score @s 8D.Tick matches 29 rotated ~ 0 positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
    execute if score @s 8D.Tick matches 29 rotated ~ 0 positioned ^ ^ ^3 rotated ~-60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport


# 回転斬り
    execute if score @s 8D.Tick matches 35 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20256}
    execute if score @s 8D.Tick matches 35 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,90f]
    execute if score @s 8D.Tick matches 35 run function asset:mob/0301.sinful_thoughts/tick/4.step/4.rotate_slash
    execute if score @s 8D.Tick matches 35..42 at @s rotated ~58.99 0 run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# HPへってるとやばい
    execute if score @s 8D.Tick matches 35..42 if entity @s[tag=8D.HPless75per] at @s positioned ^ ^ ^3 run function asset:mob/0301.sinful_thoughts/tick/common/thunder

# 首に鎌をかけて

# 斬りつける

# リセット
    execute if score @s 8D.Tick matches 55 run function asset:mob/0301.sinful_thoughts/tick/reset