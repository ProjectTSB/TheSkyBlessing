#> asset:mob/0022.red_knight/death/change_pose_1
#
# 姿勢を持ち直す
#
# @within function asset:mob/0022.red_knight/death/death_animation

# モデルのアマスタを確認
    function asset:mob/0022.red_knight/tick/armor_stand_check

# 体モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-90f,35f,-75f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-10f,25f,5f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [10f,0f,0f]
    # モデルアイテム
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20279}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20276}
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s facing entity @p[distance=..80] eyes run tp @s ~ ~ ~ ~45 ~

# 頭モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [15f, 0f, 0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s facing entity @p[distance=..80] eyes run tp @s ~ ~ ~ ~15 ~

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..1,limit=2] remove M.ModelChangeTarget

# 演出
    playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 0.5