#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/6.start_damage_animation
#
# 汎用処理 怯みアニメーションを再生開始する
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/**

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Target

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# 怯みアニメーション再生開始
    tag @s add 93.Skill.Latter.Spear.Damage
    scoreboard players set @s 93.AnimationTimer 0

# 演出
    playsound entity.hoglin.step hostile @a ~ ~ ~ 1 0.5
    playsound entity.hoglin.step hostile @a ~ ~ ~ 1 0.5
    playsound item.axe.scrape hostile @a ~ ~ ~ 1 1.5

# 紐づけ終了
    tag @e[type=item_display,tag=93.ModelRoot.Target] remove 93.ModelRoot.Target
