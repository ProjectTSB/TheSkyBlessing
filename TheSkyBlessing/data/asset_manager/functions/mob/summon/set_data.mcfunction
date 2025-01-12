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
# @within function asset_manager:mob/summon/init

# validate
    # execute unless data storage asset:mob Name run
    execute unless data storage asset:mob Weapon.Mainhand run data modify storage asset:mob Weapon.Mainhand set value {}
    execute unless data storage asset:mob Weapon.Offhand run data modify storage asset:mob Weapon.Offhand set value {}
    execute unless data storage asset:mob Armor.Head run data modify storage asset:mob Armor.Head set value {}
    execute unless data storage asset:mob Armor.Chest run data modify storage asset:mob Armor.Chest set value {}
    execute unless data storage asset:mob Armor.Legs run data modify storage asset:mob Armor.Legs set value {}
    execute unless data storage asset:mob Armor.Feet run data modify storage asset:mob Armor.Feet set value {}
    execute unless data storage asset:mob WeaponDropChances run data modify storage asset:mob WeaponDropChances set value [0f,0f]
    execute unless data storage asset:mob ArmorDropChances run data modify storage asset:mob ArmorDropChances set value [0f,0f,0f,0f]
    execute unless data storage asset:mob Health store result storage asset:mob Health double 0.01 run attribute @s generic.max_health get 100
    execute unless data storage asset:mob AttackDamage run data modify storage asset:mob AttackDamage set value 0.01
    execute unless data storage asset:mob Defense run data modify storage asset:mob Defense set value 0
    execute unless data storage asset:mob SpecialDefense run data modify storage asset:mob SpecialDefense set value 0
    # execute unless data storage asset:mob Speed run
    # execute unless data storage asset:mob FollowRange run
    execute unless data storage asset:mob KnockBackResist run data modify storage asset:mob KnockBackResist set value 0.75f
    execute unless data storage asset:mob Resist.Physical run data modify storage asset:mob Resist.Physical set value 1f
    execute unless data storage asset:mob Resist.Magic run data modify storage asset:mob Resist.Magic set value 1f
    execute unless data storage asset:mob Resist.Fire run data modify storage asset:mob Resist.Fire set value 1f
    execute unless data storage asset:mob Resist.Water run data modify storage asset:mob Resist.Water set value 1f
    execute unless data storage asset:mob Resist.Thunder run data modify storage asset:mob Resist.Thunder set value 1f
    # execute unless data storage asset:mob Field run

# リリース時、負荷軽減のためツールでsummonコマンドに統合し削除する
    # 武器防具の事前追加
        data modify storage asset:mob HandItems set value []
        data modify storage asset:mob HandItems append from storage asset:mob Weapon.Mainhand
        data modify storage asset:mob HandItems append from storage asset:mob Weapon.Offhand
        data modify storage asset:mob HandItems[].AttributeModifiers set value []
        data modify storage asset:mob ArmorItems set value []
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Feet
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Legs
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Chest
        data modify storage asset:mob ArmorItems append from storage asset:mob Armor.Head
        data modify storage asset:mob ArmorItems[].AttributeModifiers set value []
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
        data modify storage asset:mob Attributes[{Name:"generic.max_health"}].Base set value 1024f
        data modify storage asset:mob Attributes[{Name:"generic.attack_damage"}].Base set from storage asset:mob AttackDamage
        data modify storage asset:mob Attributes[{Name:"generic.armor"}].Base set from storage asset:mob Defense
        data modify storage asset:mob Attributes[{Name:"generic.armor_toughness"}].Base set from storage asset:mob SpecialDefense
        data modify storage asset:mob Attributes[{Name:"generic.movement_speed"}].Base set from storage asset:mob Speed
        data modify storage asset:mob Attributes[{Name:"generic.follow_range"}].Base set from storage asset:mob FollowRange
        data modify storage asset:mob Attributes[{Name:"generic.knockback_resistance"}].Base set from storage asset:mob KnockBackResist
    # 適用
        data modify entity @s Attributes set from storage asset:mob Attributes
    # 体力 (e2)
        data modify entity @s Health set value 512f
        execute store result score @s MobHealthMax run data get storage asset:mob Health 1
        execute if data storage asset:mob {Type:"Enemy"} run function mob_manager:init/multiplay_multiplier/normal
        execute if data storage asset:mob {Type:"Enemy.Boss"} run function mob_manager:init/multiplay_multiplier/angel
        execute if data storage asset:mob {Type:"Enemy.EndGameBoss"} run function mob_manager:init/multiplay_multiplier/angel
        scoreboard players operation @s MobHealth = @s MobHealthMax
    # そのまま適用するやつ
        execute store result score @s MobID run data get storage asset:mob ID
        execute if data storage asset:mob Name run data modify entity @s CustomName set from storage asset:mob Name
        data modify entity @s CustomNameVisible set value 0b
# タグ周り
    function asset_manager:mob/summon/set_tag
# Enemyのチーム設定
    execute if data storage asset:mob {Type:"Enemy"} run team join Enemy
    execute if data storage asset:mob {Type:"Enemy.Boss"} run team join Enemy
    execute if data storage asset:mob {Type:"Enemy.EndGameBoss"} run team join Enemy
# EntityStorage呼び出し
    function oh_my_dat:please
# 属性耐性
    # Baseを追加
        data modify storage asset:mob Resist.Base set value 1f
    # 適用
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense set from storage asset:mob Resist
# フィールド
    execute if data storage asset:mob FieldOverride run data modify storage asset:mob Field merge from storage asset:mob FieldOverride
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:mob Field
# LoreをROMに書き込む
    data modify storage api: Argument.Address set from storage asset:mob ID
    function api:rom/please
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Lore set from storage asset:mob Lore
# データ初期化
    function mob_manager:init/
# リセット
    data remove storage asset:mob HandItems
    data remove storage asset:mob ArmorItems
    data remove storage asset:mob Attributes
    data remove storage asset:mob ID
    data remove storage asset:mob Type
    data remove storage asset:mob Interferable
    data remove storage asset:mob IsForwardTarget
    data remove storage asset:mob Name
    data remove storage asset:mob Weapon
    data remove storage asset:mob Armor
    data remove storage asset:mob Health
    data remove storage asset:mob AttackDamage
    data remove storage asset:mob Defense
    data remove storage asset:mob SpecialDefense
    data remove storage asset:mob Speed
    data remove storage asset:mob FollowRange
    data remove storage asset:mob KnockBackResist
    data remove storage asset:mob Resist
    data remove storage asset:mob Field
    data remove storage asset:mob FieldOverride
