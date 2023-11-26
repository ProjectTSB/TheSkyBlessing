#> asset:artifact/0629.ice_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0629.ice_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,629,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.03
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:modifier/defense/water/add

#ちょっとした演出
    particle falling_dust diamond_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    particle falling_dust snow_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.2 0

# フルセット
execute if data storage asset:context id.all{head:628,chest:629,legs:630,feet:631} run function asset:artifact/0629.ice_armor/trigger/4.fullset