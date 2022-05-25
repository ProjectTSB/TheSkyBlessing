#> asset:mob/0210.aurora_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0210.aurora_eye/death/1.trigger

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    particle dust_color_transition 0 0.235 1 1 0.000 1.000 0.886 ~ ~1.68 ~ 0.4 0.4 0.4 1 20 normal
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.68 ~ 0.4 0.4 0.4 1 20 normal

# 低確率で頭をドロップ
    execute if predicate lib:random_pass_per/3 run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'[{"text":"オ","color":"#00FFE2"},{"text":"ー","color":"#00E7E7"},{"text":"ロ","color":"#00D0ED"},{"text":"ラ","color":"#00B9F3"},{"text":"ア","color":"#00A2F9"},{"text":"イ","color":"#008BFF"},{"text":"の目","color":"white"}]'},SkullOwner:{Id:[I;1725447404,-1135126882,-2079282470,1109833247],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjlkMWYwYTJmNjFlMjc1ZTlhZTQ1YTY5MjQwM2I5ZGI5NDM2YjYwNjg1NDJhMTNkMDYzOGI0OWI1ZjY1NjliMyJ9fX0="}]}}}}}