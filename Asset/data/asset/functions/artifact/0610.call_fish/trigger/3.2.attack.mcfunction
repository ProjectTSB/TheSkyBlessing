#> asset:artifact/0610.call_fish/trigger/3.2.attack
#
#
#
# @within function asset:artifact/0610.call_fish/trigger/3.1.tick

# 自分にタグ付与
    tag @s add GY.This

# 敵の元へテレポート
    tp @s @e[tag=Enemy,sort=nearest,limit=1]

#演出
    execute at @e[tag=Enemy,sort=nearest,limit=1] run particle minecraft:block water ~ ~ ~ 0.3 0.3 0.3 10 100
    playsound entity.squid.death neutral @a ~ ~ ~ 1 2

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 50.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=cod,tag=GY.This,limit=1] GY.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[tag=Enemy,sort=nearest,limit=1] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @s remove GY.This