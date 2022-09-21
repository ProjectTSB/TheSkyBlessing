#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/4.charge
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick

# プレイヤーを引っ張ってくる
    execute at @s positioned ^ ^ ^3 rotated ~ 0 as @a[distance=..30,sort=random,limit=3] run function asset:mob/1004.tultaria/tick/skill/sword_wall/player_pull

# 胴体はこの辺
    #summon marker ~ ~1.5 ~ {Tags:["RW.BodyMarker"]}

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-75f,0f,75f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20080}

# 体の向き
    execute at @s as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-75 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20087}
    execute at @s as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-25 ~

# 演出
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1 1.5
    particle minecraft:portal ~ ~1.5 ~ 0 0 0 1 200