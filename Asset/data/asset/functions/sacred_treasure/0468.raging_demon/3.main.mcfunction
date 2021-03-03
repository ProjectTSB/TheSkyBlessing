#> asset:sacred_treasure/0468.raging_demon/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0468.raging_demon/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/offhand

# ここから先は神器側の効果の処理を書く

# 20のダメージを与える
    data modify storage lib: Argument.Damage set value 20f
    execute as @e[tag=7k.Target] run function lib:damage/simple

# リセット
    data remove storage lib: Argument
    tag @e[tag=7k.Target] remove 7k.Target