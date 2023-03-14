#> asset:artifact/0383.i_scream_ice_cream/trigger/3.1.message
#
# 数秒遅れての処理
#
# @within function asset:artifact/0383.i_scream_ice_cream/trigger/3.main

# メッセージ
    tellraw @a {"text":"場が凍りついた...","color":"dark_purple"}
    execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.3 0