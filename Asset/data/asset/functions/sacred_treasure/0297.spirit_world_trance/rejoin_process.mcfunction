#> asset:sacred_treasure/0297.spirit_world_trance/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:sacred_treasure/rejoin

# リログ処理 LAN公開だとゲームモード戻るのでいっそのこと終了処理に飛ばす
    execute if entity @s[tag=89.Player,scores={89.TickCount=0..}] run function asset:sacred_treasure/0297.spirit_world_trance/3.2.reset