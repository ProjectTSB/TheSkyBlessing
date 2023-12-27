#> asset:artifact/0778.jade_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0778.jade_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0.220 0.706 0.545 1 ~ ~0.2 ~ 0.4 0.2 0.4 1 50 normal
    particle rain ~ ~0.2 ~ 0.4 0.2 0.4 0 60 normal @a
    playsound entity.player.splash player @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.hit player @a ~ ~ ~ 0.7 1.5 0

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 雷耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# MP回復量+4%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add