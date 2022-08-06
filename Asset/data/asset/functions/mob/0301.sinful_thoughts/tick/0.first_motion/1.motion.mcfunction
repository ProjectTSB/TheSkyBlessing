#> asset:mob/0301.sinful_thoughts/tick/0.first_motion/1.motion
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.tick

# これやってる間無敵
    effect give @s resistance 1 99

# まずプレイヤーを見る
    execute if score @s 8D.Tick matches -99 facing entity @p[gamemode=!spectator,distance=..100] eyes run function asset:mob/0301.sinful_thoughts/tick/move/teleport
# ポーズ変えるの
    execute if score @s 8D.Tick matches -99 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,270f,340f]
    execute if score @s 8D.Tick matches -89 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,90f,20f]

# 武器を所持する
    execute if score @s 8D.Tick matches -70 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20253}
    execute if score @s 8D.Tick matches -70 rotated ~ 0 positioned ~ ~0.8 ~ run particle smoke ^0.5 ^ ^ 0.1 0.1 0.1 0.01 10
    execute if score @s 8D.Tick matches -70 run playsound minecraft:item.armor.equip_iron hostile @a

    execute if score @s 8D.Tick matches -60 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20255}
    execute if score @s 8D.Tick matches -60 rotated ~ 0 positioned ~ ~0.8 ~ run particle smoke ^-0.5 ^ ^ 0.1 0.1 0.1 0.01 10
    execute if score @s 8D.Tick matches -60 run playsound minecraft:item.armor.equip_iron hostile @a

# 突き出し
    execute if score @s 8D.Tick matches -30 rotated ~-60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute if score @s 8D.Tick matches -30 run data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,60f,00f]
    execute if score @s 8D.Tick matches -30 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    execute if score @s 8D.Tick matches -30 run item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20257}
    execute if score @s 8D.Tick matches -30 run playsound item.trident.return hostile @a

# タグ消し
    execute if score @s 8D.Tick matches -20 run function asset:mob/0301.sinful_thoughts/tick/reset