#> asset:mob/1004.tultaria/tick/skill/dash_slash/3.dash
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick


# マーカーの方を向く
    execute facing entity @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [25f,0f,75f]
        data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-90f]
    # 向き
        execute as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~25 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [5f,0f,0f]
    # 向き
        execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-25 0

# 慣性ON
    # tag @s add RW.ActiveInertia

# 速度設定 流石に残像ムーブみたいな速度ではない
    scoreboard players set @s RW.Speed 20

# 移動開始
    tag @s add RW.Move