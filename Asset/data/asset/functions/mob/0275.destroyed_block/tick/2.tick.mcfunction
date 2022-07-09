#> asset:mob/0275.destroyed_block/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0275.destroyed_block/tick/1.trigger

# 残り時間減算
    scoreboard players remove @s 7N.RemainingTime 1

# パーティクルのモデルを変更する
    execute if score @s 7N.Timer matches 5 store result entity @s ArmorItems[3].tag.CustomModelData int .9999999 run data get entity @s ArmorItems[3].tag.CustomModelData 1

# タイマー加算
    scoreboard players add @s 7N.Timer 1
    execute if score @s 7N.Timer matches 6.. run scoreboard players set @s 7N.Timer 0

# ブロックがなかったり壊せないブロックだったら消える
    execute if block ~ ~ ~ #lib:air run kill @s
    execute if block ~ ~ ~ #lib:unbreakable run kill @s

# 残り時間がなくなったら終了
    execute if score @s 7N.RemainingTime matches 0 at @s run setblock ~ ~ ~ air destroy
    execute if score @s 7N.RemainingTime matches 0 at @s run kill @s
