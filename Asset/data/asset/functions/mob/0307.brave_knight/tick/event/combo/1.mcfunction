#> asset:mob/0307.brave_knight/tick/event/combo/1
#
#
#
# @within function asset:mob/0307.brave_knight/tick/event/combo/main

# サウンド
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.5 1

# 向きロック
    tag @s add 0307.FacingLock

# 体の向き
    tp @s ~ ~ ~ ~-75 ~

# ポーズ
    data modify entity @s Pose.LeftArm set value [-45f,0f,-25f]
    data modify entity @s Pose.RightArm set value [225f,0f,90f]

# パーティクル
    execute facing entity @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] eyes rotated ~ 0 anchored eyes positioned ^ ^0.2 ^0.7 run function asset:mob/0307.brave_knight/tick/event/combo/particle

# ダメージを与える
    execute as @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] run function asset:mob/0307.brave_knight/tick/event/combo/damage
