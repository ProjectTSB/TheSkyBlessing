#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 精霊召喚
    function asset:sacred_treasure/0295.call_elemental_familiar/trigger/4.summon_spirit

# 精霊Init
    execute as @e[type=armor_stand,tag=87.Init] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/1.init

# 音とパーティクル
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1
    playsound minecraft:block.end_portal_frame.fill neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 1.5

# 精霊さんを動かす
    function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/2.tick