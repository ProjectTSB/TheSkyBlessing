#> asset:sacred_treasure/0647.thorn_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0647.thorn_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,647,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,647,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.05
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

# 演出
    particle dust 0 0.2 0 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound minecraft:block.sweet_berry_bush.place master @a ~ ~ ~ 1 1 0

# フルセット
execute if data storage asset:context id.all{head:646,chest:647,legs:648,feet:649} run function asset:sacred_treasure/0647.thorn_armor/4.fullset