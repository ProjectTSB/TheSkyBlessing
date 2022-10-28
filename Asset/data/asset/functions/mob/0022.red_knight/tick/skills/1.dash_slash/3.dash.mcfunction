#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/3.dash
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick


# マーカーの方を向く
    execute facing entity @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [25f,0f,75f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-90f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~25 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20278}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [5f,0f,0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-25 0

# 慣性ON
    tag @s add M.ActiveInertia

# 速度設定 流石に残像ムーブみたいな速度ではない
    scoreboard players set @s M.Speed 3

# 移動開始
    tag @s add M.Move