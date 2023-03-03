#> asset:artifact/0035.malleus_maleficarum/trigger/3.1.2.witchification
#
# エンダーパール着弾地点にいるアーマースタンドを起点として、魔女化処理を行う
#
# @within function asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager

#> private
# @private
    #declare tag MalleusMaleficarumSacrifice

#対象にタグ付け
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!Enemy.Boss,tag=!MalleusMaleficarumIndicator,dx=1,dy=1,dz=1,sort=nearest,limit=1] run tag @s add MalleusMaleficarumSacrifice

#効果音
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] at @s run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1

#particle
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] at @s run particle landing_obsidian_tear ~ ~0.1 ~ 0.5 0 0.5 0 200 force

#魔女化
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] run summon witch ~ ~ ~ {Fire:1200s}
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] at @s run tp @s ~ -100 ~
    execute positioned ~-0.5 -100 ~-0.5 as @e[type=#lib:living,type=!player,tag=MalleusMaleficarumSacrifice,dx=1,dy=1,dz=1,sort=nearest,limit=1] run kill @s

#indicator削除
    kill @s