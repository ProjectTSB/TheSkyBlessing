#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ レーザー攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.3.attack_laser_damage

# ターゲット取得
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 8T.Temp.AttackTarget