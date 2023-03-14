#> asset:artifact/0736.sailor_hat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0736.sailor_hat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# vfx
    execute rotated ~ 0 positioned ~ ~1.2 ~ positioned ^ ^ ^-0.5 run function asset:artifact/0736.sailor_hat/trigger/vfx
    playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.4 2 0

# 物理攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,736,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 水攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,736,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 移動速度+7.5%
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-02e000000006 "KG.Speed" 0.075 multiply_base

# 魔法攻撃-15%
    data modify storage api: Argument.UUID set value [I;1,1,736,5]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add