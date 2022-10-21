#> asset:mob/0022.red_knight/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0022.red_knight/death/1.trigger

# モデルのアマスタを確認
    function asset:mob/0022.red_knight/tick/armor_stand_check

# 体モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [-65f,0f,-25f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-45f,25f,15f]
    # モデルアイテム
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] at @s facing entity @p eyes run tp @s ~ ~ ~ ~-15 ~

# 頭モデル
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [55f, 0f, 0f]

# モデルのアマスタからタグを外す
    tag @e[type=armor_stand,tag=M.ModelChangeTarget,distance=..0.5,limit=2] remove M.ModelChangeTarget

# モデルのコアに死亡演出用タグ付与
    tag @e[type=snowball,tag=M.ModelCore,distance=..0.5,sort=nearest,limit=1] add M.DeathAnimation

# スケジュールループを開始する
    schedule function asset:mob/0022.red_knight/death/3.death_tick 1t

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5