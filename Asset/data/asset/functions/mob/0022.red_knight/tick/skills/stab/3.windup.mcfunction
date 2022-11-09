#> asset:mob/0022.red_knight/tick/skills/stab/3.windup
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/stab/1.tick

# 向き固定ON
    tag @s add M.FacingLock

# こっち向く
    execute facing entity @p[distance=..80] feet run tp @s ~ ~ ~ ~ ~

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
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2