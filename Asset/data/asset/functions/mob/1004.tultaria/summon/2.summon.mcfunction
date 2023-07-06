#> asset:mob/1004.tultaria/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1004.tultaria/summon/1.trigger

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","RW.Boss","RW.Opening","RW.PlayerFacing"],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/1004.tultaria"}

# ID (int)
    data modify storage asset:mob ID set value 1004

# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"

# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true

# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"トゥルタリア","color":"#a33033"}'

# 体力 (double) (オプション)
    #data modify storage asset:mob Health set value 140000d

# デバッグ用体力
    data modify storage asset:mob Health set value 40000d

# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0

# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:tultaria/summon

# 自身のモデルに待機モーションを再生させる
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/apply_variant/no_wing
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["RW.Marker.SpawnPoint"]}

# 壁召喚（テスト処理）
    #execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] positioned ~-23 ~ ~-23 run place template asset:1004.wall

# スコアをセットする
    scoreboard players set @e[type=wither_skeleton,tag=MobInit,distance=..0.01] RW.Tick 0

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon