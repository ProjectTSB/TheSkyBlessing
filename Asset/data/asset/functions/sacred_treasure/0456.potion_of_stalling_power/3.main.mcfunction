#> asset:sacred_treasure/0456.potion_of_stalling_power/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0456.potion_of_stalling_power/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 時間内にもう一度つかった愚か者へのダメージ

# 与えるダメージ = 7.5
    data modify storage lib: Argument.Damage set value 10.0f
# 範囲5m以内のゾンビを対象に
    execute as @s[scores={78.Tick=1..}] run function lib:damage/simple
# リセット
    data remove storage lib: Argument

# 演出
    execute if entity @s[scores={78.Tick=1..}] run

# セットする
    scoreboard players set @s 78.Tick 2400

# スタート
    schedule function asset:sacred_treasure/0456.potion_of_stalling_power/3.1.effect 1t