#> asset:mob/0327.eclael/tick/app.skill_events/28_latter_sorafune_start/2.end
#
# アニメーションのイベントハンドラ 後半・突き 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/28_latter_sorafune_start/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Sorafune.Start

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# 遷移
    tag @s add 93.Skill.Latter.Sorafune