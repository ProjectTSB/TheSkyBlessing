#> asset:mob/1004.tultaria/tick/skill/dash_slash/4.slash
#
# 振り抜く
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [30f,0f,-45f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [20f,0f,75f]

# モデル全体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~25 ~

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20073}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20069}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~5 ~

# ダメージ判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "None"
    # 補正functionを実行
        function lib:damage/modifier
    # 対象
        execute rotated ~ 0 positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
    # リセット
        function lib:damage/reset

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.2
# 鈍足を付与する
    execute rotated ~ 0 positioned ^ ^ ^2 run effect give @a[tag=!PlayerShouldInvulnerable,distance=..2] slowness 2 3 true

# ダメージ判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 55f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正functionを実行
        function lib:damage/modifier
    # 対象
        execute rotated ~ 0 positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/

    # リセット
        function lib:damage/reset

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-90F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-45F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[0F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[45F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[90F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[135F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[180F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-135F,0F],Tags:["RW.SlashSweep","RW.IceSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}

# Init 呼び出す位置があまりにもキモいので後でslash_entityの位置を変えるべき
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^2 as @e[type=armor_stand,tag=RW.SlashInit,tag=RW.IceSweep,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/common/slash_entity/init

# スケジュール開始
    schedule function asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick 1t replace

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1
