#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick

summon armor_stand ~ ~3 ~1 {NoGravity:1b,DisabledSlots:4144959,Marker:0b,Invisible:1b,Pose:{Head:[-25f,0f,0f]},ArmorItems:[{},{},{},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:20086}}]}
summon armor_stand ~ ~3 ~ {NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Pose:{LeftArm:[-145f,0f,-15f],RightArm:[-145f,0f,15f],Head:[0f,0f,0f]},Rotation:[0F,0F],HandItems:[{id:'minecraft:stick',Count:1b,tag:{CustomModelData:20069}},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:20069}}],ArmorItems:[{},{},{},{id:'minecraft:stick',Count:1b,tag:{CustomModelData:20079}}]}

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [-145f,0f,-15f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-145f,0f,15f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}

# 体変える
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20082}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-75 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20087}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~-25 ~

# 演出
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.2