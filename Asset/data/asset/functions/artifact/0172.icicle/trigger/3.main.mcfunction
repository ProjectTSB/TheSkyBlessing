#> asset:artifact/0172.icicle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0172.icicle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0


# 着弾地点にマーカー召喚
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0172.icicle/trigger/4.block_check

# タグを消す
    tag @s remove Landing

# スケジュール開始
    schedule function asset:artifact/0172.icicle/trigger/laser/schedule 1t replace