#> asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting
#
# 構えポーズを取りつつターゲッティング
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

#> Private
# @private
    #declare tag TargetPlayer


# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [15f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [75f,0f,45f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20072}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 体の向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-35 ~

# 頭のモデル、向き
    execute facing entity @p feet run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-25 ~

# 演出
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 周囲のランダムなプレイヤーを対象に
    tag @r[distance=..80,limit=1] add TargetPlayer

# プレイヤーの周囲に大雑把にマーカー設置
    # 残ってたらヤなのでマーカーを消す
        kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]
    # 移動先を設置
        execute facing entity @p[tag=TargetPlayer] feet run summon marker ^ ^ ^20 {Tags:[RW.TeleportMarker,RW.MarkerInit]}
    # 拡散設定
        #data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    # 最寄りのやつの場所で拡散させる
        #execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @p[tag=TargetPlayer] run function lib:spread_entity/

# 雷撃マーカー設置
    execute if score @s RW.LoopCount matches 0 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning1"]}
    execute if score @s RW.LoopCount matches 1 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning2"]}
    execute if score @s RW.LoopCount matches 2 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning3"]}
    execute if score @s RW.LoopCount matches 3 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning4"]}
    execute if score @s RW.LoopCount matches 4 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning5"]}

# プレイヤーのタグを外す
    tag @a[tag=TargetPlayer] remove TargetPlayer

