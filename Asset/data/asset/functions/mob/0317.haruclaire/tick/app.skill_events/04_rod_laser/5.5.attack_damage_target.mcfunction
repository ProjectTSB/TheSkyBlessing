#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
#
# アニメーションのイベントハンドラ 杖モード・レーザー 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.4.attack_damage

# ターゲット取得
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 8T.Temp.AttackTarget