#> asset:mob/0204_infernal_watcher/tick/event/end_frenzy
#
# つかれちゃった時の演出
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

item replace entity @s armor.head with minecraft:player_head{SkullOwner:{Id:[I;400125645,284049409,-1692287178,1561999834],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBhYzkwNzcxNzM5MzU4MDVhMzc5OTAzYmQ1OGQxMjc0NGViNDQyNjcwYmE5ZTAwNDMzMTI4ZDFjZDUyNjA5ZSJ9fX0="}]}}}
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1.5 1
playsound ogg:mob.blaze.breathe2 hostile @a ~ ~ ~ 1.5 1.5
particle large_smoke ~ ~1.68 ~ 0 0 0 0.05 5