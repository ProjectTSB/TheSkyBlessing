#> asset:sacred_treasure/0609.lunar_flare/trigger/2.1.check_viewpoint
#
# 視点先みるやつ
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/2.check_condition

# 演出をかける
    execute anchored eyes positioned ^ ^ ^2.7 rotated ~ ~90 run function asset:sacred_treasure/0609.lunar_flare/trigger/particle.1

# 視点検知
    tag @p add Watcher
# 敵を狙っている時にのみ発動
    # この時点で相手にタグを付与する
        execute positioned ^ ^ ^20.1 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..20] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add GX.Target
        tag @e[type=#lib:living,tag=!Uninterferable,distance=30..] remove GX.Target
    # できてなかったらcanusedタグ消しちゃう
        execute unless entity @e[type=#lib:living,tag=GX.Target] run tag @s remove CanUsed
# 終了
    tag @p remove Watcher