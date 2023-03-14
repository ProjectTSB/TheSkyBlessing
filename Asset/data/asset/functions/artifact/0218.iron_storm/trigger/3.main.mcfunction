#> asset:artifact/0218.iron_storm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0218.iron_storm/trigger/2.check_condition

#> private
#
# @private
    #declare tag DA.Number1
    #declare tag DA.Number2
    #declare tag DA.Number3
    #declare tag DA.Number4
    #declare tag DA.Number5
    #declare tag DA.Number6
    #declare tag DA.Number7
    #declare tag DA.Number8
    #declare tag DA.Number9
    #declare tag IronStormInit


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# アイアンゴーレム召喚
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number1","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number2","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number3","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number4","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number5","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number6","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number7","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number8","DA.InAir","Friend"],OnGround:0b}
    summon iron_golem 0 0 0 {Tags:["IronStormInit","DA.Number9","DA.InAir","Friend"],OnGround:0b}

# アイアンゴーレムに使用者のID保存
    scoreboard players operation @e[type=iron_golem,tag=IronStormInit,distance=..1,x=0,y=0,z=0] DA.OwnerID = @s UserID

# アイアンゴーレム拡散
    execute rotated ~ 0 positioned ^ ^ ^40 run spreadplayers ~ ~ 0 15 false @e[type=iron_golem,tag=IronStormInit,distance=..1,x=0,y=0,z=0]

# 高高度へ移動
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number1,dx=40,dy=320,dz=40] at @s run tp @s ~ 320 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number2,dx=40,dy=320,dz=40] at @s run tp @s ~ 325 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number3,dx=40,dy=320,dz=40] at @s run tp @s ~ 330 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number4,dx=40,dy=320,dz=40] at @s run tp @s ~ 400 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number5,dx=40,dy=320,dz=40] at @s run tp @s ~ 405 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number6,dx=40,dy=320,dz=40] at @s run tp @s ~ 410 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number7,dx=40,dy=320,dz=40] at @s run tp @s ~ 480 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number8,dx=40,dy=320,dz=40] at @s run tp @s ~ 485 ~
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,tag=DA.Number9,dx=40,dy=320,dz=40] at @s run tp @s ~ 490 ~

# 初期化タグ削除
    execute rotated ~ 0 positioned ^ ^ ^40 positioned ~-20 0 ~-20 as @e[type=iron_golem,tag=IronStormInit,dx=40,dy=500,dz=40] run tag @s remove IronStormInit

# 音
    playsound minecraft:entity.iron_golem.death player @s ~ ~ ~ 1 0.75 1

# エンティティ管理スケジュール実行
    schedule function asset:artifact/0218.iron_storm/trigger/3.1.entity_manager 1t replace
