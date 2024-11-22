#> asset_manager:teleporter/tick/vfx/star/
#
#
#
# @within function asset_manager:teleporter/tick/active

# 点滅の開始は確率
    execute unless score @s TeleporterStarBlinkTick matches 1.. if predicate lib:random_pass_per/3 if predicate lib:random_pass_per/50 run scoreboard players set @s TeleporterStarBlinkTick 1
# 点滅が開始したら毎 tick インクリメントする
    execute if score @s TeleporterStarBlinkTick matches 1.. run scoreboard players add @s TeleporterStarBlinkTick 1

# 2tick ごとに点滅をいい感じに行う
# ここで呼び出す先のマクロ function が同一の内容で 3 つに分かれているのは、
# マクロのキャッシュが 8 パターンまでしか行われないことに由来する
execute if score @s TeleporterStarBlinkTick matches 00 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.95}
execute if score @s TeleporterStarBlinkTick matches 02 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.90}
execute if score @s TeleporterStarBlinkTick matches 04 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.85}
execute if score @s TeleporterStarBlinkTick matches 06 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.80}
execute if score @s TeleporterStarBlinkTick matches 08 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.75}
execute if score @s TeleporterStarBlinkTick matches 10 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.70}
execute if score @s TeleporterStarBlinkTick matches 12 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.65}
execute if score @s TeleporterStarBlinkTick matches 14 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.60}
execute if score @s TeleporterStarBlinkTick matches 16 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.55}
execute if score @s TeleporterStarBlinkTick matches 18 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.50}
execute if score @s TeleporterStarBlinkTick matches 20 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.45}
execute if score @s TeleporterStarBlinkTick matches 22 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.40}
execute if score @s TeleporterStarBlinkTick matches 24 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.35}
execute if score @s TeleporterStarBlinkTick matches 26 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.30}
execute if score @s TeleporterStarBlinkTick matches 28 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.25}
execute if score @s TeleporterStarBlinkTick matches 30 run function asset_manager:teleporter/tick/vfx/star/blink/3.m {Percentage:0.20}
execute if score @s TeleporterStarBlinkTick matches 32 run function asset_manager:teleporter/tick/vfx/star/blink/3.m {Percentage:0.15}
execute if score @s TeleporterStarBlinkTick matches 34 run function asset_manager:teleporter/tick/vfx/star/blink/3.m {Percentage:0.10}
execute if score @s TeleporterStarBlinkTick matches 36 run function asset_manager:teleporter/tick/vfx/star/blink/3.m {Percentage:0.15}
execute if score @s TeleporterStarBlinkTick matches 38 run function asset_manager:teleporter/tick/vfx/star/blink/3.m {Percentage:0.20}
execute if score @s TeleporterStarBlinkTick matches 40 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.25}
execute if score @s TeleporterStarBlinkTick matches 42 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.30}
execute if score @s TeleporterStarBlinkTick matches 44 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.35}
execute if score @s TeleporterStarBlinkTick matches 46 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.40}
execute if score @s TeleporterStarBlinkTick matches 48 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.45}
execute if score @s TeleporterStarBlinkTick matches 50 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.50}
execute if score @s TeleporterStarBlinkTick matches 52 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.55}
execute if score @s TeleporterStarBlinkTick matches 54 run function asset_manager:teleporter/tick/vfx/star/blink/2.m {Percentage:0.60}
execute if score @s TeleporterStarBlinkTick matches 56 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.65}
execute if score @s TeleporterStarBlinkTick matches 58 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.70}
execute if score @s TeleporterStarBlinkTick matches 60 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.75}
execute if score @s TeleporterStarBlinkTick matches 62 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.80}
execute if score @s TeleporterStarBlinkTick matches 64 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.85}
execute if score @s TeleporterStarBlinkTick matches 66 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.90}
execute if score @s TeleporterStarBlinkTick matches 68 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:0.95}
execute if score @s TeleporterStarBlinkTick matches 70 run function asset_manager:teleporter/tick/vfx/star/blink/1.m {Percentage:1.00}
execute if score @s TeleporterStarBlinkTick matches 100 run scoreboard players reset @s TeleporterStarBlinkTick
