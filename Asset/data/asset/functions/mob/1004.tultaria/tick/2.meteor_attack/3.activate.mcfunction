#> asset:mob/1004.tultaria/tick/2.meteor_attack/3.activate
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [20f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,75f]

# モデル全体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~10 ~

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.01,sort=nearest,limit=1] run tp @s ~ ~ ~ ~25 ~

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7

# 攻撃の量を指定
    scoreboard players set $AttackAmount Temporary 5

# 召喚
    function asset:mob/1004.tultaria/tick/2.meteor_attack/4.fall_meteor