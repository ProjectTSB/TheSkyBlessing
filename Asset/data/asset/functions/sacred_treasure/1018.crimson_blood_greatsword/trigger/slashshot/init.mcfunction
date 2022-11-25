#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/init
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot_emitter/summon_shot

# ID付与
    scoreboard players operation @s SA.UserID = @e[tag=SA.ShotEmitter,tag=SA.IDCopyTarget,sort=nearest,limit=1] SA.UserID

# 向きを揃える
    execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=SA.ShotEmitter,tag=SA.IDCopyTarget,sort=nearest,limit=1] Rotation[0]
    execute store result entity @s Rotation[1] float 1 run data get entity @e[tag=SA.ShotEmitter,tag=SA.IDCopyTarget,sort=nearest,limit=1] Rotation[1]

# タグ削除
    tag @s remove SA.SlashShotInit