#> player_manager:fall_damage/deal_damage/deal
#
#
#
# @within function player_manager:fall_damage/deal_damage/

# TODO ProjectTSB/TheSkyBlessing#1916 の検証用ログ収集
    data modify storage metric: FallDamageLogs append value {}
    data modify storage metric: FallDamageLogs[-1].OMD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
    execute store result storage metric: FallDamageLogs[-1].MaxHealth double 0.01 run scoreboard players get $MaxHealth Temporary
    execute store result storage metric: FallDamageLogs[-1].FallDistance double 0.1 run scoreboard players get $FallDistance Temporary
    execute store result storage metric: FallDamageLogs[-1].JumpBoost double 0.1 run scoreboard players get $JumpBoost Temporary
    execute store result storage metric: FallDamageLogs[-1].DamageMultiplier double 0.1 run scoreboard players get $DamageMultiplier Temporary
    execute store result storage metric: FallDamageLogs[-1].Damage double 0.0001 run scoreboard players get $Damage Temporary

# 引数の設定
    execute store result storage api: Argument.Damage double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
# 補正
    function api:damage/modifier
# 引数設定
    data modify storage api: Argument.FixedDamage set value false
    data modify storage api: Argument.BypassModifier set value true
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassToughness set value true
    data modify storage api: Argument.BypassEnchantments set value false
    data modify storage api: Argument.BypassResistance set value false
    data modify storage api: Argument.DisableLog set value true
    data modify storage api: Argument.ReduceEnchantment set value "minecraft:feather_falling"
    execute unless data storage player_manager:fall_damage CustomDeathMessage run data modify storage api: Argument.DeathMessage append value '[{"translate": "death.fell.accident.generic","with":[{"selector":"@s"}]}]'
    execute unless data storage player_manager:fall_damage CustomDeathMessage run data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$s は紐なしバンジージャンプで人生を終えた","with":[{"selector":"@s"}]}]'
    execute unless data storage player_manager:fall_damage CustomDeathMessage run data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$s は足元の確認を怠った","with":[{"selector":"@s"}]}]'
    execute unless data storage player_manager:fall_damage CustomDeathMessage run data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$s は初心を思い出した","with":[{"selector":"@s"}]}]'
    execute if data storage player_manager:fall_damage CustomDeathMessage run data modify storage api: Argument.DeathMessage append from storage player_manager:fall_damage CustomDeathMessage
# 与える
    function api:damage/
# リセット
    function api:damage/reset
    data remove storage player_manager:fall_damage CustomDeathMessage
