#> asset:artifact/0905.book_of_metastasis/trigger/5.bullet
#
#
#
# @within function asset:artifact/0905.book_of_metastasis/trigger/4.schedule
#> Private
# @private
    #declare score_holder $isBanTPArea
    #declare tag P5.Landing

# 着弾検知
    execute unless entity @s[tag=P5.Landing] unless block ^ ^ ^0.5 #lib:no_collision run tag @s add P5.Landing

# 演出
    particle minecraft:scrape ~ ~ ~ 0.1 0.1 0.1 0 1 force
    particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 4 force

# 進ませる
    tp @s[tag=!P5.Landing] ^ ^ ^0.5 ~ ~

# TPBANエリアにいった場合
    execute at @s store result score $isBanTPArea Temporary if predicate lib:is_ban_tp_area
    execute if score $isBanTPArea Temporary matches 1 at @s run particle smoke ~ ~ ~ 0 0 0 0.1 30
    execute if score $isBanTPArea Temporary matches 1 run kill @s
    scoreboard players reset $isBanTPArea Temporary