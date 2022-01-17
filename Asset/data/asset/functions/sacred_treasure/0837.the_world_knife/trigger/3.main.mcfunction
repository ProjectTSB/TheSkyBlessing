#> asset:sacred_treasure/0837.the_world_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 1

# 弾を召喚
    summon armor_stand ~ ~-100 ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Pose:{Head:[10f,0f,0f]},Tags:["N9.First","N9.Knife","Projectile"],ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:20012}}]}
    execute anchored eyes positioned ^ ^ ^2 run tp @e[type=armor_stand,tag=N9.First] ~ ~-1 ~ facing ^ ^ ^10
    data modify entity @e[type=armor_stand,tag=N9.First,distance=..10,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]
# ユーザーID適応
    scoreboard players operation @e[type=armor_stand,tag=N9.First,distance=..10] N9.UserID = @s UserID
# タグを消す
    tag @e[type=armor_stand,tag=N9.First,distance=..10] remove N9.First

# 周囲のナイフのスコアを戻す
    scoreboard players set @e[type=armor_stand,tag=N9.Knife,tag=!N9.Start,distance=..40] N9.Time 0

# Scheduleループ
    schedule function asset:sacred_treasure/0837.the_world_knife/trigger/4.tick 1t replace