#> asset:mob/0210.aurora_eye/tick/3.attack
#
# 攻撃
#
# @within function asset:mob/0210.aurora_eye/tick/2.tick

# VFX
    particle dust 0.000 0.545 1.000 1.5 ~ ~1.2 ~ 0.4 0.4 0.4 1 50 normal
    particle dust 0.000 1.000 0.886 1.5 ~ ~1.2 ~ 0.4 0.4 0.4 1 50 normal
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.5 2 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 40f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってオーロラに包まれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって空の塵となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] run function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    data remove storage lib: Argument

# MPに関するデバフを付与(MP回復量-75%、2秒毎にMPが減少する) 状態異常名は極光侵蝕状態とでもしておきましょう
    data modify storage api: Argument.UUID set value [I;1,2,210,0]
    data modify storage api: Argument.Amount set value -0.75
    data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    function api:player_modifier/mp_regen/add

# スコアを付与
    scoreboard players set @s 5U.DebuffTime 120

# スケジュールループを開始
    schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace

# クールタイム設定
    scoreboard players set @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] 5U.AttackCT 20