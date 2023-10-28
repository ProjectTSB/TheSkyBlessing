#> asset:mob/0327.eclael/death/app.2.animation_main
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0327.eclael/death/app.1.animation_schedule_loop

# タイマー増加
    scoreboard players add @s 93.AnimationTimer 1

# 討伐アニメーション再生(100 tick)
    execute if score @s 93.AnimationTimer matches 1 run function animated_java:eclael/animations/pause_all
    execute if score @s 93.AnimationTimer matches 1 run function animated_java:eclael/animations/30_0_phase_death/play

# 移動
    execute if score @s 93.AnimationTimer matches 1..15 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 1..15 at @s positioned ^ ^-0.1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 54..85 at @s positioned ^ ^0.04 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    
# 効果音
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 15 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 86 run playsound item.trident.return hostile @a ~ ~ ~ 2 0.5
    execute if score @s 93.AnimationTimer matches 86 run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    execute if score @s 93.AnimationTimer matches 86 run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    execute if score @s 93.AnimationTimer matches 86..140 run playsound block.amethyst_block.chime hostile @a ~ ~ ~ 2 1

# 演出
    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~1.8 ~ run particle flash ~ ~ ~ 0.2 0.2 0.2 0 5
    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~1.8 ~ run particle firework ~ ~ ~ 0 0 0 0.5 20
    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~1.8 ~ run particle firework ~ ~ ~ 0 0 0 0.8 20
    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/0
    execute if score @s 93.AnimationTimer matches 87 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/1
    execute if score @s 93.AnimationTimer matches 88 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/2
    execute if score @s 93.AnimationTimer matches 89 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/3
    execute if score @s 93.AnimationTimer matches 90 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/4
    execute if score @s 93.AnimationTimer matches 91 positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/death/particle/5

    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/0
    execute if score @s 93.AnimationTimer matches 87 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/1
    execute if score @s 93.AnimationTimer matches 88 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/2
    execute if score @s 93.AnimationTimer matches 89 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/3
    execute if score @s 93.AnimationTimer matches 90 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/4
    execute if score @s 93.AnimationTimer matches 91 positioned ~ ~2.8 ~ run function asset:mob/0327.eclael/death/particle/5

    execute if score @s 93.AnimationTimer matches 86 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/0
    execute if score @s 93.AnimationTimer matches 87 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/1
    execute if score @s 93.AnimationTimer matches 88 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/2
    execute if score @s 93.AnimationTimer matches 89 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/3
    execute if score @s 93.AnimationTimer matches 90 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/4
    execute if score @s 93.AnimationTimer matches 91 positioned ~ ~3.8 ~ run function asset:mob/0327.eclael/death/particle/5

# ボスドロップを実装する場合，以下で実行
    # execute if score @s 93.AnimationTimer matches 86 positioned ~ ~1.8 ~ run ...

# 終了
    execute if score @s 93.AnimationTimer matches 141.. run function animated_java:eclael/remove/this
