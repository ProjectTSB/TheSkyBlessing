#> asset:mob/1018.hellflame_skull/summon/3.init
#
#
#
# @within function asset:mob/1018.hellflame_skull/summon/2.summon

# こっち向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# この世界に存在できる時間
    scoreboard players set @s SA.LifeTime 1000

# パーティクル
    particle explosion ~ ~1.68 ~ 0 0 0 0 1