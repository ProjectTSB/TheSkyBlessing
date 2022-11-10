#> asset:mob/0007.ectoplasm/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0007.ectoplasm/attack/1.trigger
#> private
# @private
    #declare score_holder $EctoplasmMPCheck
    #declare tag EmptyMP

# プレイヤーのマナを検知する
    execute as @p[tag=Victim] store result score $EctoplasmMPCheck Temporary run function lib:mp/get
    execute if score $EctoplasmMPCheck Temporary matches ..15 run tag @p[tag=Victim] add EmptyMP

# マナが無いプレイヤーを殴った時
    # ダメージ設定
        data modify storage lib: Argument.Damage set value 7.5f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージを与える
        function lib:damage/modifier
        execute as @p[tag=EmptyMP] run function lib:damage/
        function lib:damage/reset
    # 演出
        execute as @p[tag=EmptyMP] at @s run playsound entity.puffer_fish.hurt hostile @a ~ ~ ~ 1 0
        execute as @p[tag=EmptyMP] at @s run particle soul ~ ~1 ~ 0 0 0 0.1 10

# マナを吸い取る
    scoreboard players set $Fluctuation Lib -15
    execute as @p[tag=Victim] run function lib:mp/fluctuation

# タグリセット
    tag @p[tag=EmptyMP] remove EmptyMP
    scoreboard players reset $EctoplasmMPCheck