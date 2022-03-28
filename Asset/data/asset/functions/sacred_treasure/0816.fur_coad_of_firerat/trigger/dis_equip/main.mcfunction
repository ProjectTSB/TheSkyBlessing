#> asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/dis_equip/

# かぐや姫装備がフルセットか確認
    function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.1.is_fullset

# フルセットではないならバフを削除
    execute if score $MO.fullset Temporary matches 0 run function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.2.remove_buff
