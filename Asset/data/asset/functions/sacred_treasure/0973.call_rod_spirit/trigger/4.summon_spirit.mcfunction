#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/4.summon_spirit
#
# かわいいかわいいオバケを召喚
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# 本体を召喚
    execute rotated ~ 0 run summon armor_stand ^-2 ^ ^-2 {DisabledSlots:4144959,Invisible:1b,NoGravity:1b,Small:1b,Tags:["87.Init","87.Normal","Friend"]}

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# メッセージ
    execute if score $Random Temporary matches 0 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Hello!","font":"illageralt"}]
    execute if score $Random Temporary matches 1 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I will help you!","font":"illageralt"}]
    execute if score $Random Temporary matches 2 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Where is your enemies?","font":"illageralt"}]
    execute if score $Random Temporary matches 3 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Let us do it!","font":"illageralt"}]

# リセット
    scoreboard players reset $Random Temporary