#> asset:mob/0081.snow_cloud/tick/7.snow_damage
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/6.recursion

# 粉雪が積もる
    execute if entity @s[gamemode=survival] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air

# 音
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.3 1.5 0

# 重めのデバフ
    effect give @s slowness 4 2 true
    effect give @s mining_fatigue 4 2 true

# ダメージ
    data modify storage lib: Argument.Damage set value 17f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの降雪により凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雪に埋もれ、窒息した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=polar_bear,tag=this,scores={MobID=81},distance=..8,limit=1] run function lib:damage/modifier
# 実行
    function lib:damage/
# リセット
    function lib:damage/reset