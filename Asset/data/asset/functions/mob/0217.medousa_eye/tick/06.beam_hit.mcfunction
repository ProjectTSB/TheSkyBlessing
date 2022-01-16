#> asset:mob/0217.medousa_eye/tick/06.beam_hit
#
# 石化ビームの着弾判定
#
# @within function asset:mob/0217.medousa_eye/tick/05.mineralization_beam

#> Private
# @private
    #declare tag LandingTarget

# 着弾tagを付与
    tag @p[gamemode=!spectator,dx=0] add LandingTarget

# 石tag付与
    tag @p[gamemode=!spectator,dx=0] add 61.Stone

# 石化時間スコア
    scoreboard players set @p[tag=LandingTarget,dx=0] 61.StoneTime 100

# 演出
    execute at @p[tag=LandingTarget,dx=0] run particle block stone ~ ~1.2 ~ 0.3 0.4 0.3 0 100 normal @a
    execute at @p[tag=LandingTarget,dx=0] run playsound entity.mooshroom.convert hostile @a ~ ~ ~ 0.5 0 0

# attribute
    attribute @p[tag=LandingTarget,dx=0] generic.knockback_resistance modifier add 00000001-0000-0002-0000-00d900000000 "217.KnockbackResist" 30 add

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 16f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,tag=LandingTarget,dx=0] run function lib:damage/
# リセット
    data remove storage lib: Argument

# マナを吸収
    scoreboard players set $Fluctuation Lib -30
    execute as @p[tag=LandingTarget,dx=0] run function lib:mp/fluctuation

# 着弾タグ削除
    tag @a[tag=LandingTarget,dx=0] remove LandingTarget

# スケジュールループスタート
    schedule function asset:mob/0217.medousa_eye/tick/07.schedule_loop 1t replace