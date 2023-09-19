#> asset:mob/1004.tultaria/tick/skill/mini/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/**

# 自身のモデルにモーションを再生させる
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/return_to_neutral/play

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# ミニ行動カウント増やす
    scoreboard players add @s RW.MiniSkillCount 1

# 行動カウントを満たしてなかったらスキルセレクト
    execute if score @s RW.MiniSkillCount matches ..4 run function asset:mob/1004.tultaria/tick/base_move/skill_select/mini
    execute if score @s RW.MiniSkillCount matches 5.. run function asset:mob/1004.tultaria/tick/base_move/skill_select/main