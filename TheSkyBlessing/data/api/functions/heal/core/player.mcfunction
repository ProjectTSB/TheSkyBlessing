#> api:heal/core/player
#
# プレイヤーに対する処理
#
# @within function api:heal/

#> Private
# @private
    #declare score_holder $Fluctuation

# 負数の場合の処理
    execute store result score $Fluctuation Temporary run data get storage api: Argument.Heal
    execute if score $Fluctuation Temporary matches ..-1 run data modify storage api: Argument.Heal set value 0
# リセット
    scoreboard players reset $Fluctuation Temporary
# 被回復量補正を掛ける
    execute unless data storage api: Argument{FixedHeal:true} run function api:heal/core/receive_modifier
# 代入
    data modify storage api: Argument.Fluctuation set from storage api: Argument.Heal
# Healthを持つEntityであれば実行
    function lib:score_to_health_wrapper/fluctuation
# onHealのトリガー
    function api:heal/core/trigger_on_heal
