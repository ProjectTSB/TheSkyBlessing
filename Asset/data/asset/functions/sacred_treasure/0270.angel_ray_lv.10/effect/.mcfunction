#> asset:sacred_treasure/0270.angel_ray_lv.10/effect/
#
#
#
# @within function asset:sacred_treasure/0270.angel_ray_lv.10/3.main

#> Target
# @private
#declare tag Target

# それぞれでmodifierを実行するのは面倒なので先に処理してしまう
    data modify storage lib: Argument.Damage set value 95.3d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    data modify storage lib: Argument.Heal set value 53.1d
    function lib:heal/modifier
# 対象探索
    function asset:sacred_treasure/0270.angel_ray_lv.10/effect/find_target
# 自身を対象から外す
    tag @s remove TargetCandidate
# 対象を8体に絞る
    tag @e[type=#lib:living,tag=TargetCandidate,distance=..13,sort=nearest,limit=8] add Target
# 処理
    execute as @e[type=#lib:living,tag=Target,tag=Enemy,distance=..13] run function lib:damage/
    execute as @e[type=#lib:living,tag=Target,tag=Friend,distance=..13] run function lib:heal/
    execute as @a[distance=..13] run function lib:heal/
# リセット
    tag @e[type=#lib:living,tag=TargetCandidate] remove TargetCandidate
    tag @e[type=#lib:living,tag=Target] remove Target
    data remove storage lib: Argument