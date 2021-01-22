#> lib:heal/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @input
#   as entity
#   storage lib: Argument.Heal : float
# @output storage lib: Argument.Heal : float
# @api

#> Temp
# @private
    #declare score_holder $Heal

# 補正
    execute if entity @s[type=player] store result score $Heal Temporary run data get storage lib: Argument.Heal 10000
    execute if entity @s[type=player] run scoreboard players operation $Heal Temporary *= @s HealModifier
    execute if entity @s[type=player] store result storage lib: Argument.Heal float 0.000001 run scoreboard players get $Heal Temporary
# リセット
    execute if entity @s[type=player] run scoreboard players reset $Heal Temporary