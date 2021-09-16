#> asset:sacred_treasure/0651.prominence_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0651.prominence_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.lava.ambient master @a ~ ~ ~ 0.6 1 0
    playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 0 0
    particle lava ~ ~1.3 ~ 0.4 0.25 0.4 0 10 normal @a
    particle flame ~ ~1.3 ~ 0.4 0.25 0.4 0 10 normal @a

# 火ダメージ量+12.5%
    data modify storage api: Argument.UUID set value [I;1,1,651,5]
    data modify storage api: Argument.Amount set value 0.125
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/fire/add

# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,651,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,651,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

# 火耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,651,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# フルセット判定
    execute if data storage asset:context id.all{head:650,chest:651,legs:652,feet:653} run function asset:sacred_treasure/0651.prominence_armor/4.fullset