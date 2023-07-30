#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ
# レーザーと剣を組み合わせた攻撃を行う．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event



# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 250 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 277 run tag @s remove 8T.Temp.NotArmor
# 終了
    execute if score @s 8T.AnimationTimer matches 278.. run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/2.end
