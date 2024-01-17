#> asset:artifact/0714.deep_sea_coral_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0714.deep_sea_coral_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run particle dust 1 0.549 1 0.75 ~ ~0.2 ~ 0.4 0.2 0.4 0 50 normal
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} positioned ~ ~0.3 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/trigger/vfx
    execute unless data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 体力回復量+5%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 火耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,714,3]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# フルセット
    execute if data storage asset:context id.all{head:711,chest:712,legs:713,feet:714} run function asset:artifact/0711.deep_sea_coral_crown/trigger/fullset/equip