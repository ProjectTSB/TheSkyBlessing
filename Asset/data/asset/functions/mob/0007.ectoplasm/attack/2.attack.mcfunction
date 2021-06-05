#> asset:mob/0007.ectoplasm/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0007.ectoplasm/attack/1.trigger

# マナが無いプレイヤーを殴った時
    # ダメージ設定
        data modify storage lib: Argument.Damage set value 7.5f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージを与える
        function lib:damage/modifier
        execute as @a[tag=Victim,scores={MP=..15}] run function lib:damage/
        data remove storage lib: Argument
    # 演出
        execute as @a[tag=Victim,scores={MP=..15}] at @s run playsound entity.puffer_fish.hurt player @a ~ ~ ~ 1 0
        execute as @a[tag=Victim,scores={MP=..15}] at @s run particle soul ~ ~1 ~ 0 0 0 0.1 10

# マナを吸い取る
    scoreboard players set $Fluctuation Lib -15
    execute as @a[tag=Victim] run function lib:mp/fluctuation