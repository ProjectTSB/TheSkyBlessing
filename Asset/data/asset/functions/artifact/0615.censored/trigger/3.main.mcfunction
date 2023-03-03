#> asset:artifact/0615.censored/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0615.censored/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 確率で処刑する
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # 処刑
        execute if score $Random Temporary matches 0..19 as @e[type=#lib:living,type=!player,tag=Victim,tag=!Enemy.Boss] at @s run function asset:artifact/0615.censored/trigger/3.4.execution
    # ボス級の処刑
        execute if score $Random Temporary matches 0..19 as @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss] at @s run function asset:artifact/0615.censored/trigger/3.5.execution_boss
    # 通常攻撃
        execute if score $Random Temporary matches 20..99 as @e[type=#lib:living,type=!player,tag=Victim] at @s run function asset:artifact/0615.censored/trigger/3.6.attack
    # リセット
        scoreboard players reset $Random Temporary