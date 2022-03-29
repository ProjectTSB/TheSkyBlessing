#> asset:sacred_treasure/0664.soul_fire_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0664.soul_fire_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle soul_fire_flame ~ ~1.7 ~ 0.4 0.2 0.4 0.05 20 normal @a
    particle soul ~ ~1.7 ~ 0.4 0.2 0.4 0.02 20 normal @a
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 1 0 0
    playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.8 0

# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 火耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 火攻撃+8%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,664,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 最大体力-10%
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-029800000006 "MaxHealthDown" -0.1 multiply_base

# 体力が更新されないのが気に入らないので補正無しの0.1ダメを与える
    data modify storage lib: Argument.Damage set value 0.1f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ByPassResist set value 1b
    function lib:damage/
    data remove storage lib: Argument