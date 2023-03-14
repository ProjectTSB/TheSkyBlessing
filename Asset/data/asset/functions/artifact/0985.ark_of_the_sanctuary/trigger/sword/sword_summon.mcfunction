#> asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword_summon
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill?

#> Private
# @private
    #declare tag RD.SwordInit

# 斬撃
    summon armor_stand ^ ^ ^-1 {Tags:["RD.Sword","RD.SwordInit","Object"],NoGravity:1b,Invisible:1b,Pose:{Head:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}

# ユーザーID適応
    scoreboard players operation @e[type=armor_stand,tag=RD.SwordInit] RD.SwordUserID = @s UserID

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# tpと向き調整
    tp @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] @s
    data modify entity @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]

# リセット
    tag @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] remove RD.SwordInit

# スケジュール開始
    schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/schedule 1t