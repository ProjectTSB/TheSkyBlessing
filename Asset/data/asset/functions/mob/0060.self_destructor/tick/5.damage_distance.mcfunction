#> asset:mob/0060.self_destructor/tick/5.damage_distance
#
# ダメージによる距離減衰
#
# @within function asset:mob/0060.self_destructor/tick/4.self-desruct

#> Private
# @private
    #declare score_holder $DamageValue
    #declare score_holder $DamageAdd
    #declare score_holder $Difficulty

# 基本ダメージ量
    execute if entity @s[distance=..7.5] run scoreboard players set $DamageValue Temporary 4
    execute if entity @s[distance=..4] run scoreboard players set $DamageValue Temporary 10
    execute if entity @s[distance=..3] run scoreboard players set $DamageValue Temporary 16
    execute if entity @s[distance=..2] run scoreboard players set $DamageValue Temporary 20
    execute if entity @s[distance=..1] run scoreboard players set $DamageValue Temporary 24

# 難易度値を取得する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 難易度値に比例してダメージを増加させる
    execute store result score $DamageAdd Temporary run scoreboard players operation $Difficulty Temporary *= $4 Const
    execute store result storage lib: Argument.Damage int 1 run scoreboard players operation $DamageValue Temporary += $DamageAdd Temporary

# その他ダメージ設定
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの爆発に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの爆発により、微粒子になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..7.5,limit=1] run function lib:damage/modifier
    function lib:damage/
    function lib:damage/reset

# リセット
    scoreboard players reset $DamageValue Temporary
    scoreboard players reset $DamageAdd Temporary
    scoreboard players reset $Difficulty Temporary
