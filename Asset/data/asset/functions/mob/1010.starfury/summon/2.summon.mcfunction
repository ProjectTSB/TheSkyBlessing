#> asset:mob/1010.starfury/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1010.starfury/summon/1.trigger
#> private
# @private
    #declare score_holder $Random

# 元となるMobを召喚する
    summon area_effect_cloud ~ ~ ~ {Tags:["MobInit","S2.Wait"],CustomNameVisible:0b,Particle:"block air",Duration:100}
# ID (int)
    data modify storage asset:mob ID set value 1010
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"スターフューリー","color":"white"}'

# ランダムにタグ付与る
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $3 Const
# デバッグのコマンド
    #scoreboard players set $Random Temporary 0
# スキル選択
    execute if score $Random Temporary matches 0 run tag @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] add S2.Fire
    execute if score $Random Temporary matches 1 run tag @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] add S2.Water
    execute if score $Random Temporary matches 2 run tag @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] add S2.Thunder
# リセット
    scoreboard players reset $Random Temporary


# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] run function asset:mob/common/summon