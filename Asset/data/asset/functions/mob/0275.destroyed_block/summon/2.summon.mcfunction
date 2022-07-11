#> asset:mob/0275.destroyed_block/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0275.destroyed_block/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Tags:["MobInit"],Small:1b,NoGravity:1b,Marker:1b,Invisible:1b}
# ID (int)
    data modify storage asset:mob ID set value 275
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Object"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    # data modify storage asset:mob Name set value
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20175}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    # data modify storage asset:mob Health set value
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
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
        # data modify storage asset:mob Resist.Physical set value
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value

# MobInitタグ持ちを対象にして専用のinit処理
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0275.destroyed_block/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon