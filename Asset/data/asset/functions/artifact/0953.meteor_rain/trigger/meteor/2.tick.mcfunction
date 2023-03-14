#> asset:artifact/0953.meteor_rain/trigger/meteor/2.tick
#
# ループ実行部分
#
# @within function
#   asset:artifact/0953.meteor_rain/trigger/7.cast_meteor
#   asset:artifact/0953.meteor_rain/trigger/meteor/2.tick

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=QH.Meteor] at @s run function asset:artifact/0953.meteor_rain/trigger/meteor/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=QH.Meteor,limit=1] run schedule function asset:artifact/0953.meteor_rain/trigger/meteor/2.tick 1t