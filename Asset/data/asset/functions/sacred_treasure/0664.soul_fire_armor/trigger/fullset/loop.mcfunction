#> asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/loop
#
# スケジュールループするよ
#
# @within function
#   asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/
#   asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/main
#   asset:sacred_treasure/0664.soul_fire_armor/trigger/rejoin_process

# メイン処理
    execute as @a[tag=IG.Fullset] at @s run function asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/main
