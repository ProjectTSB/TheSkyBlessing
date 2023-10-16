#> asset:mob/0327.eclael/tick/app.general/6.cancel_damage_animation
#
# 汎用処理 怯みキャンセル
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# バク転アニメーション再生
    tag @s add 93.Skill.Latter.Damage.Move
    scoreboard players set @s 93.AnimationTimer 0

# 怯み終了
    tag @s remove 93.Temp.Damage
