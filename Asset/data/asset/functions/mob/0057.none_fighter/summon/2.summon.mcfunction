#> asset:mob/0057.none_fighter/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0057.none_fighter/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0057.none_fighter"}
# ID (int)
    data modify storage asset:mob ID set value 57
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"虚闘者","color":"white"}'

# 武器
    # メインハンド (Compound(Item)) (オプション)
        # 一度剣にした後、乱数で弓に変更
            data modify storage asset:mob Weapon.Mainhand set value {id:"iron_sword",Count:1b}
            execute if predicate lib:random_pass_per/50 run data modify storage asset:mob Weapon.Mainhand set value {id:"bow",Count:1b,tag:{Enchantments:[{id:"power",lvl:5}]}}

    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0}}}

# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"white_concrete",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}}
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 232.5
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value -4.0
# 防御力 (double) (オプション) // 被ダメージがある3大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    #data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    #data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.5
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.5
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon