#> asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message
#
#
#
# @within function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_defense_messages

#> Private
# @private
#declare score_holder $Defense

# 取得
    execute store result score $Defense Temporary run data get storage asset:temp 01.Def 100
    execute unless data storage asset:temp 01.Def run scoreboard players set $Defense Temporary 100
# 耐性値に応じてメッセージを変更
    execute if score $Defense Temporary matches 90.. run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||||||||||","color":"#55FF55"}]
    execute if score $Defense Temporary matches 70..89 run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||||||||","color":"#AAff55"},{"text":"||","color":"dark_gray"}]
    execute if score $Defense Temporary matches 50..69 run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||||||","color":"#FFFF55"},{"text":"||||","color":"dark_gray"}]
    execute if score $Defense Temporary matches 30..49 run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||||","color":"#FFAA55"},{"text":"||||||","color":"dark_gray"}]
    execute if score $Defense Temporary matches 10..29 run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||","color":"#FF5555"},{"text":"||||||||","color":"dark_gray"}]
    execute if score $Defense Temporary matches ..9 run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.Type","interpret":true},{"text":" ||||||||||","color":"dark_gray"}]
# リセット
    data remove storage asset:temp 01