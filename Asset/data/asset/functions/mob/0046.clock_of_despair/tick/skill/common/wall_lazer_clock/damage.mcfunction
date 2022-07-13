#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/fire

# パラメータ設定
    data modify storage lib: Argument.Damage set value 50
    data modify storage lib: Argument.AttackType set value "Magic"
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの広範囲光線により跡形も残らず蒸発した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正 (厳密な紐付けではない)
    execute as @e[type=zombie,scores={MobID=46},distance=..14,limit=1] run function lib:damage/modifier
# 与
    function lib:damage/
# リセット
    function lib:damage/reset