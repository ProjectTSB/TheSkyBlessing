#> asset:mob/0327.eclael/tick/app.general/15.update_altitude
#
# 汎用処理 プレイヤーとy軸を合わせる
#
# @within asset:mob/0327.eclael/tick/**

# プレイヤー方面に移動
    execute at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^-1 rotated as @s if block ~ ~-0.1 ~ #lib:no_collision run function asset:mob/0327.eclael/tick/app.general/2.teleport
