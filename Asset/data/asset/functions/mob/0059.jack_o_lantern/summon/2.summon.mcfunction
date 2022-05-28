#> asset:mob/0059.jack_o_lantern/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0059.jack_o_lantern/summon/1.trigger

# 元となるMobを召喚する
    summon husk ~ ~-100 ~ {DeathTime:19s,Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiVoid"],DeathLootTable:"asset:mob/death/0059.jack_o_lantern"}
# ID (int)
    data modify storage asset:mob ID set value 59
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ジャック・オ・ランタン","color":"#FFAA00"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:20016}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 5000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 3.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    #data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    #data modify storage asset:mob SpecialDefense set value 0
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.0
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.7
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.8

# 演出
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1.5 1.5
    particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 50

# 上に持ってくる
    execute positioned ~ ~-100 ~ run tp @e[type=husk,tag=MobInit,distance=..0.01] ~ ~100 ~

# プレイヤーをみる
    tp @e[type=husk,tag=MobInit,distance=..0.01] ~ ~ ~ facing entity @p

# スコアをセットする
    scoreboard players set @e[type=husk,tag=MobInit,distance=..0.01] 1N.Tick -30

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=husk,tag=MobInit,distance=..0.01] run function asset:mob/common/summon