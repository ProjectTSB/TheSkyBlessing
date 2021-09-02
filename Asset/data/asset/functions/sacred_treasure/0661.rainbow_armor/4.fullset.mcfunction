#> asset:sacred_treasure/0661.rainbow_armor/4.fullset
#
#
# @within function asset:sacred_treasure/0660.rainbow_helm/3.main
# @within function asset:sacred_treasure/0661.rainbow_armor/3.main
# @within function asset:sacred_treasure/0662.rainbow_leggings/3.main
# @within function asset:sacred_treasure/0663.rainbow_boots/3.main

# 全属性耐性+6%の記述(物理、魔法、火、水、雷の順)

# 引数の設定
    data modify storage api: Argument.UUID set value [I;1,1,661,0]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/physical/add

    data modify storage api: Argument.UUID set value [I;1,1,661,0]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/magic/add

    data modify storage api: Argument.UUID set value [I;1,1,661,0]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/fire/add

    data modify storage api: Argument.UUID set value [I;1,1,661,0]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/water/add

    data modify storage api: Argument.UUID set value [I;1,1,661,0]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/thunder/add

# タグを自分に付与
    tag @s add ID.FullSet

# スケジュールループの開始
    schedule function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop 1t replace