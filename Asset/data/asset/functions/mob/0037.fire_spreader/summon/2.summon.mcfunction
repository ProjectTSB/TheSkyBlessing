#> asset:mob/0037.fire_spreader/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0037.fire_spreader/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0037.fire_spreader",}
# ID (int)
    data modify storage asset:mob ID set value 37
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"炎延者","color":"dark_red"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
    data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}}
    # オフハンド (Compound(Item)) (オプション)
    # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
    data modify storage asset:mob Armor.Head set value {id:"minecraft:magma_block",Count:1b}
    # 胴 (Compound(Item)) (オプション)
    data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6029569}}}
    # 脚 (Compound(Item)) (オプション)
    data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6029569}}}
    # 足 (Compound(Item)) (オプション)
    data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6029569}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 65
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value -2
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 18
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 15
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.2
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
    data modify storage asset:mob Resist.Physical set value 0.75
    # 魔法倍率 (float) (オプション)
    data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
    data modify storage asset:mob Resist.Fire set value 0.25
    # 水倍率 (float) (オプション)
    data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
    data modify storage asset:mob Resist.Thunder set value 0.75

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon