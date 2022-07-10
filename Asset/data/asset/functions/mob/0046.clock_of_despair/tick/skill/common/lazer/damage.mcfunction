#> asset:mob/0046.clock_of_despair/tick/skill/common/lazer/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/lazer/fire

# パラメータ設定
    data modify storage lib: Argument.Damage set value 85
    data modify storage lib: Argument.AttackType set value "Magic"
# 補正 //TODO 補正対象がおかしい、これだけじゃなくてcommon/*/damage.mcf全般
    function lib:damage/modifier
# 与
    function lib:damage/
# リセット
    function lib:damage/reset