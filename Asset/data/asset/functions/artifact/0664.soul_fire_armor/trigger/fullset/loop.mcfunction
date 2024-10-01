#> asset:artifact/0664.soul_fire_armor/trigger/fullset/loop
#
# スケジュールループするよ
#
# @within function
#   asset:artifact/0664.soul_fire_armor/trigger/fullset/
#   asset:artifact/0664.soul_fire_armor/trigger/fullset/main
#   asset:artifact/0664.soul_fire_armor/trigger/rejoin_process

# メイン処理
    execute as @a[tag=IG.Fullset] at @s run function asset:artifact/0664.soul_fire_armor/trigger/fullset/main