#> lib:score_to_health_wrapper/fluctuation
#
# プレイヤーのHealthを増減します。
#
# @input
#   as player
#   storage api: Argument.Fluctuation: double
#   storage api: Argument.Attacker?: int(MobUUID)
#   storage api: Argument.AttackType?: Enum(AttackType)
#   storage api: Argument.ElementType?: Enum(ElementType)
#   storage api: Argument.DisableParticle: boolean
# @within function lib:**

#> temp
# @private
    #declare score_holder $Fluctuation

# 取得
    execute store result score $Fluctuation Temporary run data get storage api: Argument.Fluctuation 100
# 増減
    scoreboard players operation @s ScoreToHPFluc += $Fluctuation Temporary
# ログ表示
    execute if data storage api: Argument{DisableParticle:0b} at @s run function lib:health_log/show
# 攻撃情報を記録する
    execute if score $Fluctuation Temporary matches ..-1 run function lib:score_to_health_wrapper/core/store_attack_info
# リセット
    scoreboard players reset $Fluctuation Lib