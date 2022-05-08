#> asset:mob/0216.gray_guardian/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0216.gray_guardian/summon/1.trigger

# 元となるMobを召喚する
    summon iron_golem ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","60.Angel"],NoAI:1b,Silent:1b,PersistenceRequired:1b,DeathLootTable:"asset:mob/death/0216.gray_guardian"}
# ID (int)
    data modify storage asset:mob ID set value 216
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"灰の守護者","color":"dark_gray","underlined":true}'
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
    data modify storage asset:mob Health set value 65700
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
        data modify storage asset:mob Resist.Physical set value 0.8
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.5
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.5
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["60.ArmorStand","60.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20125}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20128}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20130}}]}
# 位置をあわせる
    execute as @e[type=iron_golem,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=60.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=60.ArmorStandThis,distance=..100] remove 60.ArmorStandThis

# スコアをセットする
    scoreboard players set @e[type=iron_golem,tag=MobInit,distance=..0.01] 60.Tick -100

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=iron_golem,tag=MobInit,distance=..0.01] run function asset:mob/common/summon