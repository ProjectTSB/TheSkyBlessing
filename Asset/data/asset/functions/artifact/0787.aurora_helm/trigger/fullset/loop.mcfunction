#> asset:artifact/0787.aurora_helm/trigger/fullset/loop
#
# フルセット時のループ処理
#
# @within function
#   asset:artifact/0787.aurora_helm/trigger/fullset/equip
#   asset:artifact/0787.aurora_helm/trigger/fullset/main
#   asset:artifact/0787.aurora_helm/trigger/rejoin_process

# メイン処理
    execute as @a[tag=LT.Fullset] at @s run function asset:artifact/0787.aurora_helm/trigger/fullset/main