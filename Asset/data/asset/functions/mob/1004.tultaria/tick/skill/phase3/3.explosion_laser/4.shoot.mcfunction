#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/4.shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick

# ゆっくり向き変更
    execute facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# モデルの向き
    execute as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 数Tickごとに実行するデカレーザー
    scoreboard players operation $ShotInterval Temporary %= $3 Const
    execute if score $ShotInterval Temporary matches 0 rotated ~ 0 positioned ^ ^1.3 ^1.5 rotated as @s run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser

# レーザー
    execute rotated ~ 0 positioned ^ ^1.3 ^1.5 rotated as @s run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/5.laser