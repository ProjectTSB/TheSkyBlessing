#> asset:artifact/0796.log4shell/trigger/3.1.shell
#
# ビーム部
#
# @within function
#    asset:artifact/0796.log4shell/trigger/3.main
#    asset:artifact/0796.log4shell/trigger/3.1.shell


# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add M4.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add M4.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add M4.LandingTarget

# 演出
    particle dust 0.478 0.329 0.188 1 ~ ~ ~ 0 0 0 0 0

# 着弾
    execute if entity @s[tag=M4.Landing] run function asset:artifact/0796.log4shell/trigger/3.2.hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!M4.Landing,distance=..30] run function asset:artifact/0796.log4shell/trigger/3.1.shell