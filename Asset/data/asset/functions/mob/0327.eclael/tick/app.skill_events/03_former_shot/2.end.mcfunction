#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/2.end
#
# アニメーションのイベントハンドラ 前半・射撃 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Shot

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# 一時タグ消去
    tag @s remove 93.Temp.MoveToRight
    tag @s remove 93.Temp.MoveToLeft