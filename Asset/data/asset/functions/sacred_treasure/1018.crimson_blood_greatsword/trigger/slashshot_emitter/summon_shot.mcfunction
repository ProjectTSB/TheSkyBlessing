#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot
#
# ショット召喚
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/2.main

# コイツを対象としてID移す処理とか行う
    tag @s add SA.IDCopyTarget

# ショット召喚
    summon marker ^ ^ ^ {Tags:["SA.SlashShot","SA.SlashShotInit"]}
    execute as @e[type=marker,tag=SA.SlashShotInit,sort=nearest,limit=1] at @s run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/init
    schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick 1t replace

# ID移す処理はおしまい
    tag @s remove SA.IDCopyTarget

# 演出、発射者の邪魔にならないように、近すぎると見えない
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 20 normal @a[distance=2..]
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal @a[distance=2..]
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 0.8
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.7