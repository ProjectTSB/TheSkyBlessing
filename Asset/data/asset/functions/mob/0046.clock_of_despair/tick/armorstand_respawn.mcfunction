#> asset:mob/0046.clock_of_despair/tick/armorstand_respawn
#
# 実質リセット処理（こんなことすんな！！！！）
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# キル
    kill @e[type=armor_stand,tag=1A.ClockHand]
# 演出用の針を召喚する
    summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["1A.ClockHand","Object","Uninterferable"]}
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] run tp @s