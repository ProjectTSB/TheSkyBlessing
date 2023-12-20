#> asset_manager:mob/summon/set_data
#
# 召喚されたAssetMobのデータを初期化します
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
#   Resist.Physical : float
#   Resist.Magic : float
#   Resist.Fire : float
#   Resist.Water : float
#   Resist.Thunder : float
#   Field? : compound
#   FieldOverride? : compound
# @within function asset:mob/common/summon

# リリース時、負荷軽減のためツールでsummonコマンドに統合し削除する
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
        data modify entity @s HandDropChances set from storage asset:mob WeaponDropChances
        data modify entity @s ArmorDropChances set from storage asset:mob ArmorDropChances
    # Attributeの事前追加
        data modify storage asset:mob Attributes set value []
        data modify storage asset:mob Attributes append value {Name:"generic.max_health"}
        execute if data storage asset:mob AttackDamage run data modify storage asset:mob Attributes append value {Name:"generic.attack_damage"}
        execute if data storage asset:mob Defense run data modify storage asset:mob Attributes append value {Name:"generic.armor"}
        execute if data storage asset:mob SpecialDefense run data modify storage asset:mob Attributes append value {Name:"generic.armor_toughness"}
        execute if data storage asset:mob Speed run data modify storage asset:mob Attributes append value {Name:"generic.movement_speed"}
        execute if data storage asset:mob FollowRange run data modify storage asset:mob Attributes append value {Name:"generic.follow_range"}
        execute if data storage asset:mob KnockBackResist run data modify storage asset:mob Attributes append value {Name:"generic.knockback_resistance"}
    # Attribute
        data modify storage asset:mob Attributes[{Name:"generic.max_health"}].Base set value 1024d
        data modify storage asset:mob Attributes[{Name:"generic.attack_damage"}].Base set from storage asset:mob AttackDamage
        data modify storage asset:mob Attributes[{Name:"generic.armor"}].Base set from storage asset:mob Defense
        data modify storage asset:mob Attributes[{Name:"generic.armor_toughness"}].Base set from storage asset:mob SpecialDefense
        data modify storage asset:mob Attributes[{Name:"generic.movement_speed"}].Base set from storage asset:mob Speed
        data modify storage asset:mob Attributes[{Name:"generic.follow_range"}].Base set from storage asset:mob FollowRange
        data modify storage asset:mob Attributes[{Name:"generic.knockback_resistance"}].Base set from storage asset:mob KnockBackResist
    # 適用
        data modify entity @s Attributes set from storage asset:mob Attributes
    # 体力
        data modify entity @s Health set value 1024f
        execute store result score @s MobHealthMax run data get storage asset:mob Health 10
        execute if data storage asset:mob {Type:"Enemy"} run function mob_manager:init/multiplay_multiplier/normal
        execute if data storage asset:mob {Type:"Enemy.Boss"} run function mob_manager:init/multiplay_multiplier/angel
        execute store result score @s MobHealth run scoreboard players get @s MobHealthMax
        #execute store result entity @s AbsorptionAmount float 1 run scoreboard players get @s MobHealthMax
    # そのまま適用するやつ
        execute store result score @s MobID run data get storage asset:mob ID
        execute if data storage asset:mob Name run data modify entity @s CustomName set from storage asset:mob Name
        data modify entity @s CustomNameVisible set value 0b
# タグ周り
    function asset_manager:mob/summon/set_tag
# Enemyのチーム設定
    execute if data storage asset:mob {Type:"Enemy"} run team join Enemy
    execute if data storage asset:mob {Type:"Enemy.Boss"} run team join Enemy
# EntityStorage呼び出し
    function oh_my_dat:please
# 属性耐性
    # Baseを追加
        data modify storage asset:mob Resist.Base set value 1f
    # 適用
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense set from storage asset:mob Resist
# フィールド
    execute if data storage asset:mob FieldOverride run data modify storage asset:mob Field merge from storage asset:mob FieldOverride
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:mob Field
# ボスバーの表示
    execute if data storage asset:mob {Type:"Enemy.Boss"} run function asset_manager:mob/bossbar/init
# データ初期化
    function mob_manager:init/
# リセット
    data remove storage asset:mob HandItems
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob Attributes