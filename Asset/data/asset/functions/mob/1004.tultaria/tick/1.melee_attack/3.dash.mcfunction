#> asset:mob/1004.tultaria/tick/1.melee_attack/3.dash
#
# こっちに接近する動き
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.tick


# こっち狙いで突進
    function asset:mob/1004.tultaria/tick/move/teleport/place_marker_target

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [20f,0f,-75f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-35f,0f,75f]

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-45 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
