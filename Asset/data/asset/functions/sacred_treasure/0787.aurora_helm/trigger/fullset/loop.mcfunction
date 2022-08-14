#> asset:sacred_treasure/0787.aurora_helm/trigger/fullset/loop
#
# フルセット時のループ処理
#
# @within function
#   asset:sacred_treasure/0787.aurora_helm/trigger/fullset/equip
#   asset:sacred_treasure/0787.aurora_helm/trigger/fullset/main
#   asset:sacred_treasure/0787.aurora_helm/trigger/rejoin_process

# メイン処理
    execute as @a[tag=LT.Fullset] at @s run function asset:sacred_treasure/0787.aurora_helm/trigger/fullset/main