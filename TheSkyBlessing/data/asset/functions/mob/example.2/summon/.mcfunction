#> asset:mob/example.2/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/65533/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/example.2"}
