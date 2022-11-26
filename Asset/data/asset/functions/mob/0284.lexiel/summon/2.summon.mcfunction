#> asset:mob/0284.lexiel/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0284.lexiel/summon/1.trigger

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","7W.Boss","7W.Opening"],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/0284.lexiel"}
# ID (int)
    data modify storage asset:mob ID set value 284
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"レクシエル"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Head set value
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1400
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    # data modify storage asset:mob Speed set value
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0

# 見た目用のアマスタを召喚
    summon snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:debug_stick",Count:1b,tag:{CustomModelData:4040}},Tags:["7W.ModelCore","7W.ModelCoreThis","Object","Uninterferable"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelHead","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{Head:[25f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20296}}]},{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelBody","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{LeftArm:[-115f,0f,-75f],RightArm:[-90f,0f,75f],Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20286}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20289}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20290}}]}]}

# 位置をあわせる
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=7W.ModelCoreThis,distance=..0.01] @s

# タグを消す
    tag @e[type=armor_stand,tag=7W.ModelCoreThis,distance=..0.01] remove 7W.ModelCoreThis

# 座標を記憶するあれ
    summon marker ~ ~ ~ {Tags:["7W.XYZ"]}

# スコアをセットする
    scoreboard players set @e[type=wither_skeleton,tag=MobInit,distance=..0.01] 7W.Tick 0

# 最大HPをスコアに入れる
    execute store result score @e[type=wither_skeleton,tag=MobInit,distance=..0.01] 7W.HealthMax run data get storage asset:mob Health 1

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon