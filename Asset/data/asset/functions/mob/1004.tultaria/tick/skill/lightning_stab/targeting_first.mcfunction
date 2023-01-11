#> asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting_first
#
# 構えを省略したターゲッティング
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

#> Private
# @private
    #declare tag TargetPlayer

# 周囲のランダムなプレイヤーを対象に
    tag @r[distance=..80,limit=1] add TargetPlayer

# プレイヤーの周囲に大雑把にマーカー設置
    # 残ってたらヤなのでマーカーを消す
        kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]
    # 移動先を設置
        execute facing entity @p[tag=TargetPlayer] feet run summon marker ^ ^ ^20 {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# プレイヤーのタグを外す
    tag @a[tag=TargetPlayer] remove TargetPlayer
