#> asset:sacred_treasure/0725.oblivious_snow/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0725.oblivious_snow/trigger/dis_equip/

# 演出
    particle snowflake ~ ~1.2 ~ 0.4 0.2 0.4 0 50 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    function api:player_modifier/defense/water/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    function api:player_modifier/attack/water/remove

# mp回復
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    function api:player_modifier/mp_regen/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,725,5]
    #function api:player_modifier/receive_heal/remove

# フルセット解除
    execute if entity @s[tag=K4.Fullset] run function asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/dis_equip