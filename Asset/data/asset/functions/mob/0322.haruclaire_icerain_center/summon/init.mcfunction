#> asset:mob/0320.haruclaire_shot/summon/summon/init
#
# Mobの召喚時の処理
#
# @within function asset:mob/0322.haruclaire_icerain_center/summon/2.summon

# 生存時間設定
    scoreboard players set @s 8W.LiveTimer 300
    scoreboard players set @s 8W.AttackTimer 15
    scoreboard players set @s 8W.PlayerAttackTimer 30
