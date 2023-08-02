#> asset:mob/0317.haruclaire/tick/app.general/7.start_change_animation
#
# 武器持ち替えアニメーション再生
#
# @within function asset:mob/0317.haruclaire/hurt/app.1.change_weapon


# アニメーション再生停止
    function asset:mob/0317.haruclaire/tick/app.general/3.stop_all_animations

# 武器持ち替えアニメーション再生開始
    tag @s add 8T.Skill.Rod.ToSword
    tag @s add 8T.Weapon.HasSword
    scoreboard players set @s 8T.AnimationTimer 0
    scoreboard players set @s 8T.ActionCount 0
