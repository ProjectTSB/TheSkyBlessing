#> asset:artifact/0770.shaking_splash_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0770.shaking_splash_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.1 2 0
    particle dust 0.8 500000000 1000000000 1 ~ ~1.2 ~ 0.4 1 0.4 0 10
    particle firework ~ ~1.2 ~ 0 0.3 0 0.5 20

# ラスト1回でgive
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 769
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id