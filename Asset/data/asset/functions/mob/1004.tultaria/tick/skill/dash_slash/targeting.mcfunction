#> asset:mob/1004.tultaria/tick/skill/dash_slash/targeting
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

#> Private
# @private
    #declare tag TargetPlayer

# 向き固定
   # tag @s add M.FacingLock

# 周囲のランダムなプレイヤーを対象に
    tag @r[distance=..80,limit=1] add TargetPlayer

# プレイヤーの周囲に大雑把にマーカー設置
    # 残ってたらヤなのでマーカーを消す
        kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]
    # 移動先を設置
        execute facing entity @p[tag=TargetPlayer] eyes positioned as @p[tag=TargetPlayer] run summon marker ^ ^ ^5.5 {Tags:[RW.TeleportMarker,RW.MarkerInit]}
    # 拡散設定
        #data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    # 最寄りのやつの場所で拡散させる
        #execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @p[tag=TargetPlayer] run function lib:spread_entity/

# プレイヤーのタグを外す
    tag @a[tag=TargetPlayer] remove TargetPlayer
