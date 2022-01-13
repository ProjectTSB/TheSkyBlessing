#> asset:sacred_treasure/0192.falcios_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0192.falcios_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @a[distance=..15] run particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @a[distance=..30]
    playsound minecraft:entity.arrow.hit_player master @a[distance=..15] ~ ~ ~ 20 1

# 回復
    data modify storage lib: Argument.Heal set value 24f
    function lib:heal/modifier
    execute as @a[distance=..15] run function lib:heal/

# リセット
    data remove storage lib: Argument