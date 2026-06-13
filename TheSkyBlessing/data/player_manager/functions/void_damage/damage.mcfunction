#> player_manager:void_damage/damage
#
#
#
# @within function player_manager:void_damage/

# 最大体力の10%分のダメージを追加で与える

# ダメージ
    execute store result storage api: Argument.Damage float 0.1 run attribute @s generic.max_health get
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは奈落の底に落ちた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは深淵に覗かれてしまった","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは世界の底を見に行った","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sはゲームの外側に行こうとした","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは奈落対策を忘れてしまった","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは奈落に祝福された","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは天空から堕ちた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは空と奈落の境目を見失った","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sの一寸先は奈落だった","with":[{"selector":"@s"}]}]'
    function api:damage/
    function api:damage/reset

# クールダウン設定
    scoreboard players set @s VoidDamageCooldown 10
