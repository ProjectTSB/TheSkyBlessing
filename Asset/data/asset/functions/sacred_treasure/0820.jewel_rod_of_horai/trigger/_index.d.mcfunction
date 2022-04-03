#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/_index.d
# @private

#> 攻撃発動時
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/**
    #declare score_holder $MS.TargetUUID
    #declare tag MS.AttackPosition

#> スケジュールループ時
# @within
#   function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack_effect
#   function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_*
    #declare tag MS.AttackTarget