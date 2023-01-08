#> asset:mob/0021.demon_eye/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0021.demon_eye/summon/1.trigger

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"asset:mob/death/0021.demon_eye",Tags:["MobInit","Enemy","AlwaysInvisible","AlwaysSlowFall"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["21.Rotater","AutoKillWhenDieVehicle","AssetMob"]}]}
# ID (int)
    data modify storage asset:mob ID set value 21
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"デーモンアイ","color":"white","italic":false}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {}
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2096771334,1747471520,-1307822589,862786690],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVhZDg5NDNhMDkyMWY4MWEwYWE5NWZlOWRlYTA5MTE3MjI4OGMyMjMwNzVjOGJlOTI5ZGVmMWVhNzdjNzQ1YyJ9fX0="}]}}}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 125
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    data modify storage asset:mob SpecialDefense set value 0

# この世界に存在できる時間
    scoreboard players set @e[type=zombie,tag=MobInit,distance=..0.01] L.LifeTime 800
# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=zombie,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

