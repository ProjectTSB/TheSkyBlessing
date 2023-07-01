#> asset:mob/0311.blazing_inferno/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0311.blazing_inferno/summon/1.trigger

# 元となるMobを召喚する。見えないようにかなり下から召喚
    summon wither_skeleton ~ ~-100 ~ {NoAI:1b,Silent:1b,Tags:["8N.PlayerFacing","8N.RailMove","8N.Turn.Clockwise","MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0311.blazing_inferno"}
# ID (int)
    data modify storage asset:mob ID set value 311
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ブレイジング・インフェルノ","color":"#FF6F00","bold":false,"italic":false}'
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
    data modify storage asset:mob Health set value 200d
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
        data modify storage asset:mob Resist.Physical set value 1
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.5
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:blazing_inferno/summon

# 自身のモデルに待機モーションを再生させる
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neurtal/play

# 起点を召喚
    summon marker ~ ~2 ~ {Tags:["8N.Marker.SpawnPoint"],Rotation:[180.0f,0.0f]}

# Init処理して出てくる
    execute positioned ~ ~-100 ~ as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0311.blazing_inferno/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon