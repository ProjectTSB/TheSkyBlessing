#> asset:mob/example.1/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/65534/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AntiVoid"],DeathLootTable:"asset:mob/death/example.1"}
