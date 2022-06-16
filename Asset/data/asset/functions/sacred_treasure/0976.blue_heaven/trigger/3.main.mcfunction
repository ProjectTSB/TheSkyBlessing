#> asset:sacred_treasure/0976.blue_heaven/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# 召喚
    execute if entity @s[y_rotation=-22.5..22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[0F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=22.5..67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[45F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=67.5..114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[90F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=115..157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[135F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=157.5..-157.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[180F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}

    execute if entity @s[y_rotation=-157.5..-114.9] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-135F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-115..-67.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-90F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}
    execute if entity @s[y_rotation=-67.5..-22.4] run summon armor_stand ~ ~-0.3 ~ {Rotation:[-45F,0F],Tags:["R4.SlashCombo1"],Marker:0b,NoGravity:1b,Invisible:1b,Small:0b,Pose:{RightArm:[-90f,0f,-75f]},DisabledSlots:4144959}

# コンボカウント
    

# スケジュール開始
    schedule function asset:sacred_treasure/0976.blue_heaven/trigger/slash/1.tick 1t replace
    schedule function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick 1t replace
