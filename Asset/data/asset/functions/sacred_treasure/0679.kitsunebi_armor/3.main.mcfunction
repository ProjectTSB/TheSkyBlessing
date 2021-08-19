#> asset:sacred_treasure/0679.kitsunebi_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    particle flame ~ ~1.3 ~ 0.4 0.3 0.4 0 8 normal @s
    particle soul_fire_flame ~ ~1.3 ~ 0.4 0.3 0.4 0 8 normal @s
    playsound block.fire.ambient master @a ~ ~ ~ 0.8 0.5 0.6

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,679,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/magic/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,679,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/fire/add

# フルセット
    execute if data storage asset:context id.all{head:678,chest:679,legs:680,feet:681} run function asset:sacred_treasure/0679.kitsunebi_armor/4.fullset