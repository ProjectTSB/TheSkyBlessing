#> asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s 4V.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 突進用モデルに変える
    execute if score @s 4V.Tick matches 10 run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20053}
# 一定時間後ずさり
    execute if score @s 4V.Tick matches 10..24 at @s rotated ~180 0 run function asset:mob/0175.queen_bee/tick/skill_tackle/4.skill_tackle_tp_back

# 突進1回目
# プレイヤーを見る
    execute if score @s 4V.Tick matches 25 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 一定時間突進し続ける.
    execute if score @s 4V.Tick matches 25..40 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 25..40 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
    execute if score @s 4V.Tick matches 25..40 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 25..40 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 攻撃判定のタグを消す
    execute if score @s 4V.Tick matches 41 run tag @s remove 4V.SkillTackleDamageHit

# 突進2回目
# プレイヤーを見る
    execute if score @s 4V.Tick matches 41 at @s facing entity @p[gamemode=!spectator] eyes rotated ~180 ~ run function asset:mob/0175.queen_bee/tick/rotated
    execute if score @s 4V.Tick matches 41..58 at @s rotated ~10 ~ run function asset:mob/0175.queen_bee/tick/rotated
    execute if score @s 4V.Tick matches 58 at @s facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated
# 突進
    execute if score @s 4V.Tick matches 41..73 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 41..73 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 突進の加速
    execute if score @s 4V.Tick matches 58..73 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
    execute if entity @s[tag=!4V.SkillTackleDamageHit] if score @s 4V.Tick matches 58..73 at @s run function asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
# 攻撃判定のタグを消す
    execute if score @s 4V.Tick matches 73 run tag @s remove 4V.SkillTackleDamageHit

# 確率で突進二回目に戻す
    execute if score @s 4V.Tick matches 73 if predicate lib:random_pass_per/30 run scoreboard players set @s 4V.Tick 40

# 終了処理
# モデル戻す
    execute if score @s 4V.Tick matches 80.. run item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
# リセット処理
    execute if score @s 4V.Tick matches 80.. run tag @s remove 4V.SkillTackle
    execute if score @s 4V.Tick matches 80.. run scoreboard players set @s 4V.Tick -60

