#> asset:mob/0174.burning_blaze/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0174.burning_blaze/summon/1.trigger

# 元となるMobを召喚する
    summon blaze ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0174.burning_blaze"}
# ID (int)
    data modify storage asset:mob ID set value 174
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"バーニング・ブレイズ","color":"dark_red"}]'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stone",tag:{Enchantments:[{id:"fire_aspect",lvl:2}]}}
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
    data modify storage asset:mob Health set value 20000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 1
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.3
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.3
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.6
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.4
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.75

# スコア
    scoreboard players set @e[type=blaze,tag=MobInit,distance=..0.01] 4U.ActionTime 0
    scoreboard players set @e[type=blaze,tag=MobInit,distance=..0.01] 4U.NowAction 0

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=blaze,tag=MobInit,distance=..0.01] run function asset:mob/common/summon
