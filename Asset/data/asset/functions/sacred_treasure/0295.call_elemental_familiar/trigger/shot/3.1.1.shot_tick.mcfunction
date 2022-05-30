#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.1.shot_tick
#
# ショット動かすやつ
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.1.shot_tick
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Shot] at @s run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.3.shot_main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Shot,limit=1] run schedule function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.1.shot_tick 1t