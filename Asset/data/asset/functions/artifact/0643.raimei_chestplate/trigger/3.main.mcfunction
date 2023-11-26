#> asset:artifact/0643.raimei_chestplate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0643.raimei_chestplate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 2

# 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,1,643,5]
    # 補正値
        data modify storage api: Argument.Amount set value 0.04
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply_base"
# 補正の追加
    function api:modifier/defense/thunder/add

#セット効果用のファンクション実行（実行はチェストプレートの方へ）
    execute if data storage asset:context id.all{head:642,chest:643,legs:644,feet:645} run function asset:artifact/0643.raimei_chestplate/trigger/3.1.armorfullset