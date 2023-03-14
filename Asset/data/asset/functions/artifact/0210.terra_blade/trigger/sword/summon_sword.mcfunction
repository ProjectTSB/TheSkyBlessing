#> asset:artifact/0210.terra_blade/trigger/sword/summon_sword
#
#
#
# @within function asset:artifact/0210.terra_blade/trigger/3.main

#> Private
# @private
    #declare tag 5U.Init

# 剣オブジェクトを召喚！
    summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,Pose:{Head:[0.1f,0.1f,0.1f]},Tags:["Object","Uninterferable","5U.Sword","5U.Init"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20185}}]}

# スコアを与える
# 召喚者を特定
    execute store result score @e[type=armor_stand,tag=5U.Init,distance=..5] 5U.Owner run scoreboard players get @s UserID
# ライフタイム設定
    scoreboard players set @e[type=armor_stand,tag=5U.Init,distance=..5] 5U.Life 20

# スケジュールループを開始
    schedule function asset:artifact/0210.terra_blade/trigger/sword/sword_schedule 1t replace