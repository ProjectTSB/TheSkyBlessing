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

# 水魔法ダメージ
    data modify storage lib: Argument.Damage set value 12f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    execute as @e[type=polar_bear,tag=this,scores={MobID=81},distance=..8,limit=1] run function lib:damage/modifier
    function lib:damage/
    data remove storage lib: Argument