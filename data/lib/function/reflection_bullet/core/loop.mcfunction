#> lib:reflection_bullet/core/loop
# @within function lib:reflection_bullet/**

# XYZ各軸向きへの反射コマンド
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-2 positioned 0.0 ~ ~ positioned ^ ^ ^1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.05 rotated as @s if block ^ ^ ^-0.05 #lib:no_collision/ facing entity @s feet positioned ^ ^ ^0.1 rotated as @s unless block ^ ^ ^0.05 #lib:no_collision/ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-2 positioned ~ 0.0 ~ positioned ^ ^ ^1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.05 rotated as @s if block ^ ^ ^-0.05 #lib:no_collision/ facing entity @s feet positioned ^ ^ ^0.1 rotated as @s unless block ^ ^ ^0.05 #lib:no_collision/ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-2 positioned ~ ~ 0.0 positioned ^ ^ ^1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.05 rotated as @s if block ^ ^ ^-0.05 #lib:no_collision/ facing entity @s feet positioned ^ ^ ^0.1 rotated as @s unless block ^ ^ ^0.05 #lib:no_collision/ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
# 0.1進む
    execute at @s run tp @s ^ ^ ^0.1 ~ ~
# 残りループ回数を1減らす
    scoreboard players remove $ReflectionBullet.Loop Temporary 1
# ループ回数が残っていれば再度ループ
    execute if score $ReflectionBullet.Loop Temporary matches 1.. run function lib:reflection_bullet/core/loop
