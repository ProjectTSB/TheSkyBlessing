#> asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# プレイヤーをみる
    execute if score @s 4V.Tick matches 10 run function asset:mob/0175.queen_bee/tick/look_player

# 突進用モデルに変える
    execute if score @s 4V.Tick matches 10 run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20053}
# 一定時間後ずさり
    execute if score @s 4V.Tick matches 10..25 at @s rotated ~180 ~ run function asset:mob/0175.queen_bee/tick/skill_tackle/4.skill_tackle_tp_back
# またプレイヤーを見る
    execute if score @s 4V.Tick matches 25 at @s run function asset:mob/0175.queen_bee/tick/look_player
# 一定時間突進し続ける
    execute if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
    execute if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 攻撃判定の分タグを消す
    execute if score @s 4V.Tick matches 55 run tag @s remove 4V.SkillTackleDamageHit
# 突進中何回かプレイヤーを見る
    execute if score @s 4V.Tick matches 55 at @s run function asset:mob/0175.queen_bee/tick/look_player

# モデル戻す
    execute if score @s 4V.Tick matches 75 run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}

# teleportして少し待つ
    execute if score @s 4V.Tick matches 75 run tag @s remove 4V.SkillTackle
    execute if score @s 4V.Tick matches 75 run function asset:mob/0175.queen_bee/tick/teleport
    execute if score @s 4V.Tick matches 75 run scoreboard players set @s 4V.Tick -30
