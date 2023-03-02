#> asset:mob/0301.sinful_thoughts/tick/3.jump/4.slash
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/3.jump/1.jump

# プレイヤーを見る
    execute rotated ~-60 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport

# 腕かえる
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [320f,60f,10f]
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20264}
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20257}

# ダメージ
    execute positioned ^ ^ ^1 run function asset:mob/0301.sinful_thoughts/tick/common/slash_damage
# 鈍足を与える
    execute positioned ^ ^ ^1 run effect give @p[gamemode=!spectator,distance=..2] slowness 1 10
# 攻撃が当たった場合、銃で撃つためにスコアを飛ばす
    execute positioned ^ ^ ^1 if entity @p[gamemode=!spectator,distance=..2] run scoreboard players set @s 8D.Tick 999