#> asset:mob/0022.red_knight/tick/skills/flame_pillar/7.summoning
#
# 噴火
#
# @within function asset:mob/0022.red_knight/tick/skills/flame_pillar/1.tick


# 雷落とす用のマーカーを召喚
    summon marker ~ ~ ~ {Tags:["M.TargetMarker","M.TargetMarkerInit"]}
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute as @e[type=marker,tag=M.TargetMarkerInit,distance=..100,limit=1] at @r[distance=..100] run function lib:spread_entity/

# マーカーにパーティクル
    execute at @e[type=marker,tag=M.TargetMarkerInit] run particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# すでに置いたのを拡散しないようにタグを奪う
    tag @e[type=marker,tag=M.TargetMarkerInit,distance=..100,limit=1] remove M.TargetMarkerInit

## 判定
#    # ダメージ設定
#    # 与えるダメージ
#        data modify storage lib: Argument.Damage set value 30.0f
#    # 第1属性
#        data modify storage lib: Argument.AttackType set value "Magic"
#    # 第2属性
#        data modify storage lib: Argument.ElementType set value "Fire"
#    # ダメージ
#        function lib:damage/modifier
#        execute positioned ~-0.7 ~-0.7 ~-0.7 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dy=5,dz=0.5] run function lib:damage/
## リセット
#    function lib:damage/reset