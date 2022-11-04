#> asset:mob/0022.red_knight/tick/skills/parry/2.windup
#
# ガード待機！
#
# @within function asset:mob/0022.red_knight/tick/skills/parry/1.tick

# しばらく無敵になる
    effect give @s resistance 2 4

# 浮く
    data modify entity @s NoAI set value 1b

# 向き固定ON
    tag @s add M.FacingLock

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-15f,15f,-25f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-25f,-10f,115f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-25 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20272}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20275}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [10f,0f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ 0

# 演出
    playsound minecraft:item.armor.equip_gold hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2