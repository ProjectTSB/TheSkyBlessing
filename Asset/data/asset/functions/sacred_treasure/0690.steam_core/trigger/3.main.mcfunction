#> asset:sacred_treasure/0690.steam_core/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0690.steam_core/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.00000002 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.000000025 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.00000003 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.000000035 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.00000004 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.000000045 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.00000005 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.000000055 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^10000000 ^10000000 ^ 0.00000006 0 normal @a

    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.00000002 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.000000025 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.00000003 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.000000035 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.00000004 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.000000045 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.00000005 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.000000055 0 normal @a
    execute rotated ~ 0 run particle minecraft:cloud ~ ~1.3 ~ ^-10000000 ^10000000 ^ 0.00000006 0 normal @a

    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.8 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.9 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1.0 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1.1 0

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 水攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# 被回復量-15%
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    #function api:player_modifier/receive_heal/add