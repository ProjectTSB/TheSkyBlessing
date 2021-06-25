#> asset:sacred_treasure/0610.call_fish/3.2.attack
#
#
#
# @within function asset:sacred_treasure/0610.call_fish/3.1.tick

# 自分にタグ付与
    tag @s add 9Q.This

# 敵の元へテレポート
    tp @s @e[tag=Enemy,sort=nearest,limit=1]

#演出
    execute at @e[tag=Enemy,sort=nearest,limit=1] run particle minecraft:block water ~ ~ ~ 0.3 0.3 0.3 10 100
    playsound entity.squid.death master @a ~ ~ ~ 1 2

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=cod,tag=9Q.This,limit=1] 9Q.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[tag=Enemy,sort=nearest,limit=1] run function lib:damage/

# リセット
    data remove storage lib: Argument
    tag @s remove 9Q.This
