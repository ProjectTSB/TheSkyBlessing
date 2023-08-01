#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.4.5.attack_damage_target
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ レーザー攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.4.4.attack_damage

# ターゲット取得
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 8T.Temp.AttackTarget