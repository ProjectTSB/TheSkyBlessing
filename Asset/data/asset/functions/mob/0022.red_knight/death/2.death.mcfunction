#> asset:mob/0022.red_knight/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0022.red_knight/death/1.trigger

# モデルのアマスタを確認
    function asset:mob/0022.red_knight/tick/armor_stand_check

# 体モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-65f,0f,-25f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-45f,25f,15f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [-15f,0f,0f]
    # モデルアイテム
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20280}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20273}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20277}
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s facing entity @p[distance=..80] eyes run tp @s ~ ~ ~ ~-15 ~

# 頭モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [35f, 0f, 0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] at @s facing entity @p[distance=..80] eyes run tp @s ~ ~ ~ ~ ~

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..1,limit=2] remove M.ModelChangeTarget

# モデルのコアに死亡演出用タグ付与
    tag @e[type=snowball,tag=M.ModelCore,distance=..1,sort=nearest,limit=1] add M.DeathAnimation

# スケジュールループを開始する
    schedule function asset:mob/0022.red_knight/death/death_tick 1t

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5