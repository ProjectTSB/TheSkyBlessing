#> asset:mob/0265.dark_familiar/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0265.dark_familiar/summon/1.trigger

# 元となるMobを召喚する
    summon husk ~ ~-100 ~ {NoAI:1b,Team:"NoCollision",Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall"],DeathTime:19s,DeathLootTable:"asset:mob/death/0265.dark_familiar",IsBaby:1b,Silent:1b}
# ID (int)
    data modify storage asset:mob ID set value 265
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ダークファミリア","color":"#B638FF","italic":false}'

# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20177}}

# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 500
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
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

# 上から降ろす
    execute positioned ~ ~-100 ~ as @e[type=husk,tag=MobInit,distance=..0.01] run function asset:mob/0265.dark_familiar/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=husk,tag=MobInit,distance=..0.01] run function asset:mob/common/summon