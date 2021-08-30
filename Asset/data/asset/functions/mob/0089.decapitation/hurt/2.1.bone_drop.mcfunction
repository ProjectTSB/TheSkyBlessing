#> asset:mob/0089.decapitation/hurt/2.1.bone_drop
#
# 骨を落とす
#
# @within function asset:mob/0089.decapitation/hurt/2.hurt

# 演出
    playsound entity.skeleton.death master @a ~ ~ ~
# 骨召喚
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}

# 自爆ダメージ
    data modify storage lib: Argument.Damage set value 12f
# 第一属性
    data modify storage lib: Argument.AttackType set value "Magic"
# 耐性を無視する
    data modify storage lib: Argument.BypassResist set value true
# 自爆する
    function lib:damage/
# リセット
    data remove storage lib: Argument