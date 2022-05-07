#> asset:mob/0139.blast_eye/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0139.blast_eye/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall"],Silent:1b,DeathLootTable:"asset:mob/death/0139.blast_eye"}
# ID (int)
    data modify storage asset:mob ID set value 139
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ブラストアイ","color":"dark_red"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    #頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{Enchantments:[{id:"blast_protection",lvl:11}],display:{Name:'{"text":"ブラストアイの頭","color":"yellow","italic":false}'},SkullOwner:{Id:[I;1,2,139,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNhMjQ0ZDIwMzYwYTVkOWMzNWUwZGViZjhhMjAwYzQ2OGE2YWE2M2U1OGQ2ZjAxNTA2ODRiNjhmYWI5OTE0NyJ9fX0="}]}}}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.0f,0.0015f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.22
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32.0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1.0
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Physical set value
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.5
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value

# 爆破時間ランダム化
    # 取得
        execute store result score $Random Temporary run function lib:random/
    # mod100で下2桁
        scoreboard players operation $Random Temporary %= $100 Const
    # 代入
        scoreboard players operation @e[type=zombie,tag=MobInit,distance=..0.01] 3v.Time = $Random Temporary
    # Tempリセット
        scoreboard players reset $Random Temporary

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon