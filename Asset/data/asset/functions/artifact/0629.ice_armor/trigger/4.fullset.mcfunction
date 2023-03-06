#> asset:artifact/0629.ice_armor/trigger/4.fullset
#
#
#
# @within function
#   asset:artifact/0628.ice_helm/trigger/3.main
#   asset:artifact/0629.ice_armor/trigger/3.main
#   asset:artifact/0630.ice_leggings/trigger/3.main
#   asset:artifact/0631.ice_boots/trigger/3.main

# Tag付与
    tag @s add HH.Fullset

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,629,0]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:modifier/defense/water/add

# 演出
    particle falling_dust diamond_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    particle falling_dust snow_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.6 0