#> asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/3.play_animation
#
# アニメーションのイベントハンドラ 剣モード・怯み アニメーション再生 移動
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/1.main

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# 再生
    execute if score $Random Temporary matches 0 as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/11_01_sword_damage_1/play
    execute if score $Random Temporary matches 1 as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/11_01_sword_damage_2/play
    execute if score $Random Temporary matches 2 as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/11_01_sword_damage_3/play

# リセット
    scoreboard players reset $Random Temporary