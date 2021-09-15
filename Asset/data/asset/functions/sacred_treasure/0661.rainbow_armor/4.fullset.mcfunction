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
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/base/add

# タグを自分に付与
    tag @s add ID.FullSet

# スケジュールループの開始
    schedule function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop 1t replace

# 演出
    execute rotated ~ 0 positioned ~ ~0.1 ~ run function asset:sacred_treasure/0661.rainbow_armor/8.rainbow_particle
    playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2 0