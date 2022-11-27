#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/effects
#
# ダメージ処理
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# 演出
    playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.05 0.6 0

# ダメージ
    data modify storage lib: Argument.Damage set value 400f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正
    execute at @a[distance=..160] if score @s KA.UserID = @p UserID as @p run function lib:damage/modifier
# 実行
    execute as @e[type=#lib:living,tag=Enemy,tag=Target,distance=..7.5] run function lib:damage/
# リセット
    function lib:damage/reset

# プレイヤーに補正を掛ける
    data modify storage api: Argument.UUID set value [I;1,1,730,0]
    data modify storage api: Argument.Amount set value 0.3
    data modify storage api: Argument.Operation set value "multiply"
    execute as @a[tag=Target,distance=..7.5] run function api:player_modifier/attack/water/add

# 補正用のTagをつける
    tag @a[tag=Target,distance=..7.5] add KA.Buff

# Targetを消す
    tag @e[type=#lib:living,tag=Target,distance=..7.5] remove Target

# 補正用Tagがついたプレイヤーがいればループ開始
    execute if entity @a[tag=KA.Buff,distance=..7.5]