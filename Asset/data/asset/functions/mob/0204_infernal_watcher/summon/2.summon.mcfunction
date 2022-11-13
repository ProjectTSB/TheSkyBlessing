#> asset:mob/0204_infernal_watcher/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0204_infernal_watcher/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~-100 ~ {NoAI:1b,Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall"],Silent:1b,DeathLootTable:"asset:mob/death/0204_infernal_watcher"}
# ID (int)
    data modify storage asset:mob ID set value 204
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ヘルズウォッチャー","color":"red","italic":false}'
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20207}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 800
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    data modify storage asset:mob SpecialDefense set value 0

# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.8f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# 降りてくる
    execute positioned ~ ~-100 ~ run tp @e[type=zombie,tag=MobInit,distance=..0.01] ~ ~100 ~

# こっち向く
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# この世界に存在できる時間
    scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] 5O.LifeTime 1000

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon