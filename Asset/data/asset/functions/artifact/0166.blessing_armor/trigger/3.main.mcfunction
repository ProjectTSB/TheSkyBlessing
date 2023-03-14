#> asset:artifact/0166.blessing_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0166.blessing_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 落下速度低下付与
    effect give @s minecraft:slow_falling 1 1

# テレポート
    execute in minecraft:overworld run tp @s 23 3 24

# 演出
    particle portal 23 3 24 0 0 0 2 250 force @a
    particle effect 23 3 24 0 10 0 0.1 250 force @a
    playsound entity.illusioner.prepare_blindness player @s 23 3 24 1 0 1