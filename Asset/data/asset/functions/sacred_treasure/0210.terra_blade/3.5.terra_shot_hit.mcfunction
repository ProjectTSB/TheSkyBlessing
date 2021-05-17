#> asset:sacred_treasure/0210.terra_blade/3.5.terra_shot_hit
#
# モブにヒットした際の処理だよ ノックバックは…どうしよう。
#
# @within function asset:sacred_treasure/0210.terra_blade/3.3.terra_shot_main

# データ取得
    function api:data_get/hurt_time

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 7.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"

# ただしHurtTimeをある程度考慮
    execute if data storage api: {HurtTime:0s} run function lib:damage/

