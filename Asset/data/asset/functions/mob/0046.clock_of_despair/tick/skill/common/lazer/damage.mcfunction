#> asset:mob/0046.clock_of_despair/tick/skill/common/lazer/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/lazer/fire

# パラメータ設定
    data modify storage lib: Argument.Damage set value 50
    data modify storage lib: Argument.AttackType set value "Magic"
# 補正 (厳密な紐付けではない)
    execute as @e[type=zombie,scores={MobID=46},distance=..14,limit=1] run function lib:damage/modifier
# 与
    function lib:damage/
# リセット
    function lib:damage/reset