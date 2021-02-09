#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick
#
# ショット動かすやつ
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.main
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.4.fairy_shoot

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=295Fa.ShotInit] at @s run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.2.shot_init
    execute as @e[type=armor_stand,tag=295Fa.Shot] at @s run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.3.shot_main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=295Fa.Shot,limit=1] run schedule function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick 1t