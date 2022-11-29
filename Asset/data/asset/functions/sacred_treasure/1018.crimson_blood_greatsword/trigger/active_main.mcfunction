#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main
#
# メイン攻撃。処理はブレイブソードのそれ。
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/3.main

# スコア持ってないなら0に
    execute unless entity @s[scores={SA.Combo=0..}] run scoreboard players set @s SA.Combo 0

# コンボの隙を設定
    scoreboard players set @s SA.Wait 13

# 攻撃
    execute if entity @s[scores={SA.Combo=0}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash1
    execute if entity @s[scores={SA.Combo=1}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash2
    execute if entity @s[scores={SA.Combo=2}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash3
    execute if entity @s[scores={SA.Combo=3}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash4
    execute if entity @s[scores={SA.Combo=4}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/slash5

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=SA.SlashEntityInit,distance=..0.5,sort=nearest,limit=1] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/init

# コンボカウント
    scoreboard players add @s SA.Combo 1
    execute unless entity @s[scores={SA.BloodCharge=201..}] run scoreboard players set @s[scores={SA.Combo=3..}] SA.Combo 0
    execute unless entity @s[scores={SA.BloodCharge=401..}] run scoreboard players set @s[scores={SA.Combo=5..}] SA.Combo 0

# スケジュール開始
    schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick 1t replace
    schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick 1t replace
