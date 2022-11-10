#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/7.slash3
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.8
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# ダメージ判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 25.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute positioned ^ ^ ^1 as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-15f,5f,-75f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-60f,20f,-75f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-75 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20275}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20277}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [10f,0f,0f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-35 0

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[-90F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[-45F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[0F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[45F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[90F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[135F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[180F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^1 {Rotation:[-135F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,145.0f,0.1f]},DisabledSlots:4144959}

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=M.SlashInit,distance=..1.5,sort=nearest,limit=1] run function asset:mob/0022.red_knight/tick/skills/slash_entity/1.init

# スケジュール開始
    schedule function asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick 1t replace