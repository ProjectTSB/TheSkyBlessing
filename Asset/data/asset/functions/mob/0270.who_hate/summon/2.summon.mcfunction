#> asset:mob/0270.who_hate/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0270.who_hate/summon/1.trigger

# 元となるMobを召喚する
    summon zombified_piglin ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],ActiveEffects:[{Id:8b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"asset:mob/death/0270.who_hate"}
# ID (int)
    data modify storage asset:mob ID set value 270
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"憎悪者","color":"#122233"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:blast_furnace",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6380378}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6380378}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6380378}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 155
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 1
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.3
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Physical set value
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombified_piglin,tag=MobInit,distance=..0.01] run function asset:mob/common/summon