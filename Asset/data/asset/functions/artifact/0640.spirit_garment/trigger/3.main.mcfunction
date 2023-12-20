#> asset:artifact/0640.spirit_garment/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0640.spirit_garment/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    particle scrape ~ ~0.45 ~ 0.3 0.2 0.3 1.6 10 normal @a
    particle wax_off ~ ~0.45 ~ 0.3 0.2 0.3 1.6 10 normal @a
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 2
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 1.7
    playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.8

# 回復量+6%
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
    data modify storage api: Argument.Amount set value 0.06
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 物理耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,640,4]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 最大体力+8
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-028000000004 "MaxHealth" 7.5 add