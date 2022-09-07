#> player_manager:fall_damage/deal_damage/deal
#
#
#
# @within function player_manager:fall_damage/deal_damage/

# 引数の設定
    execute store result storage lib: Argument.Damage double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
# 補正
    function lib:damage/modifier
# 引数設定
    data modify storage lib: Argument.FixedDamage set value false
    data modify storage lib: Argument.BypassModifier set value true
    data modify storage lib: Argument.BypassArmorDefense set value true
    data modify storage lib: Argument.BypassToughness set value true
    data modify storage lib: Argument.BypassEnchantments set value false
    data modify storage lib: Argument.BypassResistance set value false
    data modify storage lib: Argument.ReduceEnchantment set value "minecraft:feather_falling"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "death.fell.accident.generic","with":[{"selector":"@s"}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$s は紐なしバンジージャンプで人生を終えた","with":[{"selector":"@s"}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$s は足元の確認を怠った","with":[{"selector":"@s"}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$s は始めた頃の初心を思い出した","with":[{"selector":"@s"}]}]'
# 与える
    function lib:damage/
# リセット
    function lib:damage/reset