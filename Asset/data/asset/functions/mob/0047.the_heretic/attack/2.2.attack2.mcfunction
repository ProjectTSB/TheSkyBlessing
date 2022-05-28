#> asset:mob/0047.the_heretic/attack/2.2.attack2
#
# 二回目以降の攻撃
#
# @within function asset:mob/0047.the_heretic/attack/2.attack

# 演出
    execute as @p[tag=Victim] at @s run particle dragon_breath ~ ~ ~ 0 1 0 0 20
    execute as @p[tag=Victim] at @s run particle witch ~ ~ ~ 0 1 0 0 20
    playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:219}

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 17f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset
