#> asset:mob/1004.tultaria/tick/2.meteor_attack/3.activate
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/1.tick

#summon armor_stand ~ ~3 ~ {Rotation:[10F,0F],Marker:0b,NoGravity:1b,Invisible:1b,Pose:{LeftArm:[20f,0f,-45f],RightArm:[10f,0f,75f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20071}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20069}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20079}}]}

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [20f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,75f]

# モデル全体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~10 ~

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~25 ~

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    execute if entity @s[tag=RW.HPless30per] run summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    execute if entity @s[tag=RW.HPless30per] run summon marker ~ ~ ~ {Tags:["Object","RW.This"]}
    execute if entity @s[tag=RW.HPless30per] run summon marker ~ ~ ~ {Tags:["Object","RW.This"]}

# 拡散する
    execute at @r[distance=..50] run spreadplayers ~ ~ 4 12 under 120 false @e[type=marker,tag=RW.This,distance=..100]

# 召喚
    execute as @e[type=marker,tag=RW.This,sort=random,limit=5] at @s run function asset:mob/1004.tultaria/tick/2.meteor_attack/4.summon

# 召喚（HP30%以下）
    execute as @e[type=marker,tag=RW.This,sort=random,limit=3] at @s run function asset:mob/1004.tultaria/tick/2.meteor_attack/4.summon2