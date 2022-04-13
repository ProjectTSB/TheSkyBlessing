#> asset:sacred_treasure/0005.musket_matchlock/trigger/3.1.2.damage
#
# 着弾地点にいるmarkerを起点として、ダメージ処理を行う
#
# @within function asset:sacred_treasure/0005.musket_matchlock/trigger/3.1.entity_manager

#> private
# @private
    #declare tag 5.BulletHit
    #declare tag 5.HitPosition
    #declare tag 5.Owner
    #declare score_holder $5.OwnerId
    

# 命中判定用AEC召喚
    summon area_effect_cloud ~ ~-0.1875 ~ {Duration:1,Tags:["5.HitPosition"]}

# 使用者取得
    scoreboard players operation $5.OwnerId Temporary = @s 5.OwnerId
    execute as @a if score @s UserID = $5.OwnerId Temporary run tag @s add 5.Owner

# Damage計算(40*FlyingDuration)
    execute store result storage lib: Argument.Damage float 40 run scoreboard players get @s 5.FlyingDuration

# 属性セット
    data modify storage lib: Argument.AttackType set value "Physical"

# MatchlockIndicatorの前方かつ、MatchlockIndicatorの視線の直線上にいる敵にダメージ
    execute positioned ^ ^ ^2.5 as @e[type=#lib:living,distance=..5.5] positioned as @s anchored eyes positioned ^ ^ ^1000 facing entity @e[type=area_effect_cloud,tag=5.HitPosition] eyes positioned ^ ^ ^1000 positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0.5,dy=0.5,dz=0.5] run tag @s add 5.BulletHit
    execute as @e[type=#lib:living,tag=5.BulletHit,tag=!5.Owner,distance=..9.5,sort=nearest,limit=1] run function lib:damage/

# Indicator削除
    kill @s

# reset
    tag @a[tag=5.Owner] remove 5.Owner
    scoreboard players reset $5.OwnerId Temporary
    tag @e[type=#lib:living,tag=5.BulletHit,distance=..9.5] remove 5.BulletHit
    tp 0-0-0-0-0 0.0 0.0 0.0