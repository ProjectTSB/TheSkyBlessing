#> asset:mob/common/summon
#
# 召喚されたMobにデータを適用します
#
# @input storage asset:mob
#   ID : int
#   Name? : TextComponentString
#   Health? : float
#   AttackDamage? : double (x <= 2048.0)
#   Defense? : double (x <= 30.0)
#   SpecialDefense? : double (x <= 20.0)
#   Speed? : double (x <= 1024.0)
#   FollowRange? : double (x <= 2048.0)
#   KnockBackResist? : double (x <= 1.0)
#   Resist.Physical? : int (x <= 20)
#   Resist.Magic? : int (x <= 20)
#   Resist.Fire? : int (x <= 20)
#   Resist.Water? : int (x <= 20)
#   Resist.Thunder? : int (x <= 20)
# @within function asset:mob/*/summon/summon

# validate
    execute unless entity @e[tag=MobInit] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"MobInitが設定されたEntityが存在しません"}]
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument ID at asset:mob/common/summon"}}}]
    # execute unless data storage asset:mob Name run
    # execute unless data storage asset:mob Health run
    # execute unless data storage asset:mob AttackDamage run
    # execute unless data storage asset:mob Defense run
    # execute unless data storage asset:mob SpecialDefense run
    # execute unless data storage asset:mob Speed run
    # execute unless data storage asset:mob FollowRange run
    # execute unless data storage asset:mob KnockBackResist run
    execute unless data storage asset:mob Resist.Physical run data modify storage asset:mob Resist.Physical set value 0
    execute unless data storage asset:mob Resist.Magic run data modify storage asset:mob Resist.Magic set value 0
    execute unless data storage asset:mob Resist.Fire run data modify storage asset:mob Resist.Fire set value 0
    execute unless data storage asset:mob Resist.Water run data modify storage asset:mob Resist.Water set value 0
    execute unless data storage asset:mob Resist.Thunder run data modify storage asset:mob Resist.Thunder set value 0
# データ適用
    execute as @e[tag=MobInit,limit=1] run function asset_manager:mob/set_data
# リセット
    data remove storage asset:mob ID
    data remove storage asset:mob Name
    data remove storage asset:mob Health
    data remove storage asset:mob AttackDamage
    data remove storage asset:mob Defense
    data remove storage asset:mob SpecialDefense
    data remove storage asset:mob Speed
    data remove storage asset:mob FollowRange
    data remove storage asset:mob KnockBackResist
    data remove storage asset:mob Resist