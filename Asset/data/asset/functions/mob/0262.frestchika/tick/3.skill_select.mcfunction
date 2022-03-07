#> asset:mob/0262.frestchika/tick/3.skill_select
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.tick
#> private
# @private
    #declare score_holder $Random

# スキルを選ぶたびにヒート値を上げる
    scoreboard players add @s 7A.Heat 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 3
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 7A.SkillThunder
    execute if score $Random Temporary matches 1 run tag @s add 7A.SkillMelee
    execute if score $Random Temporary matches 2 run tag @s add 7A.SkillMelee2
    execute if score $Random Temporary matches 3 run tag @s add 7A.SkillGun
    execute if score $Random Temporary matches 4 run tag @s add 7A.SkillLaser
# リセット
    scoreboard players reset $Random Temporary

# ヒート値が一定以上だった場合強制的にスキルをオーバーヒートにする
    execute if score @s 7A.Heat matches 5 run function asset:mob/0262.frestchika/tick/skill_tag_remove
    execute if score @s 7A.Heat matches 5 run tag @s add 7A.SkillThunder