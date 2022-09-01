#> asset:mob/1004.tultaria/tick/1.melee_attack/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-25f,0f,75f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20072}

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-45 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20088}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-25 ~

# 演出
    particle minecraft:soul_fire_flame ~ ~1.2 ~ 0.3 0.7 0.3 0.01 50
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 3 1.2