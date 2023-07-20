#> asset:mob/0321.mini_guardian/tick/event/start_attack
#
# 攻撃開始
#
# @within function asset:mob/0321.mini_guardian/tick/event/attack_mode

# サウンド
    playsound minecraft:entity.guardian.ambient_land hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 1.5 2

# パーティクル
    particle electric_spark ^ ^ ^-0.5 0 0 0 0.5 20