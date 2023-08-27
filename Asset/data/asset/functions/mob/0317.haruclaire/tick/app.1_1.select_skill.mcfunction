#> asset:mob/0317.haruclaire/tick/app.1_1.select_skill
#
# 使用するスキルを決定する
#
# @within function asset:mob/0317.haruclaire/tick/2.tick

# デバッグ用強制再生
    tag @s add 8T.Skill.Sword.Laser
# デバッグ用初期位置移動
    tp @s -190 104.5 116

# 杖モード
    # execute unless entity @s[tag=8T.Weapon.HasSword] run function asset:mob/0317.haruclaire/tick/app.1_2.select_skill_rod

# 剣モード
    # execute if entity @s[tag=8T.Weapon.HasSword] run function asset:mob/0317.haruclaire/tick/app.1_3.select_skill_sword
