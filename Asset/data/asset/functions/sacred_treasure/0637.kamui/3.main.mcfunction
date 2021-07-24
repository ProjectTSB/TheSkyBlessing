#> asset:sacred_treasure/0637.kamui/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0637.kamui/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

# 物理耐性増加
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,637,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.2
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
    # 補正の追加
        function api:player_modifier/defense/physical/add

# 魔法耐性増加
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,637,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.4
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
    # 補正の追加
        function api:player_modifier/defense/magic/add

# 満腹度回復付与
    effect give @s saturation 1000000 0 true

# 暗視付与
    effect give @s night_vision 1000000 0 true

# リジェネ付与
    effect give @s regeneration 1000000 0 true