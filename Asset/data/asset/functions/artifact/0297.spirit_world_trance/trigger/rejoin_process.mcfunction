#> asset:artifact/0297.spirit_world_trance/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# リログ処理 LAN公開だとゲームモード戻るのでいっそのこと終了処理に飛ばす
    execute if entity @s[tag=89.Player,scores={89.TickCount=0..}] run function asset:artifact/0297.spirit_world_trance/trigger/3.2.reset