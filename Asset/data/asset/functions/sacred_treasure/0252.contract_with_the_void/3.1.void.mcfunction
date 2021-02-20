#> asset:sacred_treasure/0252.contract_with_the_void/3.1.void
#
# 奈落予約用のscheduleコマンドで呼び出されるfunction
#
# @within function
#   asset:sacred_treasure/0252.contract_with_the_void/3.main
#   asset:sacred_treasure/0252.contract_with_the_void/3.1.void
#> private
# @private
    #declare tag Void

# tp前演出
    execute as @a at @s if entity @s[tag=Void] if predicate asset:0252.contract_with_the_void/effect_expire run particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50

# 奈落tp
    execute as @a at @s if entity @s[tag=Void] if predicate asset:0252.contract_with_the_void/effect_expire run tp @s ~ -100 ~

# tp後演出
    execute as @a at @s if entity @s[tag=Void] if predicate asset:0252.contract_with_the_void/effect_expire run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~

# リセット
    execute as @a at @s if entity @s[tag=Void] if predicate asset:0252.contract_with_the_void/effect_expire run tag @s remove Void

# 次tickにschedule再予約
    execute unless entity @a[tag=!Void] run schedule function asset:sacred_treasure/0252.contract_with_the_void/3.1.void 1t replace
