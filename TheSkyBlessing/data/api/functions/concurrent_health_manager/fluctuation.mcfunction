#> api:concurrent_health_manager/fluctuation
#
# プレイヤーのHealthを増減します。
#
# @input
#   as player
#   storage api: Argument.Fluctuation: double
#   storage api: Argument.Attacker?: int(MobUUID)
#   storage api: Argument.AttackType?: Enum(AttackType)
#   storage api: Argument.ElementType?: Enum(ElementType)
# @within function api:**
# @deprecated

#> temp
# @private
    #declare score_holder $Fluctuation

# 取得
    execute store result score $Fluctuation Temporary run data get storage api: Argument.Fluctuation 100
# 増減
    scoreboard players operation @s ScoreToHPFluc += $Fluctuation Temporary
# 攻撃情報を記録する
    execute if score $Fluctuation Temporary matches ..-1 run function api:concurrent_health_manager/core/store_attack_info
# ログ表示
    execute at @s run function api:status_log/show_health
# リセット
    scoreboard players reset $Fluctuation Temporary