#> asset:mob/0076.golden_watermelon_bomber/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0076.golden_watermelon_bomber"}
# ID (int)
    data modify storage asset:mob ID set value 76
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"ゴー","color":"#59FF75"},{"text":"ルデンスイカボ","color":"#F0FF1F"},{"text":"マー","color":"#59FF75"}]'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:melon",Count:1b,tag:{Enchantments:[{}],CustomModelData:20018}}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:melon",Count:1b,tag:{Enchantments:[{}]}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15793951}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15793951}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15793951}}}
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 2999
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 15.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    #data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.28
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 25.0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.6
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.9
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.75
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.5

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon