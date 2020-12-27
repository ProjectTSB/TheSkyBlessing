#> asset:sacred_treasure/0078.self_destruct_order/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0078.self_destruct_order/2.check_condition


#> private
# @private
    #declare tag GolemBomb

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 自爆対象付与
    tag @e[type=minecraft:iron_golem,distance=..15] add GolemBomb
    tag @e[type=minecraft:snow_golem,distance=..15] add GolemBomb

# カウントダウン
    tellraw @a[distance=..20] [{"text":"残り3秒","coler":"red","bold":true}]
    schedule function asset:sacred_treasure/0078.self_destruct_order/3.1.explosion_manager 60t replace
