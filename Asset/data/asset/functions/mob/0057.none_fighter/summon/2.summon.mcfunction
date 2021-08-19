#> asset:mob/0057.none_fighter/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0057.none_fighter/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiFrozen"],DeathLootTable:"asset:mob/death/0057.none_fighter"}
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
        #　武器分岐のための擬人乱数
                # 疑似乱数取得
                    execute store result score $Random Temporary run function lib:random/
                # ほしい範囲に剰余算
                    scoreboard players operation $Random Temporary %= $100 Const
                # 剣か弓かへ分岐
                    execute if score $Random Temporary matches 0..50 run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_sword",Count:1b}
                    execute if score $Random Temporary matches 51..100 run data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:bow",Count:1b}
                # リセット
                    scoreboard players reset $Random Temporary
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
    data modify storage asset:mob Health set value 65
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 5.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 5.0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    data modify storage asset:mob SpecialDefense set value 3.0
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 15
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.5
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.75
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.75
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.75
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.75
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.75

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon