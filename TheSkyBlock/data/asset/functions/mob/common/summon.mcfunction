#> asset:mob/common/summon
#
#
#
# @within function asset:mob/*/summon/summon

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