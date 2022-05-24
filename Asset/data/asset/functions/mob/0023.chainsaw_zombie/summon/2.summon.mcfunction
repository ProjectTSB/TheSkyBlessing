#> asset:mob/0023.chainsaw_zombie/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0023.chainsaw_zombie/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0023.chainsaw_zombie"}
# ID (int)
    data modify storage asset:mob ID set value 23
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"チェーンソーゾンビ","color":"dark_green"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:471}}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    # 胴 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Chest set value {}
    # 脚 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Legs set value {}
    # 足 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Feet set value {}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 125
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 3.8
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.3
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon