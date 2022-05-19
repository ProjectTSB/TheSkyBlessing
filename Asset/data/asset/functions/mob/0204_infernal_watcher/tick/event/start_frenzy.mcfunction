#> asset:mob/0204_infernal_watcher/tick/event/start_frenzy
#
# テンション上がって加速する時の演出
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

item replace entity @s armor.head with minecraft:player_head{SkullOwner:{Id:[I;1882716993,-488160021,-1347379436,-1968640127],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTJkNzk3NGYwNDA3ZTA3ZjE4NTk3YzQ5YTNkN2MwMmQwOGE2MzRkOTY0MzNmOGQ2MTQ0ZGQ2ZTgzMzc5NTg5NSJ9fX0="}]}}} 1
playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1.5 1.5
playsound ogg:mob.blaze.breathe4 hostile @a ~ ~ ~ 1.5 1.5
particle lava ~ ~1.68 ~ 0 0 0 0.2 5