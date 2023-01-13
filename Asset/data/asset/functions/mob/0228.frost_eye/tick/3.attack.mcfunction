#> asset:mob/0228.frost_eye/tick/3.attack
#
# プレイヤーを実行者としてダメージを与える
#
# @within function asset:mob/0228.frost_eye/tick/2.tick

# VFX
    particle snowflake ~ ~1.6 ~ 0.5 0.3 0.5 0 30 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 12f
# 自身が鈍足状態なら威力増加
    execute if entity @s[predicate=asset:mob/0228.frost_eye/slowness] run data modify storage lib: Argument.Damage set value 18f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって全身が霜に覆われ、凍死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=stray,tag=this,distance=..5,sort=nearest,limit=1] run function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset

# 攻撃CT設定
    scoreboard players set @e[type=stray,tag=this,distance=..5,sort=nearest,limit=1] 6C.AttackCT 20