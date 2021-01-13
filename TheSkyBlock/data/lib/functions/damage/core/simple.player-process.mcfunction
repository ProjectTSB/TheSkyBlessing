#> lib:damage/core/simple.player-process
#
# プレイヤーに対するダメージ処理
#
# @within function lib:damage/simple

# 代入
    execute store result score $Fluctuation Lib run data get storage lib: Argument.Damage 100
# 負数の場合の処理
    execute if score $Fluctuation Lib matches ..-1 run scoreboard players set $Fluctuation Lib 0
# Healthを持つEntityであれば実行
    scoreboard players operation $Fluctuation Lib *= $-1 Const
    execute if data storage lib: Argument.Damage if entity @s[type=#lib:living] run function lib:score_to_health_wrapper/fluctuation
# 演出
    execute store result score $Damage Lib run data get storage lib: Argument.damage 10000
    function lib:damage/core/damage_indicator
# リセット
    scoreboard players reset $Damage
    scoreboard players reset $Fluctuation