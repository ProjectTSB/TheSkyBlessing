#> asset:sacred_treasure/0191.horus_wand/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0191.horus_wand/2.check_condition

#> private
# @private
    #declare objective ScoreToHealth

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @a[distance=..15] run particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @a[distance=..30]
    playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 20 1

# 現在の体力を取得
    execute as @a[distance=..15] run execute store result score @s Temporary run data get entity @s Health 100
# 回復量を加算
    execute as @a[distance=..15] run scoreboard players add @s Temporary 1200
# 回復
    execute as @a[distance=..15] run execute store result score @s ScoreToHealth run scoreboard players get @s Temporary

scoreboard players reset @a[distance=..15] Temporary