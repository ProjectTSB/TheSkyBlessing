#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.1.summon_ice_pillar_aec
#
# アニメーションのイベントハンドラ 杖モード・つらら 攻撃地点を設置
#
# @within asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/4.summon_ice_pillar

# 召喚
    summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:90,Tags:["Object","8T.SkillEv.Rod.IcePillar.AttackPos"]}
# 演出
    particle enchanted_hit ~ ~1 ~ 0.1 2 0.1 0.1 30
