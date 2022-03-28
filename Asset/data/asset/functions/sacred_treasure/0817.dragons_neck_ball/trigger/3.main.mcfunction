#> asset:sacred_treasure/0817.dragons_neck_ball/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0817.dragons_neck_ball/trigger/2.check_condition

# ここから先は神器側の効果の処理を書く
# かぐや姫装備がフルセットか確認
    function asset:sacred_treasure/0817.dragons_neck_ball/trigger/3.1.is_fullset

# フルセットならバフを付与
    execute if score $MP.fullset Temporary matches 1 run function asset:sacred_treasure/0817.dragons_neck_ball/trigger/3.2.add_buff

