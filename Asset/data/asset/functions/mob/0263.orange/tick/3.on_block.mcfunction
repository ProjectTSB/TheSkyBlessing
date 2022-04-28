#> asset:mob/0263.orange/tick/3.on_block
#
#
#
# @within function asset:mob/0263.orange/tick/2.tick

# 一定間隔で音を鳴らす
    scoreboard players operation $Temp Temporary = @s 7B.Tick
    scoreboard players operation $Temp Temporary %= $8 Const
    execute if score $Temp Temporary matches 0 run playsound block.note_block.pling hostile @a[distance=..5] ~ ~ ~ 0.3 2 0
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s 7B.Tick 1

# 爆発
    execute if entity @s[scores={7B.Tick=24..}] run function asset:mob/0263.orange/tick/4.boom