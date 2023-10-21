#> asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/2.end
#
# アニメーションのイベントハンドラ 後半・待機 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/**

# スキル判別用タグ消去
    tag @s remove 93.Skill.Latter.Move
    tag @s remove 93.Skill.Latter.Move.Back

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# 遷移
    function asset:mob/0327.eclael/tick/app.1_10.select_skill_latter_after_move
