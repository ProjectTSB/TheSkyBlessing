#> asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/hit
#
# 着弾したとき。周囲に範囲攻撃。
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/4.move

# オーナーのプレイヤーを特定
    execute at @a[distance=..60] if score @s R9.UserID = @p UserID run tag @p add R9.OwnerPlayer

# 範囲3にダメージ。着弾地点から範囲3以内のモブが実行者になる。
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..3] at @s run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/damage

# 演出
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.ender_dragon.flap neutral @a ~ ~ ~ 2 0.8
    particle minecraft:explosion ~ ~ ~ 1 1 1 1 5
    particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 10

# オーナー情報削除
    tag @a[tag=R9.OwnerPlayer] remove R9.OwnerPlayer

# 弾を消す
    kill @s