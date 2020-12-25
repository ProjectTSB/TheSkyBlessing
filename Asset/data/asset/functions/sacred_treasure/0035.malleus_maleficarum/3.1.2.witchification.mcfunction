#> asset:sacred_treasure/0035.malleus_maleficarum/3.1.2.witchification 
# 
# エンダーパール着弾地点にいるアーマースタンドを起点として、魔女化処理を行う
#
# @within function
#   asset:sacred_treasure/0035.malleus_maleficarum/3.main
#   asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit_manager

#> private
# @private 
    #declare tag MalleusMaleficarumSacrifice
    #declare tag MalleusMaleficarumIndicator
    #declare storage data asset:temp

#対象にタグ付け
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!player,tag=!MalleusMaleficarumIndicator,dx=1,dy=1,dz=1,sort=nearest,limit=1] run tag @s add MalleusMaleficarumSacrifice

#魔女化
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] run summon witch ~ ~ ~ {Fire:1200s}
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] at @s run tp @s ~ -100 ~

#indicator削除
    kill @s
