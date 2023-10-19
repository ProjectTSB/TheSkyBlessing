#> asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/6.start_damage_animation
#
# 汎用処理 怯みアニメーションを再生開始する
#
# @within function asset:mob/0327.eclael/hurt/2.hurt

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 93.Skill.Latter.Iai.Damage
    scoreboard players set @s 93.AnimationTimer 0

# タグ消去
    tag @s remove 93.Temp.NotArmor

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.6
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.5
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    particle flash ^ ^1 ^1 0 0 0 0 1 
