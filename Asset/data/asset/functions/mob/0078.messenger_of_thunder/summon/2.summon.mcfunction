#> asset:mob/0078.messenger_of_thunder/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiVoid"],DeathLootTable:"asset:mob/death/0078.messenger_of_thunder"}
# ID (int)
    data modify storage asset:mob ID set value 78
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"雷鳴之使","color":"#D9B111"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:20188,Enchantments:[{id:"punch",lvl:1s}]}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:376}}
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14408481}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14408481}}}
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 25000
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -5
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.4
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 30
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.5
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.8
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0

# スコアを付与
    scoreboard players set @e[type=skeleton,tag=MobInit,distance=..0.01] 26.Tick -80

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon
