#> asset:mob/0120.convict/tick/2.summon/2.first_tick
#
#
#
# @within function asset:mob/0120.convict/tick/2.summon/1.summon

#> Private
# @private
    #declare score_holder $Count

# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0120.convict/tick/move/teleport

# 演出
    playsound ogg:block.sculk_sensor.sculk_clicking4 hostile @a ~ ~ ~ 1 0.6

# 頭を変える
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]

# いっぱいいる場合は数を制御する
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=skeleton,scores={MobID=90},distance=..50]
    # ノーマル以下なら6匹いたら2匹抹消
        execute if predicate api:global_vars/difficulty/max/normal if score $Count Temporary matches 6.. run tp @e[type=skeleton,scores={MobID=90},distance=..50,limit=2] ~ -999 ~
    # ハード以上なら4匹いたらそのまま斬撃へ移行
        execute if predicate api:global_vars/difficulty/min/hard if score $Count Temporary matches 4.. run function asset:mob/0120.convict/tick/2.summon/4.to_slash
    # リセット
        scoreboard players reset $Count