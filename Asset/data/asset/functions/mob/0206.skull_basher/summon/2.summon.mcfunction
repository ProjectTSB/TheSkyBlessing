#> asset:mob/0206.skull_basher/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0206.skull_basher/summon/1.trigger

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit","5Q.Melee"],DeathLootTable:"asset:mob/death/0206.skull_basher"}
# ID (int)
    data modify storage asset:mob ID set value 206
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 1b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"スカルバッシャー"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_axe",Count:1b}
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1076876798,-181975559,-1455522315,1508980085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MGYyYjFhNjgxMzY2NDU2YmY5ODkyZDFjMGY0NzMzOTliOTZiYTkwYmNhYjY4ZTc3YjY4NDg0NjllYjU3In19fQ=="}]}}}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:iron_chestplate",Count:1b}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:iron_leggings",Count:1b}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:iron_boots",Count:1b}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 280
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 3.0d

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon