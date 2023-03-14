#> asset:artifact/0976.brave_sword/trigger/slash_shot/1.tick
#
#
#
# @within function
#   asset:artifact/0976.brave_sword/trigger/combo/slash3
#   asset:artifact/0976.brave_sword/trigger/slash_shot/1.tick
#   asset:artifact/0976.brave_sword/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=R4.SlashShot] at @s run function asset:artifact/0976.brave_sword/trigger/slash_shot/2.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=R4.SlashShot] run schedule function asset:artifact/0976.brave_sword/trigger/slash_shot/1.tick 1t