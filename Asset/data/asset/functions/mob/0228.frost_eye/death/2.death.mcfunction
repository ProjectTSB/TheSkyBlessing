#> asset:mob/0228.frost_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0228.frost_eye/death/1.trigger

# 演出
    particle block ice ~ ~1.6 ~ 0.3 0.3 0.3 0 50 normal @a
    particle block snow_block ~ ~1.6 ~ 0.3 0.3 0.3 0 50 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 1.2 0

# 低確率で頭をドロップ
    execute if predicate lib:random_pass_per/5 run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'[{"text":"フロストアイ","color":"#C9FFF8"},{"text":"の目","color":"white"}]'},SkullOwner:{Id:[I;1725447404,-1135126882,-2079282470,1109833247],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDc5Y2Q1MDkxMjljNGY1NjllNWRiY2ViZTYxMjY4MjJjYmY0YjU0ZjEwYWEyOTY5ODU1OTk0MTdmYWJjMjJlMCJ9fX0="}]}}}}}