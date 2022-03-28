#> asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く
# かぐや姫装備がフルセットか確認
    function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.1.is_fullset

# フルセットならバフを付与
    execute if score $MO.fullset Temporary matches 1 run function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.2.add_buff

