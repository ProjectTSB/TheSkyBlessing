#> asset:mob/0304.crystal_bullet/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0304.crystal_bullet/summon/1.trigger

#> SpreadLib
    # @private
    #declare tag SpreadMarker

# 元となるMobを召喚する
    summon vex ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],Invulnerable:1b,NoAI:1b}
# ID (int)
    data modify storage asset:mob ID set value 304
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    # data modify storage asset:mob Name set value
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20285}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    # data modify storage asset:mob Health set value
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
        # data modify storage asset:mob Resist.Physical set value
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value

# ユーザーID適応
    scoreboard players operation @e[type=vex,tag=MobInit,distance=..0.01] 8G.UserID = @s UserID

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.6
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle
# 向き
    execute as @e[type=vex,tag=MobInit,distance=..0.01] run tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..30,sort=nearest,limit=1] feet
    execute as @e[type=vex,tag=MobInit,distance=..0.01] run tp ~ ~-10000 ~
# 前方拡散殺す
    kill @e[type=marker,tag=SpreadMarker,distance=..30]

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute positioned ~ ~-10000 ~ as @e[type=vex,tag=MobInit,distance=..0.01] run function asset:mob/common/summon