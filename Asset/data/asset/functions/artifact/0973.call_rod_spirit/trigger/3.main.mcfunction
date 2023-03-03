#> asset:artifact/0973.call_rod_spirit/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 精霊召喚
    function asset:artifact/0973.call_rod_spirit/trigger/4.summon_spirit

# 精霊Init
    execute as @e[type=armor_stand,tag=R1.SpiritInit,distance=..5] at @s run function asset:artifact/0973.call_rod_spirit/trigger/fairy/1.init

# 音とパーティクル neutralになってるのは妖精側の音だから
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# 精霊さんを動かす
    schedule function asset:artifact/0973.call_rod_spirit/trigger/fairy/2.tick 1t