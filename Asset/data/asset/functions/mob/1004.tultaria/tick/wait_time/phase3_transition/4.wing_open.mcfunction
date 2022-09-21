#> asset:mob/1004.tultaria/tick/wait_time/phase3_transition/4.wing_open
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [10f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [-10.0f,0.0f,0.0f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20069}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.0f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 演出
    playsound ogg:mob.enderdragon.wings3 hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5
    execute rotated ~ 0 run particle minecraft:soul_fire_flame ^0.8 ^1.5 ^-0.5 0.2 0.2 0.2 0.02 30
    execute rotated ~ 0 run particle minecraft:smoke ^0.8 ^1.5 ^-0.5 0.2 0.2 0.2 0.01 10
    execute rotated ~ 0 run particle minecraft:soul_fire_flame ^-0.8 ^1.5 ^-0.5 0.2 0.2 0.2 0.02 30
    execute rotated ~ 0 run particle minecraft:smoke ^-0.8 ^1.5 ^-0.5 0.2 0.2 0.2 0.01 10

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 本気で相手してあげる。","color":"white"}]