#> asset:mob/0149.giant_swinger/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0149.giant_swinger/attack/1.trigger

# 鎌を振るアニメーションを設定
    scoreboard players set @s 45.MobAtkMotTime 10

# SFX
    playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.5

# ダメージlib
    # 11-物理-雷
        data modify storage lib: Argument.Damage set value 11.0f
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正
        function lib:damage/modifier
    # 範囲5m以内の攻撃先を対象に
        execute as @a[tag=Victim,distance=..5] run function lib:damage/
    # リセット
        data remove storage lib: Argument