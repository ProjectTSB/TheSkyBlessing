#> asset:sacred_treasure/0019.scriputre/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0019.scriputre/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く
# 攻撃した対象に回復とパーティクル
    effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] minecraft:instant_health 1 1 true
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10] run particle end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]

# SE
    playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1
