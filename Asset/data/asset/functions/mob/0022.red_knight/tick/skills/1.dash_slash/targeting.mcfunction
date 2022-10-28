#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/targeting
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick

# 向き固定
    tag @s add M.FacingLock

# プレイヤーの周囲に大雑把にマーカー設置
    # 残ってたらヤなのでマーカーを消す
        kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]
    # 移動先を設置
        execute at @p run summon marker ~ ~ ~ {Tags:[M.TeleportMarker,M.MarkerInit]}
    # 拡散設定
        data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    # 最寄りのやつの場所で拡散させる
        execute as @e[type=marker,tag=M.TeleportMarker,tag=M.MarkerInit] at @p run function lib:spread_entity/
