#> asset:artifact/0441.awaited_opportunity/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# エフェクト付与
    effect give @s speed 10 2 true

# 30%の確率でメッセージを流す
    execute if predicate lib:random_pass_per/30 run function asset:artifact/0441.awaited_opportunity/trigger/3.1.message

# 攻撃対象にダメージ
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] at @s run function asset:artifact/0441.awaited_opportunity/trigger/3.3.attack