#> asset:artifact/0911.reactive_armor_head/trigger/3.1.explosion
#
# 爆発で周囲にダメージを与える
#
# @within function asset:artifact/0911.reactive_armor_head/trigger/3.main

# mob敵へのダメージ
    data modify storage lib: Argument.Damage set value 500f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,distance=..3] run function lib:damage/
    function lib:damage/reset

# プレイヤーへのダメージ
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはリアクティブアーマーの爆発に巻き込まれた。","with":[{"selector":"@s"}]}]']
    function lib:damage/modifier
    execute as @a[tag=!this,distance=..3] run function lib:damage/
    function lib:damage/reset

# パーティクル
    particle explosion ~ ~ ~ 1 1 1 0 10

# 音
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.75 1