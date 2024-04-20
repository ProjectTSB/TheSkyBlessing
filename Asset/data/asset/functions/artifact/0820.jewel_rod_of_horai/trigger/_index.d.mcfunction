#> asset:artifact/0820.jewel_rod_of_horai/trigger/_index.d
# @private

#> 発動とスケジュールループ両方で使用
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/**
    #declare tag MS.AttackPosition

#> 攻撃発動時
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/**
    #declare score_holder $MS.TargetUUID
    #declare tag MS.Init

#> スケジュールループ時
# @within
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.1.particle_*
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.5.attack
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.6.damage
    #declare tag MS.AttackTarget