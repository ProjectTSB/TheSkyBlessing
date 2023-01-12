#> asset:mob/1004.tultaria/tick/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death

# ポーズを戻す
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.0f,0.0f,0.0f]

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20068}
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# 慣性ONに
    tag @s remove RW.DisableInertia

# チェイス停止
    kill @e[tag=RW.ChaseMarker]
    tag @s remove RW.ChaseShot

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

# スコアを戻す
    scoreboard players set @s RW.Tick 0
    scoreboard players set @s RW.LoopCount 0
    scoreboard players reset @s RW.FakeInertia

# 速度設定
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 4
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 6
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 7

# ソード設置カウントをリセット
    scoreboard players set @s[scores={RW.Phase=2,RW.SwordCount=2..}] RW.SwordCount 0
    scoreboard players set @s[scores={RW.Phase=3,RW.SwordCount=1..}] RW.SwordCount 0

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# 速度設定
    scoreboard players set @s RW.Speed 5

# ランダム移動
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker