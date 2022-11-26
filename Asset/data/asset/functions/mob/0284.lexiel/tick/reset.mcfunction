#> asset:mob/0284.lexiel/tick/reset
#
#
#
# @within function asset:mob/0284.lexiel/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death

# ポーズを戻す
    data modify entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]
    data modify entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.0f,0.0f,0.0f]

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20296}

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20287}
    item replace entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20289}

# タグをリセットする
    tag @s remove 7W.SkillMelee
    tag @s remove 7W.SkillThunder
    tag @s remove 7W.SkillSpin
    tag @s remove 7W.SkillFireball

    tag @s remove 7W.InAction

# スコアを戻す
    scoreboard players set @s 7W.Tick 0
    scoreboard players set @s 7W.LoopCount 0
    scoreboard players reset @s 7W.FakeInertia

# 速度設定
    scoreboard players set @s 7W.Speed 8

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# ランダム移動
    execute at @r run function asset:mob/0284.lexiel/tick/move/teleport/place_marker