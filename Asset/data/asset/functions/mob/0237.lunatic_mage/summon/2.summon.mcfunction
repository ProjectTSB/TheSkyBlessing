#> asset:mob/0237.lunatic_mage/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0237.lunatic_mage/summon/1.trigger

# 元となるMobを召喚する
    summon husk ~ ~-100 ~ {DeathTime:19s,Silent:1b,Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall","AntiVoid"],DeathLootTable:"asset:mob/death/0237.lunatic_mage"}
# ID (int)
    data modify storage asset:mob ID set value 237
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ルナティックメイジ","color":"white"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        #data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:20187}}
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20189}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 73000
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -3
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.15
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

# 降ろす
    execute positioned ~ ~-100 ~ as @e[type=husk,tag=MobInit,distance=..0.01] run tp @s ~ ~100 ~

# スコアを与える
    execute as @e[type=husk,tag=MobInit,distance=..0.01] run scoreboard players set @s 6L.Tick -60

# 登場演出
    function asset:mob/0237.lunatic_mage/skill/teleport/vfx

# 召喚地点用Markerを召喚
    execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["Object","Uninterferable","6L.SpawnPoint"]}

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=husk,tag=MobInit,distance=..0.01] run function asset:mob/common/summon