#> asset:sacred_treasure/0717.solar_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0717.solar_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    particle end_rod ~ ~0.5 ~ 0.4 0.25 0.4 0 20 normal @a
    playsound block.beacon.activate master @a ~ ~ ~ 0.8 2 0

# 雷ダメージ量増加
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/thunder/add

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/thunder/add

# フルセット
    execute if data storage asset:context id.all{head:715,chest:716,legs:717,feet:718} run function asset:sacred_treasure/0716.solar_armor/4.fullset