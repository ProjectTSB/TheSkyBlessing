#> asset:artifact/0217.fish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0217.fish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 回復する量 = 全回復
    data modify storage lib: Argument.Heal set value 10000f
# 実行者対象
    function lib:heal/modifier
    function lib:heal/
# リセット
    function lib:heal/reset

# 演出
    execute at @s run playsound entity.cat.ambient player @a[distance=..10] ~ ~ ~ 3 1
    execute at @s run tellraw @a[distance=..10] {"text":"ネコの気配を感じる……？","color":"white"}