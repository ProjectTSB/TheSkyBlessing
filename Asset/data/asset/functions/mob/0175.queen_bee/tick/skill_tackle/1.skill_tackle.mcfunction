#> asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s 4V.Tick matches 10 run function asset:mob/0175.queen_bee/tick/look_player
# 突進用モデルに変える
    execute if score @s 4V.Tick matches 10 run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20053}
# 一定時間後ずさり
    execute if score @s 4V.Tick matches 10..24 at @s rotated ~180 0 run function asset:mob/0175.queen_bee/tick/skill_tackle/4.skill_tackle_tp_back

# 突進1回目
# プレイヤーを見る
    execute if score @s 4V.Tick matches 25 at @s run function asset:mob/0175.queen_bee/tick/look_player
# 一定時間突進し続ける.
    execute if score @s 4V.Tick matches 35..44 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
    execute if score @s 4V.Tick matches 35..44 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 35..70 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 攻撃判定のタグを消す
    execute if score @s 4V.Tick matches 45 run tag @s remove 4V.SkillTackleDamageHit

# 突進2回目
# プレイヤーを見る
    execute if score @s 4V.Tick matches 45 at @s run function asset:mob/0175.queen_bee/tick/look_player
# 突進の再開
    execute if score @s 4V.Tick matches 50..59 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 50..59 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
    execute if score @s 4V.Tick matches 50..59 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 50..59 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 攻撃判定のタグを消す
    execute if score @s 4V.Tick matches 59 run tag @s remove 4V.SkillTackleDamageHit

# 終了処理
# モデル戻す
    execute if score @s 4V.Tick matches 60.. run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
# teleportして少し待つ
    execute if score @s 4V.Tick matches 60.. run tag @s remove 4V.SkillTackle
    execute if score @s 4V.Tick matches 60.. run function asset:mob/0175.queen_bee/tick/teleport
    execute if score @s 4V.Tick matches 60.. run scoreboard players set @s 4V.Tick -30
