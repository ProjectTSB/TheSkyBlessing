#> asset:mob/0077.golden_watermelon/tick/3.explosion_1
#
#
#
# @within function asset:mob/0077.golden_watermelon/tick/2.tick

# 演出
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1.6 1.7 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1.3 1 0
    particle dust 0.173 1 0.243 2 ~ ~1.6 ~ 0.8 0.8 0.8 0 30 normal @a
    particle explosion ~ ~1.6 ~ 1 1 1 0 10 normal @a

# 鈍化を付与
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..2.5] slowness 1 1 true

# 水属性ダメージ
    data modify storage lib: Argument.Damage set value 8.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの金色の爆発により消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発により生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset

# 自身に二段目爆発のためのスコアを付与
    scoreboard players set @s 25.Tick 20