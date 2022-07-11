#> asset:mob/0174.burning_blaze/action/rush.hit
#
#
#
# @within function asset:mob/0174.burning_blaze/action/rush.tick

# ダメージ
    data modify storage lib: Argument set value {Damage:25,AttackType:Physical,AttackElement:Fire}
    function lib:damage/modifier
    execute as @a[tag=Hit] run function lib:damage/
    function lib:damage/reset

# スコア設定
    scoreboard players set @s 4U.NowAction 0
    scoreboard players set @s 4U.ActionTime 0
# NoAIもどす
    data modify entity @s NoAI set value false
# エフェクトけす
    effect clear @s invisibility

# 演出
    playsound block.anvil.land hostile @a ~ ~ ~ 2 0 0.5