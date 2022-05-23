#> asset:mob/0287.burning_stomper/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0287.burning_stomper/summon/1.trigger

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {CustomNameVisible:0b,Tags:["MobInit","AlwaysInvisible","AntiFallDamage"],DeathLootTable:"asset:mob/death/0287.burning_stomper"}
# ID (int)
    data modify storage asset:mob ID set value 287
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value True
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"バーニングストンパー","color":"red"}'
# 防具
    # 頭 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-672593164,1073039141,-1481174912,860659466],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2JjYmJmOTRkNjAzNzQzYTFlNzE0NzAyNmUxYzEyNDBiZDk4ZmU4N2NjNGVmMDRkY2FiNTFhMzFjMzA5MTRmZCJ9fX0="}]}}}}
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20209}}
    # 脚 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7015424}}}
    # 足 (Compound(Item)) (オプション)
        #data modify storage asset:mob Armor.Feet set value {id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1s}]}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    #data modify storage asset:mob FollowRange set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.8f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon