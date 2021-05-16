#> asset:sacred_treasure/0210.terra_blade/3.3.terra_shot_main
#
# テラブレードショットに"3.4.terra_shot_main2"を複数回実行させたいだけのfunction 負荷によってはボツにする予定
#
# @within function asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick

    execute at @s run function asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2
    execute at @s run function asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2
    execute at @s run function asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2
    execute at @s run function asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2

# スコア加算、一定以上で消滅
    scoreboard players add @s 210.Tick 1
    kill @s[scores={210.Tick=100..}]