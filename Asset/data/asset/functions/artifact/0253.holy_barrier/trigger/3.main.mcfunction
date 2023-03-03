#> asset:artifact/0253.holy_barrier/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0253.holy_barrier/trigger/2.check_condition

#> prv
# @private
    #declare tag 71.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# 攻撃対象にタグ付け
    tag @e[type=#lib:living,tag=!Enemy.Boss,tag=!Uninterferable,predicate=asset:artifact/0253.holy_barrier/is_angry] add 71.Target

#音
    playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1 1 1
    playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 1.2 1

# particle
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^0.2 run function asset:artifact/0253.holy_barrier/trigger/3.1.particle_barrier
    execute at @e[type=#lib:living,tag=71.Target] run function asset:artifact/0253.holy_barrier/trigger/3.2.particle_reflect

# ダメージ
    execute as @e[type=#lib:living,tag=71.Target] run function asset:artifact/0253.holy_barrier/trigger/3.3.damage
