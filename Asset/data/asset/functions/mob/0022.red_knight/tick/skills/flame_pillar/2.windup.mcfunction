#> asset:mob/0022.red_knight/tick/skills/flame_pillar/2.windup
#
# 構える
#
# @within function asset:mob/0022.red_knight/tick/skills/flame_pillar/1.tick

# 向き固定ON
    tag @s add M.FacingLock

# 浮遊
    data modify entity @s NoAI set value 1b

# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-150f,0f,-15f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-150f,320f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20271}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20279}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [-25f,0f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ 0

# 演出
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1.5 1.8
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2