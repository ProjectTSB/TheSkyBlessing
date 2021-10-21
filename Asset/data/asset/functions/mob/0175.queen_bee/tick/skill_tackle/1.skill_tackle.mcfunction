#> asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# プレイヤーをみる
    execute if score @s 4V.Tick matches 10 run function asset:mob/0175.queen_bee/tick/look_player

# 一定時間突進し続ける
    execute if score @s 4V.Tick matches 15..20 run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 15..20 run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# タグを消す
    execute if score @s 4V.Tick matches 20 run tag @s remove 4V.SkillTackleDamageHit


# プレイヤーをみる
    execute if score @s 4V.Tick matches 30 run function asset:mob/0175.queen_bee/tick/look_player

# 一定時間突進し続ける
    execute if score @s 4V.Tick matches 35..40 run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 15..20 run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# タグを消す
    execute if score @s 4V.Tick matches 40 run tag @s remove 4V.SkillTackleDamageHit


# プレイヤーをみる
    execute if score @s 4V.Tick matches 50 run function asset:mob/0175.queen_bee/tick/look_player

# 一定時間突進し続ける
    execute if score @s 4V.Tick matches 55..60 run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 15..20 run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# タグを消す
    execute if score @s 4V.Tick matches 60 run tag @s remove 4V.SkillTackleDamageHit

# teleportして少し待つ
    execute if score @s 4V.Tick matches 65 run function asset:mob/0175.queen_bee/tick/teleport
    execute if score @s 4V.Tick matches 65 run scoreboard players set @s 4V.Tick -30