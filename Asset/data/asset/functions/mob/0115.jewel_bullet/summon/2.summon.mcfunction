#> asset:mob/0115.jewel_bullet/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0115.jewel_bullet/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 115
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"ジ","color":"aqua"},{"text":"ュ","color":"green"},{"text":"エ","color":"yellow"},{"text":"ル","color":"light_purple"},{"text":"ハ","color":"aqua"},{"text":"ン","color":"green"},{"text":"タ","color":"yellow"},{"text":"ー","color":"light_purple"}]'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon