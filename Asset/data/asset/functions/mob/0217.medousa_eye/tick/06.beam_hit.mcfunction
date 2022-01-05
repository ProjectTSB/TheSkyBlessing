#> asset:mob/0217.medousa_eye/tick/06.beam_hit
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/05.mineralization_beam

# 自身の注視スコアリセット
    scoreboard players reset @s 61.LookingTime

# 石化時間スコア
    scoreboard players set @p[gamemode=!spectator,dx=0] 61.StoneTime 100

# 演出
    execute at @p[gamemode=!spectator,dx=0] run particle block stone ~ ~1.2 ~ 0.3 0.4 0.3 0 100 normal @a
    execute at @p[gamemode=!spectator,dx=0] run playsound entity.mooshroom.convert master @a ~ ~ ~ 1 0 0

# 石tag付与
    tag @p[gamemode=!spectator,dx=0] add 61.Stone

# attribute
    attribute @p[gamemode=!spectator,dx=0] generic.knockback_resistance modifier add 00000001-0000-0002-0000-00d900000000 "217.KnockbackResist" 30 add

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,dx=0] run function lib:damage/
# リセット
    data remove storage lib: Argument

# スケジュールループスタート
    schedule function asset:mob/0217.medousa_eye/tick/07.schedule_loop 1t replace