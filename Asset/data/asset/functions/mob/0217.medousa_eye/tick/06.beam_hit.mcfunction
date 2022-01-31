#> asset:mob/0217.medousa_eye/tick/06.beam_hit
#
# 石化ビームの着弾判定
#
# @within function asset:mob/0217.medousa_eye/tick/05.mineralization_beam

# 石tag付与
    tag @s add 61.Stone

# 石化時間スコア
    scoreboard players set @s 61.StoneTime 100

# 演出
    particle block stone ~ ~1.2 ~ 0.3 0.4 0.3 0 100 normal @a
    playsound entity.mooshroom.convert hostile @a ~ ~ ~ 0.5 0 0

# attribute
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0002-0000-00d900000000 "217.KnockbackResist" 30 add

# ダメージ
    data modify storage lib: Argument.Damage set value 16f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# デスログ
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sにより石化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sと目を合わせてしまい、石像となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
# 補正
    execute as @e[type=zombie,tag=this,distance=..20,limit=1] run function lib:damage/modifier
# 実行
    execute if entity @s[gamemode=!creative,gamemode=!spectator] run function lib:damage/
# リセット
    data remove storage lib: Argument

# マナを吸収
    scoreboard players set $Fluctuation Lib -30
    function lib:mp/fluctuation

# スケジュールループスタート
    schedule function asset:mob/0217.medousa_eye/tick/07.schedule_loop 1t replace