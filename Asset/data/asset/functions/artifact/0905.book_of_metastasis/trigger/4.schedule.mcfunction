#> asset:artifact/0905.book_of_metastasis/trigger/4.schedule
#
#
#
# @within function
#        asset:artifact/0905.book_of_metastasis/trigger/3.main
#        asset:artifact/0905.book_of_metastasis/trigger/4.schedule
#        asset:artifact/0905.book_of_metastasis/trigger/rejoin_process

# 火の玉が実行する処理
    execute as @e[type=area_effect_cloud,tag=P5.Bullet] at @s run function asset:artifact/0905.book_of_metastasis/trigger/5.bullet
    execute as @e[type=area_effect_cloud,tag=P5.Bullet] at @s run function asset:artifact/0905.book_of_metastasis/trigger/5.bullet

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=P5.Bullet,limit=1] run schedule function asset:artifact/0905.book_of_metastasis/trigger/4.schedule 1t replace