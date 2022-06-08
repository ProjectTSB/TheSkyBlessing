#> asset:sacred_treasure/0001.book_of_all-seeing/trigger/print_defense_messages
#
# 実行者の情報を表示
#
# @within function asset:sacred_treasure/0001.book_of_all-seeing/trigger/3.main

# VFX
    execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 0 100
    execute at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.5 0.2 0 5

# 体力
    # 最大体力を取得
        execute store result score $01.MaxHP Temporary run function api:mob/get_max_health
        scoreboard players operation $01.MaxHP Temporary /= $100 Const

    # 現在体力を取得
        execute store result score $01.CurrentHP Temporary run data get entity @s AbsorptionAmount

    # 表示する
        execute if entity @s[tag=!Enemy.Boss] run tellraw @p[tag=this] [{"text":"\uE01A","font":"tsb"},{"text":" ","font":"default"},{"score":{"objective":"Temporary","name":"$01.CurrentHP"},"color":"white","font":"default"},{"text":" / ","color":"white","font":"default"},{"score":{"objective":"Temporary","name":"$01.MaxHP"},"color":"white","font":"default"}]

    # 天使だったら今までのデータを気にせず秘匿
        execute if entity @s[tag=Enemy.Boss] run tellraw @p[tag=this] [{"text":"\uE01A","font":"tsb"},{"text":" ??? / ???","font":"default"}]

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
        tellraw @p[tag=this] [{"text":"\uE018","font":"tsb"},{"storage":"asset:temp","nbt":"01.PhysicalDefence","interpret":true},{"text":" | ","font":"default"},{"text":"\uE019","font":"tsb"},{"storage":"asset:temp","nbt":"01.MagicDefence","interpret":true}]

# 炎、水、雷
    # 炎耐性取得
        function api:player_modifier/defense/fire/get
        data modify storage asset:temp 01.Def set from storage api: Return.Defense.Fire
        function asset:sacred_treasure/0001.book_of_all-seeing/trigger/get_defence_info
        data modify storage asset:temp 01.FireDefence set from storage asset:temp 01.Def

    # 水耐性取得
        function api:player_modifier/defense/water/get
        data modify storage asset:temp 01.Def set from storage api: Return.Defense.Water
        function asset:sacred_treasure/0001.book_of_all-seeing/trigger/get_defence_info
        data modify storage asset:temp 01.WaterDefence set from storage asset:temp 01.Def

    # 雷耐性取得
        function api:player_modifier/defense/thunder/get
        data modify storage asset:temp 01.Def set from storage api: Return.Defense.Thunder
        function asset:sacred_treasure/0001.book_of_all-seeing/trigger/get_defence_info
        data modify storage asset:temp 01.ThunderDefence set from storage asset:temp 01.Def

    # 表示
        tellraw @p[tag=this] [{"text":"\uE01C","font":"tsb"},{"storage":"asset:temp","nbt":"01.FireDefence","interpret":true},{"text":" | ","font":"default"},{"text":"\uE01D","font":"tsb"},{"storage":"asset:temp","nbt":"01.WaterDefence","interpret":true},{"text":" | ","font":"default"},{"text":"\uE01E","font":"tsb"},{"storage":"asset:temp","nbt":"01.ThunderDefence","interpret":true}]

# Loreテスト(デバッグ用)
    tellraw @p[tag=this] {"text":"\n見通しの書で表示されているデータ。\n敵の説明は3行に収めたい。\nチャット欄のデフォ設定にきっちり収まるサイズだからだ。\n"}

# リセット
    data remove storage asset:temp 01