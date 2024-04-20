#> asset:mob/example/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/example/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AntiVoid"],DeathLootTable:"asset:mob/death/example"}
# ID (int)
    data modify storage asset:mob ID set value 2147483647
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"サンプルの敵"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"アセットモブの動作チェック用エネミー。","color":"white"}','{"text":"Lore文は多くても3行くらいに収めておくべきだろう。","color":"white"}','{"text":"あんまり長いとチャット表示欄からはみ出しかねないからだ。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100.0
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_sword",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:iron_helmet",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:iron_chestplate",Count:1b}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:iron_leggings",Count:1b}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:iron_boots",Count:1b}
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 2.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0.0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    data modify storage asset:mob SpecialDefense set value 0.0
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.23
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32.0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0
# 属性倍率 // 防御力,特殊防御力による軽減計算前に計算
    # 物理倍率 (int) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.85f
    # 魔法倍率 (int) (オプション)
        data modify storage asset:mob Resist.Magic set value 2f
    # 火倍率 (int) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.2f
    # 水倍率 (int) (オプション)
        data modify storage asset:mob Resist.Water set value 2f
    # 雷倍率 (int) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.6f

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon