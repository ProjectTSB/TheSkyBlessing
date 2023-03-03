#> asset:artifact/0468.raging_demon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0468.raging_demon/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 防御無視・補正なし・物理・無属性の30のダメージを与える
    data modify storage lib: Argument.Damage set value 30f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    execute as @e[tag=D0.Target] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @e[tag=D0.Target] remove D0.Target