#> asset:artifact/0295.call_elemental_familiar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 精霊召喚
    execute rotated ~ 0 run summon armor_stand ^2 ^ ^ {Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Small:1b,Tags:["87.FamiliarInit","Friend"]}
    execute rotated ~ 0 run summon armor_stand ^ ^ ^-2 {Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Small:1b,Tags:["87.FamiliarInit","Friend"]}
    execute rotated ~ 0 run summon armor_stand ^-2 ^ ^ {Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Small:1b,Tags:["87.FamiliarInit","Friend"]}

# 精霊Init
    execute as @e[type=armor_stand,tag=87.FamiliarInit,distance=..5] at @s run function asset:artifact/0295.call_elemental_familiar/trigger/fairy/1.init

# 音とパーティクル　neutralになってるのは妖精側の音だから
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# 精霊さんを動かす
    schedule function asset:artifact/0295.call_elemental_familiar/trigger/fairy/2.tick 1t replace