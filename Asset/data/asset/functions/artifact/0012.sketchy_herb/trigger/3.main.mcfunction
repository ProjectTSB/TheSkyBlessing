#> asset:artifact/0012.sketchy_herb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0012.sketchy_herb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクト効果
    effect give @s minecraft:strength 60 10 true
    effect give @s minecraft:resistance 60 2 true
    effect give @s minecraft:nausea 60 0 true
    effect give @s minecraft:poison 15 3 true
    effect give @s minecraft:instant_damage 1 1 true

# 演出
    particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 500 force @s
    playsound minecraft:block.honey_block.fall player @s ~ ~ ~ 1 0.1
    tellraw @a[distance=..20] [{"text":"気分が不安定になってゆく……","color":"dark_green","italic":true}]