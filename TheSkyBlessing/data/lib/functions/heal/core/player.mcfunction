#> lib:heal/core/player
#
# プレイヤーに対する処理
#
# @within function lib:heal/

#> Private
# @private
    #declare score_holder $Fluctuation

# 負数の場合の処理
    execute store result score $Fluctuation Temporary run data get storage lib: Argument.Heal
    execute if score $Fluctuation Temporary matches ..-1 run data modify storage lib: Argument.Heal set value 0
# リセット
    scoreboard players reset $Fluctuation Temporary
# 代入
    data modify storage api: Argument.Fluctuation set from storage lib: Argument.Heal
# Healthを持つEntityであれば実行
    function lib:score_to_health_wrapper/fluctuation