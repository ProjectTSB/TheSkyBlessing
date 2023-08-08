#> asset:artifact/0793.queen_bee_rocket/trigger/attack
#
# 弾が着弾した時
#
# @within function asset:artifact/0793.queen_bee_rocket/trigger/bee

# 自身にタグ付与
    tag @s add M1.This

# 周囲2mから最寄りの敵にタグを付与
    tag @e[type=#lib:living,type=!player,tag=!M1.Bee,distance=..2,sort=nearest,limit=1] add M1.Target

# 演出
    particle flash ~ ~ ~ 0 0 0 4 0 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle campfire_signal_smoke ~ ~ ~ 0 0 0 0.05 30 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 1 0.3
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 0 0.3
    playsound entity.blaze.burn player @a[distance=..50] ~ ~ ~ 1 1 0.3
    summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;16774912],FadeColors:[I;0,5526612]}]}}}}

# 攻撃を与える
    # 与えるダメージ = 26
        data modify storage lib: Argument.Damage set value 360f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=zombie,tag=M1.This,limit=1] M1.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[tag=M1.Target] run function lib:damage/
# リセット
    function lib:damage/reset

#自身を殺す
    kill @s