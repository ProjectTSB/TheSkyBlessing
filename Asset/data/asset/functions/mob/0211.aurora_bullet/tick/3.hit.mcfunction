#> asset:mob/0211.aurora_bullet/tick/3.hit
#
# ヒット時の内容
#
# @within function asset:mob/0211.aurora_bullet/tick/2.tick

# ダメージ
    data modify storage lib: Argument.Damage set value 25f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってオーロラに包まれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって空の塵となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# スコアを付与
    scoreboard players set @a[gamemode=!spectator,dx=0] 5U.DebuffTime 80

# 自害
    kill @s

# スケジュールループを開始
    schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace