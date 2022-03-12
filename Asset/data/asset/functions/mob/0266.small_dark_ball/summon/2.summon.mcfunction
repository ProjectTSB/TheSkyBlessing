#> asset:mob/0266.small_dark_ball/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0266.small_dark_ball/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit","7E.Init"]}
# ID (int)
    data modify storage asset:mob ID set value 266
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ダークファミリア","color":"#B638FF","italic":false}'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon