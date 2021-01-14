#> asset:sacred_treasure/0214.web_shooter/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0214.web_shooter/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 蜘蛛の巣を設置
    execute at @e[type=!player,distance=..7] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 cobweb replace air
    playsound minecraft:item.crossbow.shoot master @s ~ ~ ~ 1 1