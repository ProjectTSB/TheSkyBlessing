#> asset:sacred_treasure/0105.secret_meat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0105.secret_meat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    execute if predicate lib:random_pass_per/50 run scoreboard players set $Fluctuation Lib 10
    execute if predicate lib:random_pass_per/20 run scoreboard players set $Fluctuation Lib 30
    execute if predicate lib:random_pass_per/5 run scoreboard players set $Fluctuation Lib 80
    execute if score $Fluctuation Lib matches 1.. run function lib:mp/fluctuation
    execute if predicate lib:random_pass_per/50 run effect give @s nausea 15 1 true
    execute if predicate lib:random_pass_per/10 run effect give @s resistance 300 2 true
    execute if predicate lib:random_pass_per/20 run effect give @s strength 180 2 true
    execute if predicate lib:random_pass_per/25 run effect give @s jump_boost 180 2 true
    execute if predicate lib:random_pass_per/25 run effect give @s speed 180 2 true
    execute if predicate lib:random_pass_per/15 run effect give @s wither 10 1 true
    execute if predicate lib:random_pass_per/15 run effect give @s poison 10 1 true
    effect clear @s hunger