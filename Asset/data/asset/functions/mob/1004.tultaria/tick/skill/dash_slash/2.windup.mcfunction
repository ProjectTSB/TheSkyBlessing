#> asset:mob/1004.tultaria/tick/skill/dash_slash/2.windup
#
# 構え
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# 浮く
    data modify entity @s NoAI set value 1b

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-90f]
        data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [25f,0f,75f]
        item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20072}
    # 向き
        execute as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~25 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20078}

# 演出
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2