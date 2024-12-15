#> player_manager:arrow/init/
#
# 矢の初期化
#
# @within function core:tick/

# 処理用タグをつける
    tag @s add InitArrow
# 処理済みタグをつける
    tag @s add AlreadyInitArrow

# 撃ったプレイヤーのUUIDを取得する
    data modify storage player_manager:arrow TargetUUID set from entity @s Owner
# 撃ったプレイヤーと結びつける
    execute as @a at @s run function player_manager:arrow/init/search

# リセット
    tag @s remove InitArrow
    data remove storage player_manager:arrow TargetUUID
