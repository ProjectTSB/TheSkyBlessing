#> asset:mob/0022.red_knight/death/change_pose_2
#
# アリアドネの糸を取り出す。雪玉が実行者である都合で、モデルの向き指定方法がいつもと違う
#
# @within function asset:mob/0022.red_knight/death/death_animation

# モデルのアマスタを確認
    function asset:mob/0022.red_knight/tick/armor_stand_check

# 体モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-90f,-55f,0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~10 ~
    # モデルアイテム
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20277}

# 頭モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [10f, 0f, 0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-15 ~

# 頭モデルの向きを基準にして演出用アイテム召喚
    execute rotated as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] rotated ~ 0 run summon item ^0.25 ^1.3 ^1.2 {Invulnerable:1b,PickupDelay:32767s,NoGravity:1b,Tags:["M.RetreatItem"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:71}}}

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..1,limit=2] remove M.ModelChangeTarget

# 演出
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1 1.5 1
    particle minecraft:portal ~ ~1.5 ~ 0 0 0 2 200