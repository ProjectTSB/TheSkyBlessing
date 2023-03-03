#> asset:artifact/0609.lunar_flare/trigger/projectile/beam
#
# ビーム部
#
# @within function asset:artifact/0609.lunar_flare/trigger/**


# ここから先は神器側の効果の処理を書く

# 進ませる
    execute as @e[tag=GX.Laser] at @s run tp @s ^ ^ ^1
    execute as @e[tag=GX.Laser] at @s run function asset:artifact/0609.lunar_flare/trigger/projectile/particle

# 攻撃する
    execute as @e[tag=GX.Laser] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0609.lunar_flare/trigger/projectile/hit
    execute as @e[tag=GX.Laser,scores={GX.BulletTime=16}] at @s run function asset:artifact/0609.lunar_flare/trigger/projectile/hit

# スコアを与えて一定時間で殺す
    kill @e[tag=GX.Laser,scores={GX.BulletTime=16}]
    scoreboard players add @e[tag=GX.Laser] GX.BulletTime 1