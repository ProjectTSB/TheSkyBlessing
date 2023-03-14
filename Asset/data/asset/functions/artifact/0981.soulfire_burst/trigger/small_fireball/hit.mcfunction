#> asset:artifact/0981.soulfire_burst/trigger/small_fireball/hit
#
# 着弾したとき。単体ダメージ。
#
# @within function asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move

# オーナーのプレイヤーを特定
    execute at @a[distance=..100] if score @s R9.UserID = @p UserID run tag @p add R9.OwnerPlayer

# 単体にダメージ。実行者がヒットしたモブになる。
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4,sort=nearest,limit=1] at @s run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/damage

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 2
    playsound minecraft:block.soul_sand.step neutral @a ~ ~ ~ 0.5 1.5

# オーナー情報削除
    tag @a[tag=R9.OwnerPlayer] remove R9.OwnerPlayer

# 弾を消す
    kill @s