#> asset:sacred_treasure/0758.sina_tk/trigger/bullet/hit
#
#
#
# @within function asset:sacred_treasure/0758.sina_tk/trigger/bullet/main

# ダメージ
    data modify storage lib: Argument.Damage set value 60f
    data modify storage lib: Argument.AttackType set value "Physical"
# 補正
    execute at @a if score @s L2.UserID = @p UserID as @p run function lib:damage/modifier
# 実行
    execute as @e[type=#lib:living,tag=Target,distance=..3,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# Tag削除
    tag @e[type=#lib:living,tag=Target,distance=..3,limit=1] remove Target

# 消滅
    kill @s