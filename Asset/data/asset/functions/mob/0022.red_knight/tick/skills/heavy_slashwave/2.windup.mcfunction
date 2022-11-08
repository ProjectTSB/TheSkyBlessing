#> asset:mob/0022.red_knight/tick/skills/heavy_slashwave/2.windup
#
# 構え
#
# @within function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/1.tick

# 向き固定ON
    tag @s add M.FacingLock

# 浮く
    data modify entity @s NoAI set value 1b

# 必殺カウントをリセット
    scoreboard players reset @s M.WaveCount

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# デバッグ用
    #scoreboard players set $Random Temporary 2

# どのタイプを撃つか決定
    execute if score $Random Temporary matches 0 run tag @s add M.WaveMiddle
    execute if score $Random Temporary matches 1 run tag @s add M.WaveLeftToRight
    execute if score $Random Temporary matches 2 run tag @s add M.WaveRightToLeft

# リセット
    scoreboard players reset $Random Temporary

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-75f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-150f,0f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~45 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20279}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20274}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20277}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [10f,0f,0f]

# 演出
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1.5 1.8
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
    particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.05 25