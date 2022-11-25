#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/2.main
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick

# オーナー特定
    execute at @a[distance=..100] if score @s SA.UserID = @p UserID run tag @p add SA.OwnerPlayer

# 移動 いっぱい書いて正確な移動に
    execute at @s run tp @s ^ ^ ^1
    execute at @s run tp @s ^ ^ ^1

# スコア加算
    scoreboard players add @s SA.Tick 1

# パーティクル
    function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/particle

# 壁で消滅
    execute unless block ~ ~1 ~ #lib:no_collision run kill @s

# ヒット判定
    #execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0976.brave_sword/trigger/slash_shot/3.hit

# 飛翔時間
    kill @s[scores={SA.Tick=10..}]

# リセット
    tag @p[tag=SA.OwnerPlayer] remove SA.OwnerPlayer