#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.4.fairy_shoot
#
# ショット発射！
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.3.fairy_main

# ショット役召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ChuzFairyShotInit"]}

# scheduleループ開始
    function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.1.shot_tick