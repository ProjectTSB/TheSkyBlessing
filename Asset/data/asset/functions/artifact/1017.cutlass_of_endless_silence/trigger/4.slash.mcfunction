#> asset:artifact/1017.cutlass_of_endless_silence/trigger/4.slash
#
#
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/schedule

# スコア増やす
    scoreboard players add @s S9.Time 1

# 斬る
    execute if score @s S9.Time matches 1 run function asset:artifact/1017.cutlass_of_endless_silence/trigger/5.slash_first



# 衝撃波
    execute if score @s S9.Time matches 10 run function asset:artifact/1017.cutlass_of_endless_silence/trigger/6.slash_second



# スコア一定になったらタグ消す
    execute if score @s S9.Time matches 10 run tag @s remove S9.Activation
    execute if score @s S9.Time matches 10 run scoreboard players reset @s S9.Time