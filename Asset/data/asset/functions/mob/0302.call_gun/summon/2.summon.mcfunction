#> asset:mob/0302.call_gun/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0302.call_gun/summon/1.trigger

#> private
# @private
    #declare score_holder $Random

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","8E.Gun","AlwaysInvisible"],NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,DeathLootTable:"asset:mob/death/0302.call_gun"}
# ID (int)
    data modify storage asset:mob ID set value 302
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Friend"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ガン","color":"yellow"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20269}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
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

# ユーザーID適応
    scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 8E.UserID = @s UserID

# 召喚時プレイヤーと反対方向をみる
    execute facing entity @s eyes rotated ~ ~180 run tp @e[type=zombie,tag=MobInit,distance=..0.01] ~ ~ ~ ~ ~

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $10 Const
# 数値いれる
    scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 8E.Tick = $Random Temporary
    scoreboard players remove @e[type=zombie,tag=MobInit,distance=..0.01] 8E.Tick 20
# リセット
    scoreboard players reset $Random Temporary

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon