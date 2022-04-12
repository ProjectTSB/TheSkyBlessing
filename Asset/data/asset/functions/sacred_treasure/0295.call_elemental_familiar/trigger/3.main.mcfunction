#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
# ハチを召喚 一瞬も見せたくないので空の上に
# 4種類を確立で呼び出す

#
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# 精霊召喚
    execute if score $Random Temporary matches 0 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.summon_normal
    execute if score $Random Temporary matches 1 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.summon_fire
    execute if score $Random Temporary matches 2 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.summon_water
    execute if score $Random Temporary matches 3 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.summon_thunder

# 精霊Init
    execute as @e[type=bee,tag=295Fa.Init] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.2.fairy_init

# リセット
    scoreboard players reset $Random Temporary

# 音とパーティクル
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# ハチを動かすやつ
    function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.fairy_tick