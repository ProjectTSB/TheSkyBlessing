#> asset_manager:mob/summon/set_data
#
#
#
# @input storage asset:mob
#   ID : int
#   Name? : TextComponentString
#   Health? : float
#   AttackDamage? : double
#   Defense? : double
#   SpecialDefense? : double
#   Speed? : double
#   FollowRange? : double
#   KnockBackResist? : double
#
#   Resist.Physical : int
#   Resist.Magic : int
#   Resist.Fire : int
#   Resist.Water : int
#   Resist.Thunder : int
# @within function asset:mob/common/summon

# リリース時、負荷軽減のためツールでsummonコマンドに統合し削除する
    # そのまま適用するやつ
        execute store result score @s MobID run data get storage asset:mob ID
        execute if data storage asset:mob Name run data modify entity @s CustomName set from storage asset:mob Name
        execute if data storage asset:mob Health run data modify entity @s Health set from storage asset:mob Health
    # 武器防具の事前追加
        data modify storage asset:mob HandItems set value []
        data modify storage asset:mob HandItems append from storage asset:mob Weapon.Mainhand
        data modify storage asset:mob HandItems append from storage asset:mob Weapon.Offhand
        data modify storage asset:mob ArmorItems set value []
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Feet
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Legs
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Chest
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Head
    # 武器防具
        data modify entity @s HandItems set from storage asset:mob HandItems
        data modify entity @s ArmorItems set from storage asset:mob ArmorItems
    # Attributeの事前追加
        execute if data storage asset:mob Health run data modify storage asset:mob Attributes append value {Name:"generic.max_health"}
        execute if data storage asset:mob AttackDamage run data modify storage asset:mob Attributes append value {Name:"generic.attack_damage"}
        execute if data storage asset:mob Defense run data modify storage asset:mob Attributes append value {Name:"generic.armor"}
        execute if data storage asset:mob SpecialDefense run data modify storage asset:mob Attributes append value {Name:"generic.armor_toughness"}
        execute if data storage asset:mob Speed run data modify storage asset:mob Attributes append value {Name:"generic.movement_speed"}
        execute if data storage asset:mob FollowRange run data modify storage asset:mob Attributes append value {Name:"generic.follow_range"}
        execute if data storage asset:mob KnockBackResist run data modify storage asset:mob Attributes append value {Name:"generic.knockback_resistance"}
    # Attribute
        data modify storage asset:mob Attributes[{Name:"generic.max_health"}].Base set from storage asset:mob Health
        data modify storage asset:mob Attributes[{Name:"generic.attack_damage"}].Base set from storage asset:mob AttackDamage
        data modify storage asset:mob Attributes[{Name:"generic.armor"}].Base set from storage asset:mob Defense
        data modify storage asset:mob Attributes[{Name:"generic.armor_toughness"}].Base set from storage asset:mob SpecialDefense
        data modify storage asset:mob Attributes[{Name:"generic.movement_speed"}].Base set from storage asset:mob Speed
        data modify storage asset:mob Attributes[{Name:"generic.follow_range"}].Base set from storage asset:mob FollowRange
        data modify storage asset:mob Attributes[{Name:"generic.knockback_resistance"}].Base set from storage asset:mob KnockBackResist
    # 適用
        data modify entity @s Attributes set from storage asset:mob Attributes
# タグ周り
    function asset_manager:mob/summon/set_tag
# 属性耐性
    # EntityStorage呼び出し
        function oh_my_dat:please
    # 適用
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobData.DEF set from storage asset:mob Resist
# リセット
    data remove storage asset:mob HandItems
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob Attributes