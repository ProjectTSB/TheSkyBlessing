#> asset:mob/0055.hetukedah/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0055.hetukedah/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall","AntiVoid"],DeathLootTable:"asset:mob/death/0055.hetukedah"}
# ID (int)
    data modify storage asset:mob ID set value 55
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ヘトゥケダゥ","color":"dark_red"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20013}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20014}}
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20015}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3100
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 10
# 移動速度、ハードかどうかによってちょっと変わる
    execute unless predicate api:global_vars/difficulty/min/hard run data modify storage asset:mob Speed set value 0.2
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage asset:mob Speed set value 0.25
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1.0
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.8
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0

# スコアをセットする
    scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] 1J.Tick -60

# 最初は鈍足をつけておく
    effect give @e[type=zombie,tag=MobInit,distance=..0.01] slowness 4 10 true

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon