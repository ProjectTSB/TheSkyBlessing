#> asset:mob/0013.cluster_creeper/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0013.cluster_creeper/death/1.trigger

 # 死亡時クリーパー召喚
    execute positioned ~ ~ ~3 run summon creeper ~ ~ ~
    execute positioned ~-2.598 ~ ~-1.5 run summon creeper ~ ~ ~
    execute positioned ~2.598 ~ ~-1.5 run summon creeper ~ ~ ~
