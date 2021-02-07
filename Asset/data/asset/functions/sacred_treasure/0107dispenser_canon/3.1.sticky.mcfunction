#> asset:sacred_treasure/0107dispenser_canon/3.1.sticky
#
# 神器のメイン処理部
#
# @within
#   function asset:sacred_treasure/0107dispenser_canon/3.main
#   function asset:sacred_treasure/0107dispenser_canon/3.1.sticky

# 粘着する
    execute as @e[tag=TNTStick] at @s run tp @e[type=#lib:living,type=!minecraft:player,tag=!TNTStick,distance=..2,sort=nearest,limit=1]

# ループさせる
    execute as @e[tag=TNTStick,limit=1] run schedule function asset:sacred_treasure/0107dispenser_canon/3.1.sticky 1t