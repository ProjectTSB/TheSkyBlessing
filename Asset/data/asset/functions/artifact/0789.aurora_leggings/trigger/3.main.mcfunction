#> asset:artifact/0789.aurora_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0789.aurora_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} rotated ~ 0 positioned ~ ~0.5 ~ run function asset:artifact/0789.aurora_leggings/trigger/4.vfx
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 2 0
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run playsound block.beacon.activate player @a ~ ~ ~ 0.5 2 0

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,789,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 雷耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,789,4]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,789,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# MP回復+5%
    data modify storage api: Argument.UUID set value [I;1,1,789,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,789,4]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# フルセット検知
    execute if data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run function asset:artifact/0787.aurora_helm/trigger/fullset/equip