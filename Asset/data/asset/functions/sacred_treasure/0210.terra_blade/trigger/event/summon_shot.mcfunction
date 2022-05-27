#> asset:sacred_treasure/0210.terra_blade/trigger/event/summon_shot
#
#
#
# @within function
#   asset:sacred_treasure/0210.terra_blade/trigger/3.main
#   asset:sacred_treasure/0210.terra_blade/trigger/sword/sword

# サウンド
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 2 2

# ランダムな位置から発射
    function asset:sacred_treasure/0210.terra_blade/trigger/event/random_position

# テラショットにInitコマンド実行
    execute as @e[type=armor_stand,tag=ChuzTerraShotInit] at @s run function asset:sacred_treasure/0210.terra_blade/trigger/3.2.terra_shot_init

# ループスタート
    function asset:sacred_treasure/0210.terra_blade/trigger/3.1.terra_shot_tick