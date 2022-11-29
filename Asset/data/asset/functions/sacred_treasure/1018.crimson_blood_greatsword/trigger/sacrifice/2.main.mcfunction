#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/2.main
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick

#> 死亡時スコア
# @private
    #declare scoreboard DeathEvent

# ブラッドチャージを減らす
    scoreboard players remove @s SA.BloodCharge 1

# ブラッドチャージリセット
    execute if entity @s[scores={SA.BloodCharge=0}] run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 1
    scoreboard players reset @s[scores={SA.BloodCharge=0}] SA.BloodCharge

# 死んだらリセットされる
    scoreboard players reset @s[scores={DeathEvent=1..}] SA.BloodCharge

# パーティクル
    # レベル1
        execute if entity @s[scores={SA.BloodCharge=0..}] anchored eyes positioned ^ ^ ^ run particle dust 0.894 0.196 0.196 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 1
    # レベル2
        execute if entity @s[scores={SA.BloodCharge=201..}] anchored eyes positioned ^ ^ ^ run particle dust 0.522 0.035 0.035 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 1
    # レベル3
        execute if entity @s[scores={SA.BloodCharge=401..}] run particle flame ~ ~0.1 ~ 0.25 0.05 0.25 0.005 1