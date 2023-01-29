#> asset:mob/0204_infernal_watcher/tick/event/start_frenzy
#
# テンション上がって加速する時の演出
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

item replace entity @s armor.head with minecraft:stick{CustomModelData:20208}
playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1.5 1.5
playsound ogg:mob.blaze.breathe4 hostile @a ~ ~ ~ 1.5 1.5
particle lava ~ ~1.5 ~ 0 0 0 0.2 5