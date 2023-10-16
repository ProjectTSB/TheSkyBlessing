#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/2.1.end_hard
#
# アニメーションのイベントハンドラ 後半・回転斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.1.main_hard

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.SpinSlash

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# 紅葉舞に遷移
    tag @s add 93.Skill.Latter.Momiji
