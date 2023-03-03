#> asset:artifact/0252.void_transaction/trigger/3.2.void
#
# タイマーが0になれば奈落にtp
#
# @within
#   function asset:artifact/0252.void_transaction/trigger/3.main
#   function asset:artifact/0252.void_transaction/trigger/3.2.void
#   function asset:artifact/0252.void_transaction/trigger/rejoin_process

# スコア減算
    scoreboard players remove @a[scores={70.Timer=1..2400}] 70.Timer 1

# カウントダウン
    execute as @a if entity @s[scores={70.Timer=60}] run title @s title {"text":"3","color":"dark_red","bold":true}
    execute as @a if entity @s[scores={70.Timer=60}] at @s run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5
    execute as @a if entity @s[scores={70.Timer=40}] run title @s title {"text":"2","color":"dark_red","bold":true}
    execute as @a if entity @s[scores={70.Timer=40}] at @s run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5
    execute as @a if entity @s[scores={70.Timer=20}] run title @s title {"text":"1","color":"dark_red","bold":true}
    execute as @a if entity @s[scores={70.Timer=20}] at @s run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5

# スコアが0になればtp
    execute as @a if entity @s[scores={70.Timer=0}] at @s run particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50
    execute as @a if entity @s[scores={70.Timer=0}] at @s run tp @s ~ -200 ~
    execute as @a if entity @s[scores={70.Timer=0}] at @s run playsound minecraft:block.end_portal.spawn player @s ~ ~ ~

# スコアが0になった時にリセットする
    scoreboard players reset @a[scores={70.Timer=0}] 70.Timer

# 次tickにschedule予約
    execute if entity @a[scores={70.Timer=1..2400},limit=1] run schedule function asset:artifact/0252.void_transaction/trigger/3.2.void 1t replace