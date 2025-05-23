#> lib:score_to_health_wrapper/fluctuation
#
# プレイヤーのHealthを増減します。
#
# @input
#   as player
#   storage api: Argument.Fluctuation: double
#   storage api: Argument.Attacker?: int (MobUUID | UserID)
#   storage api: Argument.AttackerType?: string ("non-player" || "player")
#   storage api: Argument.AttackType?: Enum(AttackType)
#   storage api: Argument.ElementType?: Enum(ElementType)
#   storage api: Argument.DisableLog?: boolean(default: false)
#   storage api: Argument.DamageVfx?: boolean(default: true)
# @within function
#   lib:**
#   api:**
#   mob_manager:entity_finder/entity_hurt_player/fetch_entity
#   player_manager:health/regen/do
#   asset_manager:artifact/handler/on_damage_without_source

#> temp
# @private
    #declare score_holder $Fluctuation

# 取得
    execute store result score $Fluctuation Lib run data get storage api: Argument.Fluctuation 100
# 増減
    scoreboard players operation @s ScoreToHPFluc += $Fluctuation Lib
# 攻撃情報を記録する
    execute if score $Fluctuation Lib matches ..-1 run function lib:score_to_health_wrapper/core/store_attack_info/
# ログ表示
    execute unless data storage api: Argument{DisableLog:true} at @s anchored eyes positioned ^ ^ ^ run function lib:status_log/show_health
# リセット
    scoreboard players reset $Fluctuation Lib
    data remove storage api: Argument.Fluctuation
    data remove storage api: Argument.DisableLog
    data remove storage api: Argument.DamageVfx
