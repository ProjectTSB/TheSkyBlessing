#> asset:artifact/0376.ray_sorcery/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0376.ray_sorcery/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 弾を進めるための再起開始
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0376.ray_sorcery/trigger/3.1.shoot

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 1.5

# タグを消す
    tag @s remove Landing