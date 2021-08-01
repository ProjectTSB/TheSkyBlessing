#> asset:sacred_treasure/0625.flame_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/????.flame_????/3.main
# @within function asset:sacred_treasure/????.flame_?????/3.main
# @within function asset:sacred_treasure/0626.flame_leggings/3.main


# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,625,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/fire/add

# 演出
     particle flame ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
     playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.2 0
