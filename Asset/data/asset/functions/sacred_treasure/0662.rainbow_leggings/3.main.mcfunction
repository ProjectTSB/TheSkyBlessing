#> asset:sacred_treasure/0662.rainbow_leggings/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0662.rainbow_leggings/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/legs

# ここから先は神器側の効果の処理を書く

# 全属性耐性+1%の記述(物理、魔法、火、水、雷の順)

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,662,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.01
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/physical/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,662,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.01
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/magic/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,662,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.01
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/fire/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,662,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.01
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/water/add

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,662,4]
    # 補正値
        data modify storage api: Argument.Amount set value 0.01
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:player_modifier/defense/thunder/add

# 演出
    particle dust 0.902 0.000 0.071 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 0.953 0.596 0.000 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 1.000 0.945 0.000 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 0.000 0.600 0.267 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 0.000 0.408 0.718 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 0.114 0.125 0.533 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal
    particle dust 0.573 0.027 0.514 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 4 normal

# フルセット
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:660}}},{Slot:102b,tag:{TSB:{ID:661}}},{Slot:101b,tag:{TSB:{ID:662}}},{Slot:100b,tag:{TSB:{ID:663}}}]} run function asset:sacred_treasure/0661.rainbow_armor/6.fullset_resist