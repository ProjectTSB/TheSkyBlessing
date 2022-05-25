#> asset:mob/example/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/example/death/1.trigger

tellraw @a [{"selector":"@a[tag=Killer]"},{"text":"ばいばい...."}]
execute at @a[tag=Killer] run summon lightning_bolt