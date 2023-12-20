#> asset:artifact/0105.secret_meat/trigger/good_effect
#
#
#
# @within function asset:artifact/0105.secret_meat/trigger/3.main
#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $20 Const
# 回復量ランダム
    scoreboard players add $Random Temporary 1
    execute store result storage lib: Argument.Heal float 1 run scoreboard players get $Random Temporary
# リセット
    scoreboard players reset $Random Temporary
# 回復
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset

# 演出
    tellraw @s {"text":"なんだかいい予感がする！","bold":true}
    particle minecraft:heart ~ ~1.3 ~ 0.25 0.25 0.25 1 7

# 追加でいいエフェクト
    effect clear @s hunger
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $5 Const
# いい効果
    execute if score $Random Temporary matches 0 run effect give @s speed 90 1
    execute if score $Random Temporary matches 1 run effect give @s haste 90 1
    execute if score $Random Temporary matches 2 run effect give @s jump_boost 90 1
    execute if score $Random Temporary matches 3 run effect give @s night_vision 90 1
    execute if score $Random Temporary matches 4 run effect give @s resistance 45 0
# リセット
    scoreboard players reset $Random Temporary