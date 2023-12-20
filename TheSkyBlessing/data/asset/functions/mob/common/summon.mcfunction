#> asset:mob/common/summon
#
# 召喚されたMobにデータを適用します
#
# @input storage asset:mob
#   ID : int
#   Type : string
#   Interferable : boolean
#   Name? : TextComponentString
#   Weapon.Mainhand? : Item
#   Weapon.Offhand? : Item
#   Armor.Head? : Item
#   Armor.Chest? : Item
#   Armor.Legs? : Item
#   Armor.Feet? : Item
#   Health? : double (x <= 2147483.647)
#   AttackDamage? : double (x <= 2048.0)
#   Defense? : double (x <= 30.0)
#   SpecialDefense? : double (x <= 20.0)
#   Speed? : double (x <= 1024.0)
#   FollowRange? : double (x <= 2048.0)
#   KnockBackResist? : double (x <= 1.0)
#   Resist.Physical? : float
#   Resist.Magic? : float
#   Resist.Fire? : float
#   Resist.Water? : float
#   Resist.Thunder? : float
#   Field? : compound
#   FieldOverride? : compound
# @output storage asset:mob Return.Summoned : boolean
# @within function
#   api:mob/core/summon
#   asset:mob/*/summon/2.summon

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:mob Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage asset:mob Interferable run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Interferable","color":"red"}]
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
    # execute unless data storage asset:mob AttackDamage run
    # execute unless data storage asset:mob Defense run
    # execute unless data storage asset:mob SpecialDefense run
    # execute unless data storage asset:mob Speed run
    # execute unless data storage asset:mob FollowRange run
    # execute unless data storage asset:mob KnockBackResist run
    execute unless data storage asset:mob Resist.Physical run data modify storage asset:mob Resist.Physical set value 1f
    execute unless data storage asset:mob Resist.Magic run data modify storage asset:mob Resist.Magic set value 1f
    execute unless data storage asset:mob Resist.Fire run data modify storage asset:mob Resist.Fire set value 1f
    execute unless data storage asset:mob Resist.Water run data modify storage asset:mob Resist.Water set value 1f
    execute unless data storage asset:mob Resist.Thunder run data modify storage asset:mob Resist.Thunder set value 1f
    # execute unless data storage asset:mob Field run
# データ適用
    execute if entity @s run function asset_manager:mob/summon/set_data
# 通常攻撃に対して無敵に
    effect give @s[type=!#lib:undead] instant_health infinite 100 true
    effect give @s[type=#lib:undead] instant_damage infinite 100 true

# リセット
    tag @s remove MobInit

# 初期化イベント
    execute if entity @s run function #asset:mob/initialize

# 返り値
    data modify storage asset:mob Return.Summoned set value true

# リセット
    data remove storage asset:mob ID
    data remove storage asset:mob Type
    data remove storage asset:mob Interferable
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