#> asset:mob/0262.frestchika/tick/999.overheat/2.fitst_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/999.overheat/1.overheat

# 腕を変える
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20153}
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20152}
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [326f,315f,0f]
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [326f,45f,0f]
# 頭も
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20151}

# ヒートを下げる
    scoreboard players set @s 7A.Heat 0

# あと少ししたに下げる
    execute at @s positioned ~ ~-0.5 ~ run function asset:mob/0262.frestchika/tick/move/teleport

# 耐性を消す
    effect clear @s resistance