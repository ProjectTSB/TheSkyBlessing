#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/2.end
#
# アニメーションのイベントハンドラ 前半・連続斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Slash

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
