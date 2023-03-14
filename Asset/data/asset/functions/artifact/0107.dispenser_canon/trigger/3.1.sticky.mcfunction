#> asset:artifact/0107.dispenser_canon/trigger/3.1.sticky
#
# 神器のメイン処理部
#
# @within
#   function asset:artifact/0107.dispenser_canon/trigger/3.main
#   function asset:artifact/0107.dispenser_canon/trigger/3.1.sticky

# 粘着する
    execute as @e[type=endermite,tag=TNTStick] at @s run tp @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!TNTStick,distance=..2,sort=nearest,limit=1]

# ループさせる
    execute as @e[type=endermite,tag=TNTStick,limit=1] run schedule function asset:artifact/0107.dispenser_canon/trigger/3.1.sticky 1t