#> asset:mob/0038.laser_eye/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0038.laser_eye/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0038.laser_eye",NoGravity:1b,Silent:1b,NoAI:1b}
# ID (int)
    data modify storage asset:mob ID set value 38
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"レーザーアイ","color":"green"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;946128277,759517147,-1752401778,423880275],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI3ODZhMGI3MWJiNGE3MDEwOGE3NDQzNWU1Y2VlNTg4ZmRmMzU5YjllYWVmYjc0YjY4Mzc3N2I1MTgwNjI5OCJ9fX0="}]}}}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 1
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.7
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.7
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.5


# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon