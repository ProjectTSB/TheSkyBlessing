#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.cannot_use
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/2.check_condition

#> 使用不可タグ
# @private
#declare tag CanUsed

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# メッセージ
    execute if score $Random Temporary matches 0 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I am already here.","font":"illageralt"}]
    execute if score $Random Temporary matches 1 run tellraw @s [{"text":"<","color":"white"},{"text":"Spirit","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I cannot be the two.","font":"illageralt"}]

# リセット
    scoreboard players reset $Random Temporary

# 使用不可に
    tag @s remove CanUsed