#> asset:mob/1004.tultaria/tick/2.meteor_attack/2.windup
#
# 杖を構える
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/1.tick


# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [-25f,0f,75f]

# モデル全体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~-65 ~

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}

# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 演出
    particle minecraft:flame ~ ~1 ~ 0.3 0.7 0.3 0.01 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2