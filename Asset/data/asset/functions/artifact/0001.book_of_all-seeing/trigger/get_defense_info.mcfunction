#> asset:artifact/0001.book_of_all-seeing/trigger/get_defense_info
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/print_defense_messages

#> Val
# @private
#declare score_holder $Defense

# 取得
    execute store result score $Defense Temporary run data get storage asset:temp 01.Def 100
    execute unless data storage asset:temp 01.Def run scoreboard players set $Defense Temporary 100
# 耐性値に応じてメッセージを変更
    # 高い
        execute if score $Defense Temporary matches 190.. run data modify storage asset:temp 01.Def set value '{"text":"a","font":"tsb"}'
        execute if score $Defense Temporary matches 170..189 run data modify storage asset:temp 01.Def set value '{"text":"b","font":"tsb"}'
        execute if score $Defense Temporary matches 150..169 run data modify storage asset:temp 01.Def set value '{"text":"c","font":"tsb"}'
        execute if score $Defense Temporary matches 130..149 run data modify storage asset:temp 01.Def set value '{"text":"d","font":"tsb"}'
        execute if score $Defense Temporary matches 110..129 run data modify storage asset:temp 01.Def set value '{"text":"e","font":"tsb"}'

    # 普通
        execute if score $Defense Temporary matches 90..109 run data modify storage asset:temp 01.Def set value '{"text":"f","font":"tsb"}'

    # 低い
        execute if score $Defense Temporary matches 70..89 run data modify storage asset:temp 01.Def set value '{"text":"g","font":"tsb"}'
        execute if score $Defense Temporary matches 50..69 run data modify storage asset:temp 01.Def set value '{"text":"h","font":"tsb"}'
        execute if score $Defense Temporary matches 30..49 run data modify storage asset:temp 01.Def set value '{"text":"i","font":"tsb"}'
        execute if score $Defense Temporary matches 10..29 run data modify storage asset:temp 01.Def set value '{"text":"j","font":"tsb"}'
        execute if score $Defense Temporary matches ..9 run data modify storage asset:temp 01.Def set value '{"text":"k","font":"tsb"}'
# リセット
    scoreboard players reset $Defense Temporary