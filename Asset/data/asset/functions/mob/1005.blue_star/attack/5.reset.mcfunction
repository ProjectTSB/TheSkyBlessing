#> asset:mob/1005.blue_star/attack/5.reset
#
#
#
# @within function asset:mob/1005.blue_star/attack/4.mp_inversion


# 0になった時
    playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1
    scoreboard players reset @s RX.Time
# 消す
    data modify storage api: Argument.UUID set value [I;1,2,1005,0]
    function api:modifier/mp_regen/remove
# リセット
    scoreboard players reset @s RX.Time