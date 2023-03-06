#> asset:mob/0217.medousa_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0217.medousa_eye/death/1.trigger

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 0.7 1
    particle block green_terracotta ~ ~1.68 ~ 0.2 0.2 0.2 0 100

# 低確率で頭をドロップ
    execute if predicate lib:random_pass_per/5 run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'[{"text":"メデューサアイ","color":"#41854E"},{"text":"の目","color":"white"}]'},SkullOwner:{Id:[I;1725447404,-1135126882,-2079282470,1109833247],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3NWQ5YTdiZDkwYTAzZWJmNDZkMzA3MTUxMmUxYzhjNDQxOTkyNjA1NGVkYzg2YmQxNjg4ZmRhZDA1ZWQwMyJ9fX0="}]}}}}}