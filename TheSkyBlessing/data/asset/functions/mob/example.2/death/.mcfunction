#> asset:mob/example.2/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/65533/death

# このモブの処理、example.1のDeathの前に実行される
    tellraw @a [{"text":"最期の俺サンダーを喰らえ"}]
    execute at @a[tag=Killer] run summon lightning_bolt

# example.1のhurtを実装
    function asset:mob/super.death
