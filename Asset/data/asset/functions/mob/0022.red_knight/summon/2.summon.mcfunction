#> asset:mob/0022.red_knight/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0022.red_knight/summon/1.trigger
# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","AntiFallDamage","AntiVoid","M.Opening","Uninterferable"],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/0022.red_knight"}
# ID (int)
    data modify storage asset:mob ID set value 22
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"赤い騎士","color":"dark_red"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    #data modify storage asset:mob Health set value 65700
    data modify storage asset:mob Health set value 2000

# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    #data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    #data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.9
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1
# 見た目用のアマスタを召喚
    summon snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:debug_stick",Count:1b,tag:{CustomModelData:4040}},Tags:["M.ModelCore","M.ModelCoreTarget","Object","Uninterferable"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["M.Model","M.ModelHead","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{Head:[35f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20270}}]},{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["M.Model","M.ModelBody","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{LeftArm:[0f,0f,-5f],RightArm:[-15f,0f,5f],Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20273}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20277}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20279}}]}]}
# 位置をあわせる
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=M.ModelCoreTarget,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=M.ModelCoreTarget,distance=..0.01] remove M.ModelCoreTarget
# スコアを設定する
    scoreboard players set @e[type=wither_skeleton,tag=MobInit,distance=..0.01] M.Tick -15

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon