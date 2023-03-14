#> asset:artifact/0374.thunder_spell/trigger/3.1.line
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0374.thunder_spell/trigger/3.main
#   asset:artifact/0374.thunder_spell/trigger/3.1.line
# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5

# ダメージ
    execute if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..1,sort=nearest,limit=1] run function asset:artifact/0374.thunder_spell/trigger/3.2.damage

# 再起
    execute if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..1] unless entity @s[tag=AE.Check] positioned ^ ^ ^0.5 run function asset:artifact/0374.thunder_spell/trigger/3.1.line