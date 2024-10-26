#> core:handler/flying_elytra
#
# エリトラ飛行中に実行
#
# @within function core:tick/player/

# predicate 用にタグ管理
    tag @s add FlyingElytra

# リセット
    scoreboard players reset @s Elytra
