#> asset:mob/0307.brave_knight/summon/init
#
#
#
# @within function asset:mob/0307.brave_knight/summon/2.summon

# 召喚者のIDを自身のオーナーIDとする
    scoreboard players operation @s 8J.OwnerID = @p[tag=this,distance=..10] UserID

# 演出
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10
    playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ 1 2
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 2

# 召喚時のライフタイムを設定
    scoreboard players set @s 8J.LifeTime 400