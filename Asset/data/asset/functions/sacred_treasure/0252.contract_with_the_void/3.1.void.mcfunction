#> asset:sacred_treasure/0252.contract_with_the_void/3.1.void
#
# 奈落予約用のscheduleコマンドで呼び出されるfunction
#
# @within function asset:sacred_treasure/0252.contract_with_the_void/3.main
#> private
# @private
    #declare tag Void

# tp前演出
    execute as @a at @s if entity @s[tag=Void] run particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50

# 奈落tp
    execute as @a at @s if entity @s[tag=Void] run tp @s ~ -100 ~

# tp後演出
    execute as @a at @s if entity @s[tag=Void] run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~