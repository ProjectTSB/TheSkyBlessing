#> asset:mob/0236.ksitigarbha/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0236.ksitigarbha/death/1.trigger

# 祟り
    execute at @a[tag=Killer] run function asset:mob/0236.ksitigarbha/death/2.1.curse

# 首落ちモデルに変更
    execute if entity @a[tag=Killer] as @e[tag=!7O.Ongaeshied,scores={MobID=276},sort=nearest,limit=1] run function asset:mob/0236.ksitigarbha/death/2.2.head_drop
