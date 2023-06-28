#> asset:mob/0314.blazing_bomb/tick/event/lingering/
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/2.tick

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 8Q.Tick

# 6tickごとに攻撃判定とパーティクルが出現
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0314.blazing_bomb/tick/event/lingering/aoe

# しばらくするときえる
    execute if score @s 8Q.Tick matches 100 run kill @s

# リセット
    scoreboard players reset $Interval Temporary