#> asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_defense_messages
#
# 実行者の情報を表示
#
# @within function asset:sacred_treasure/0001.book_of_all-seeing/trigger/3.main

# 体力
    # 最大体力を取得
        execute store result score $01.MaxHP Temporary run function api:mob/get_max_health
        scoreboard players operation $01.MaxHP Temporary /= $100 Const

    # 現在体力を取得
        execute store result score $01.CurrentHP Temporary run data get entity @s AbsorptionAmount

    # 表示する
        tellraw @p[tag=this] [{"text":"\uE01A","font":"tsb"},{"text":" ","font":"default"},{"score":{"objective":"Temporary","name":"$01.CurrentHP"},"color":"white","font":"default"},{"text":" / ","color":"white","font":"default"},{"score":{"objective":"Temporary","name":"$01.MaxHP"},"color":"white","font":"default"}]


# 物理と魔法
    # 物理耐性取得
        function api:player_modifier/defense/physical/get
        data modify storage asset:temp 01.Def set from storage api: Return.Defense.Physical
        function asset:sacred_treasure/0001.book_of_all-seeing/trigger/get_defence_info
        data modify storage asset:temp 01.PhysicalDefence set from storage asset:temp 01.Def

    # 魔法耐性取得
        function api:player_modifier/defense/magic/get
        data modify storage asset:temp 01.Def set from storage api: Return.Defense.Magic
        function asset:sacred_treasure/0001.book_of_all-seeing/trigger/get_defence_info
        data modify storage asset:temp 01.MagicDefence set from storage asset:temp 01.Def

    # 表示
        tellraw @p[tag=this] [{"text":"\uE018","font":"tsb"},{"text":" ","font":"default"},{"storage":"asset:temp","nbt":"01.Def_Icon","interpret":true}]

#
## 魔法
#    function api:player_modifier/defense/magic/get
#    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Magic
#    data modify storage asset:temp 01.Type set value '{"text":"魔","color":"dark_purple"}'
#    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message
#
## 火
#    function api:player_modifier/defense/fire/get
#    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Fire
#    data modify storage asset:temp 01.Type set value '{"text":"火","color":"red"}'
#    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message
#
## 水
#    function api:player_modifier/defense/water/get
#    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Water
#    data modify storage asset:temp 01.Type set value '{"text":"水","color":"aqua"}'
#    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message
#
## 雷
#    function api:player_modifier/defense/thunder/get
#    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Thunder
#    data modify storage asset:temp 01.Type set value '{"text":"雷","color":"yellow"}'
#    function asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_message

# リセット
    data remove storage asset:temp 01