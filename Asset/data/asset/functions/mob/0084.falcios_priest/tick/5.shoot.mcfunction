#> asset:mob/0084.falcios_priest/tick/5.shoot
#
# 発射スキル
#
# @within function asset:mob/0084.falcios_priest/tick/2.tick

#> Private
# @private
    #declare tag 2C.Already

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1.3 0

# 召喚
    data modify storage api: Argument.ID set value 85
    function api:mob/summon
    tp @e[type=marker,tag=!2C.Already,scores={MobID=85},distance=..0.01,limit=1] ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..50] eyes
    tag @e[type=marker,scores={MobID=85},distance=..0.01,limit=1] add 2C.Already