#> asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/schedule
#
#
#
# @within function
#       asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword_summon
#       asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/schedule
#       asset:artifact/0985.ark_of_the_sanctuary/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=RD.Sword] at @s run function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/sword

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=RD.Sword,limit=1] run schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/sword/schedule 1t