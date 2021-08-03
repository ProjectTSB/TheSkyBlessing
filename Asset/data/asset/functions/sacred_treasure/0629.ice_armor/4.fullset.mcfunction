#> asset:sacred_treasure/0629.ice_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/????.ice_????/3.main
# @within function asset:sacred_treasure/????.ice_?????/3.main
# @within function asset:sacred_treasure/0630.ice_leggings/3.main


# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,629,0]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

#ちょっとした演出
    particle falling_dust diamond_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    particle falling_dust snow_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound block.glass.break master @a ~ ~ ~ 0.4 1.6 0

# タグ付与
    tag @s add HH.FullSet