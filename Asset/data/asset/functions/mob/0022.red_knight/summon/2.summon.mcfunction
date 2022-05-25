#> asset:mob/0022.red_knight/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0022.red_knight/summon/1.trigger
# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","M.Angel"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/0022.red_knight"}
# ID (int)
    data modify storage asset:mob ID set value 22
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"赤い騎士","color":"dark_red"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
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
    #data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    #data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    # data modify storage asset:mob Speed set value
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.9
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:1b,Tags:["M.ArmorStand","M.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,14f,0f],RightArm:[0f,346f,0f],LeftLeg:[10f,314f,0f],RightLeg:[22f,0f,342f],Head:[32f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:364}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-104173839,-119059828,-1176408581,-1181112487],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiNzIwZDFkODUzNjRhZThhNDZlZGFhNzQ5YTE1NGUyN2VhZWQ3YjE4N2U0MmMwZmU1ZGIwNmI3MGVlY2U5YiJ9fX0="}]}}}}]}
# 位置をあわせる
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=M.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=M.ArmorStandThis,distance=..0.01] remove M.ArmorStandThis
# スコアを設定する
    scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] M.Tick -15

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon