#> asset:artifact/0106.stone_cutter_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0106.stone_cutter_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    # 攻撃先のエンティティで実行
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..15] at @s run function asset:artifact/0106.stone_cutter_blade/trigger/3.1.entity.main