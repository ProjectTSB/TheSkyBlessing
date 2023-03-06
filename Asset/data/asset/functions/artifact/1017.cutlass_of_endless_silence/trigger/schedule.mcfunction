#> asset:artifact/1017.cutlass_of_endless_silence/trigger/schedule
#
#
#
# @within function
#       asset:artifact/1017.cutlass_of_endless_silence/trigger/3.main
#       asset:artifact/1017.cutlass_of_endless_silence/trigger/schedule
#       asset:artifact/1017.cutlass_of_endless_silence/trigger/rejoin_process

# ファンクションを実行する
    execute as @a[tag=S9.Activation] at @s run function asset:artifact/1017.cutlass_of_endless_silence/trigger/4.slash

# ループする
    execute if entity @a[tag=S9.Activation] run schedule function asset:artifact/1017.cutlass_of_endless_silence/trigger/schedule 1t replace