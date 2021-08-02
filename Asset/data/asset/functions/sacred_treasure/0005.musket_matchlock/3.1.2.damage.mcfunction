#> asset:sacred_treasure/0005.musket_matchlock/3.1.2.damage
#
# エンダーパール着弾地点にいるアーマースタンドを起点として、魔女化処理を行う
#
# @within function asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager

#> private
# @private
    #declare tag 5.BulletHit
    

# 命中判定用0-0-0-0-0移動
    tp 0-0-0-0-0 @s

# Damage計算(10*PortalCooldown)
    execute store result storage lib: Argument.Damage float 10 run data get entity @s PortalCooldown

# 属性セット
    data modify storage lib: Argument.AttackType set value "Physical"

# MatchlockIndicatorの背後かつ、MatchlockIndicatorの視線の直線上にいる敵にダメージ
    execute as @e[type=#lib:living,distance=..9.5] positioned ^ ^ ^1000 unless entity @s[distance=..1000] positioned as @s positioned ^ ^ ^1000 facing entity 0-0-0-0-0 feet positioned ^ ^ ^1000 positioned ~-0.1 ~-0.1 ~-0.1 if entity @s[dx=0.2,dy=0.2,dz=0.2] run tag @s add 5.BulletHit
    execute as @e[type=#lib:living,tag=5.BulletHit,distance=..9.5,sort=furthest,limit=1] run function lib:damage/
    tag @e[type=#lib:living,tag=5.BulletHit,distance=..9.5] remove 5.BulletHit

# Indicator削除
    kill @s

# 0-0-0-0-0返却
    tp 0-0-0-0-0 0.0 0.0 0.0