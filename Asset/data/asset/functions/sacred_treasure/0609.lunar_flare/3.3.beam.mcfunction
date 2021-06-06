#> asset:sacred_treasure/0609.lunar_flare/3.3.beam
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/**


# ここから先は神器側の効果の処理を書く

# 進ませる
    execute as @e[tag=9P.Laser] at @s run tp @s ^ ^ ^1
    execute as @e[tag=9P.Laser] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force

# 攻撃する
    execute as @e[tag=9P.Laser] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:sacred_treasure/0609.lunar_flare/3.4.hit
    execute as @e[tag=9P.Laser,scores={9P.BulletTime=16}] at @s run function asset:sacred_treasure/0609.lunar_flare/3.4.hit

# スコアを与えて一定時間で殺す
    kill @e[tag=9P.Laser,scores={9P.BulletTime=16}]
    scoreboard players add @e[tag=9P.Laser] 9P.BulletTime 1