#> asset:mob/0090.decapitation/hurt/3.bone_drop
#
#
#
# @within function asset:mob/0090.decapitation/hurt/2.hurt

# 演出
    playsound entity.skeleton.death hostile @a ~ ~ ~
# 骨召喚
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}

# 自爆ダメージ
    data modify storage lib: Argument.Damage set value 20f
# 第一属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 耐性を無視する
    data modify storage lib: Argument.FixedDamage set value true
# 自爆する
    function lib:damage/
# リセット
    function lib:damage/reset