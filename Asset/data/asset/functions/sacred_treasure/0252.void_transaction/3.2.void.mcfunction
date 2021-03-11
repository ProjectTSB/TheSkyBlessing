#> asset:sacred_treasure/0252.void_transaction/3.2.void
#
# タイマーが0になれば奈落にtp
#
# @within
#   function asset:sacred_treasure/0252.void_transaction/3.main
#   function asset:sacred_treasure/0252.void_transaction/3.2.void
#> private
# @private
    #declare tag VoidTransaction

# スコア減算
    scoreboard players remove @a[tag=VoidTransaction] 0252.Timer 1

# カウントダウン
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 60 run title @s title {"text":"3","color":"dark_red","bold":true}
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 60 at @s run playsound block.ender_chest.open master @s ~ ~ ~ 1.0 0.5
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 40 run title @s title {"text":"2","color":"dark_red","bold":true}
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 40 at @s run playsound block.ender_chest.open master @s ~ ~ ~ 1.0 0.5
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 20 run title @s title {"text":"1","color":"dark_red","bold":true}
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 20 at @s run playsound block.ender_chest.open master @s ~ ~ ~ 1.0 0.5

# スコアが0になればtp
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 0 at @s run particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 0 at @s run tp @s ~ -200 ~
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 0 at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~
    execute as @a[tag=VoidTransaction] if score @s 0252.Timer matches 0 run tag @s remove VoidTransaction

# 次tickにschedule予約
    execute if score @a[tag=VoidTransaction,limit=1] 0252.Timer matches 1..2400 run schedule function asset:sacred_treasure/0252.void_transaction/3.2.void 1t replace