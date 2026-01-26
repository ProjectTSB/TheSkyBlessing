#> player_manager:void_damage/damage
#
#
#
# @within function player_manager:void_damage/

# 最大体力の10%分のダメージを追加で与える

# ダメージ
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage float 0.1 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは奈落の底に落ちた","with":[{"selector":"@s"}]}]']
    function api:damage/
    function api:damage/reset

# クールダウン設定
    scoreboard players set @s VoidDamageCooldown 10
