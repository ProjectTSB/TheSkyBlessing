#> asset:mob/0205.skull_soldier/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0205.skull_soldier/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit","5P.Melee"],DeathLootTable:"asset:mob/death/0205.skull_soldier"}
# ID (int)
    data modify storage asset:mob ID set value 205
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 1b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"スカルソルジャー"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stone_axe",Count:1b}
# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1076876798,-181975559,-1455522315,1508980085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MGYyYjFhNjgxMzY2NDU2YmY5ODkyZDFjMGY0NzMzOTliOTZiYTkwYmNhYjY4ZTc3YjY4NDg0NjllYjU3In19fQ=="}]}}}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
# 攻撃力 (double) (オプション) 数値が異常なのは石の斧を持ったときを基準としているため
    data modify storage asset:mob AttackDamage set value -4.0d
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0.0d
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
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon