#> asset:mob/0211.aurora_bullet/tick/3.hit
#
# ヒット時の内容
#
# @within function asset:mob/0211.aurora_bullet/tick/2.tick

# ダメージ
    data modify storage lib: Argument.Damage set value 33f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"

# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってオーロラに包まれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって空の塵となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,dx=0] run function lib:damage/

# MP回復量減少デバフを付与
    # UUID
        data modify storage api: Argument.UUID set value [I;1,2,210,0]
    # 補正値
        data modify storage api: Argument.Amount set value -0.75
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    execute as @a[gamemode=!spectator,dx=0] run function api:player_modifier/mp_regen/add

# スコアを付与
    scoreboard players set @a[gamemode=!spectator,dx=0] 5U.DebuffTime 0
    scoreboard players set @p[gamemode=!spectator,dx=0] 5U.DebuffLimit 120

# スケジュールループを開始
    schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace