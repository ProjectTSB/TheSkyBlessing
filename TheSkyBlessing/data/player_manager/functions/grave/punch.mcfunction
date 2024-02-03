#> player_manager:grave/punch
#
# 左クリック時の処理
#
# @within function player_manager:grave/tick


# サウンド
    playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.player.attack.knockback neutral @a ~ ~ ~ 1 2

# パーティクル



# データ削除
    execute on passengers run data remove entity @s interaction

# キル
    execute on passengers run kill @s
    kill @s