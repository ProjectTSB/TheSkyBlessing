#> debug:april/world/bonus_ui

# 付近にプレイヤーがいない場合、実行しない
    execute positioned 11 8 14 unless entity @a[distance=..16] run return 0

# パーティクル
    execute positioned 11 8.5 14 run function debug:april/world/particle

# UI表示トリガー有効
    execute positioned 11 8.5 14 as @a[distance=..1] unless score @s 02.Trigger matches 0.. run function debug:april/bonus/reset_bonus
    execute positioned 11 8.5 14 as @a[distance=1.1..5] if score @s 02.Trigger matches 0.. run scoreboard players reset @s 02.Trigger
