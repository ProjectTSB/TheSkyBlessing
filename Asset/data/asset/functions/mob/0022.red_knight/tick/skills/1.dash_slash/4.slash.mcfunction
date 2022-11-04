#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/4.slash
#
# 振り抜く
#
# @within function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick

# 移動やめる
    function asset:mob/0022.red_knight/tick/move/teleport/end_move

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-75f,0f,75f]
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-55 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20273}

# 頭
    # 向き
        execute as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~-25 0

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

# 斬撃
    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-90F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-45F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[0F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[45F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[90F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[135F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[180F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^2 {Rotation:[-135F,0F],Tags:["M.SlashEntity","M.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,195.0f,0.1f]},DisabledSlots:4144959}

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^2 as @e[type=armor_stand,tag=M.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0022.red_knight/tick/skills/slash_entity/1.init

# スケジュール開始
    schedule function asset:mob/0022.red_knight/tick/skills/slash_entity/2.tick 1t replace

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1