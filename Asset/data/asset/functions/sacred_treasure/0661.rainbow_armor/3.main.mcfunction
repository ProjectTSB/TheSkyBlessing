#> asset:sacred_treasure/0661.rainbow_armor/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0661.rainbow_armor/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/chest

# ここから先は神器側の効果の処理を書く

    # 全属性耐性+2%の記述(物理、魔法、火、水、雷の順)

# 引数の設定
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/base/add


# 演出
    particle dust 0.902 0.000 0.071 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 0.953 0.596 0.000 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 1.000 0.945 0.000 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 0.000 0.600 0.267 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 0.000 0.408 0.718 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 0.114 0.125 0.533 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    particle dust 0.573 0.027 0.514 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 4 normal
    playsound entity.player.levelup master @a ~ ~ ~ 1 1.2 0

# フルセット
    execute if data storage asset:context id.all{head:660,chest:661,legs:662,feet:663} run function asset:sacred_treasure/0661.rainbow_armor/4.fullset