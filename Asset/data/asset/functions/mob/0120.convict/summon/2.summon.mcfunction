#> asset:mob/0120.convict/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0120.convict/summon/1.trigger

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","3C.Angel"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/0120.convict"}
# ID (int)
    data modify storage asset:mob ID set value 120
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"断罪者"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
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
    data modify storage asset:mob Health set value 25000
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
        data modify storage asset:mob Resist.Physical set value 0.7
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.8
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.5
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.5

# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Invisible:1b,Tags:["3C.ArmorStand","3C.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,330f,0f],RightArm:[0f,34f,0f],LeftLeg:[0f,6f,4f],RightLeg:[22f,0f,360f],Head:[24f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20182}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20183}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2039326}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2039583}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2039583}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20184}}]}
# 位置をあわせる
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=3C.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=3C.ArmorStandThis,distance=..0.01] remove 3C.ArmorStandThis
# スコアをセットする
    scoreboard players set @e[type=wither_skeleton,tag=MobInit,distance=..0.01] 3C.Tick -30

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon