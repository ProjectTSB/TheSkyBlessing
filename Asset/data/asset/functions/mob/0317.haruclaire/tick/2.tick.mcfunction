#> asset:mob/0317.haruclaire/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0317.haruclaire/tick/1.trigger

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=8T.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# タイマー増加
    scoreboard players add @s 8T.AnimationTimer 1

# スキル選択
    execute if score @s 8T.AnimationTimer matches 0 run function asset:mob/0317.haruclaire/tick/app.1_1.select_skill

# スキルのイベントハンドラ
    execute if score @s 8T.AnimationTimer matches 1.. run function asset:mob/0317.haruclaire/tick/app.2.skill_event
