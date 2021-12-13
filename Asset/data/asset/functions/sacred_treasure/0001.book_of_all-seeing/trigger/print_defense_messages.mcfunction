#> asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_defense_messages
#
# 実行者の属性情報を出力する
#
# @within function asset:sacred_treasure/0001.book_of_all-seeing/trigger/3.main

# 物理
    function api:player_modifier/defense/physical/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Physical
    data modify storage asset:temp 01.Type set value '{"text":"物","color":"dark_green"}'
    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message

# 魔法
    function api:player_modifier/defense/magic/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Magic
    data modify storage asset:temp 01.Type set value '{"text":"魔","color":"dark_purple"}'
    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message

# 火
    function api:player_modifier/defense/fire/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Fire
    data modify storage asset:temp 01.Type set value '{"text":"火","color":"red"}'
    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message

# 水
    function api:player_modifier/defense/water/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Water
    data modify storage asset:temp 01.Type set value '{"text":"水","color":"aqua"}'
    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message

# 雷
    function api:player_modifier/defense/thunder/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Thunder
    data modify storage asset:temp 01.Type set value '{"text":"雷","color":"yellow"}'
    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message