#> asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/hit
#
# 着弾したとき。単体ダメージ。
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/4.move

# オーナーのプレイヤーを特定
    execute at @a[distance=..60] if score @s R9.UserID = @p UserID run tag @p add R9.OwnerPlayer

# 範囲3にダメージ。実行者がヒットしたモブになる。
    execute as @e[tag=Enemy,tag=!Uninterferable,sort=nearest,limit=1] at @s run function asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/damage

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 2
    playsound minecraft:block.soul_sand.step neutral @a ~ ~ ~ 0.5 1.5

# オーナー情報削除
    tag @a[tag=R9.OwnerPlayer] remove R9.OwnerPlayer

# 弾を消す
    kill @s