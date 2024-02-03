#> player_manager:grave/intract
#
# 右クリック時の処理
#
# @within function player_manager:grave/tick

# サウンド
    playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1.5 0.8
    playsound minecraft:block.stone_button.click_on neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1 1

# パーティクル



# データ削除
    execute on passengers run data remove entity @s interaction