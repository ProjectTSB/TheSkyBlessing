#> asset:artifact/0162.rations/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0162.rations/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 満腹度回復の効果
    effect give @s minecraft:saturation 10 0 true

# パーティクル
    particle item minecraft:dark_oak_sign ~ ~1.5 ~ 0 0.2 0 0.2 20 force @s

# SE
    playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1.3