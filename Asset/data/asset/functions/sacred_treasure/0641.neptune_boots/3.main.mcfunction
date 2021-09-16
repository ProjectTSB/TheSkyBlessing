#> asset:sacred_treasure/0641.neptune_boots/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0641.neptune_boots/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle splash ~ ~0.3 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound entity.dolphin.swim master @a ~ ~ ~ 1.2 0.8 0

# 水ダメージ量+12.5%
    data modify storage api: Argument.UUID set value [I;1,1,641,3]
    data modify storage api: Argument.Amount set value 0.125
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,641,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,641,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,641,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

# フルセット判定
    execute if data storage asset:context id.all{head:638,chest:639,legs:640,feet:641} run function asset:sacred_treasure/0639.neptune_armor/4.fullset

