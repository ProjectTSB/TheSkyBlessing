#> asset:mob/0261.laser_eye_mk2/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0261.laser_eye_mk2/tick/1.trigger

# タグを持たないならホーミングじみた移動
    execute if entity @s[tag=!79.Ready] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.1 ~ ~

# タグを持っているならその場でプレイヤー追尾
    execute if entity @s[tag=79.Ready] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# プレイヤーが一定の距離にいたらスコアを付与
    execute if entity @p[gamemode=!spectator,distance=..8] unless score @s 79.Time matches -2147483648..2147483647 run scoreboard players set @s 79.Time 0

# スコアを持っているなら実行
    execute if score @s 79.Time matches 0.. run function asset:mob/0261.laser_eye_mk2/tick/3.ready