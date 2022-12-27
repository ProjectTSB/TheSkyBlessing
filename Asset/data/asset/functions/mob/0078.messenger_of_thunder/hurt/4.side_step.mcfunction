#> asset:mob/0078.messenger_of_thunder/hurt/4.side_step
#
# サイドステップする
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/2.hurt

# モーション
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute if predicate lib:random_pass_per/50 run data modify storage lib: Argument.VectorMagnitude set value -1.2
    execute facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~90 -20 run function lib:motion/
    data remove storage lib: Argument