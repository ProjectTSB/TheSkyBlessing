#> asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/2.1.end_mirror
#
# アニメーションのイベントハンドラ 後半・移動射撃 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/1.1.main_mirror

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.MoveShot

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# 一時タグ消去
    tag @s remove 93.Temp.MoveToLeft

# 宙船開始
    tag @s add 93.Skill.Latter.Momiji
