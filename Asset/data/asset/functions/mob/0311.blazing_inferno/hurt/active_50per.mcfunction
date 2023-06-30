#> asset:mob/0311.blazing_inferno/hurt/active_50per
#
# 本気出すときのイベント
#
# @within function asset:mob/0311.blazing_inferno/hurt/2.hurt


# ポーズリセット
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function asset:mob/0311.blazing_inferno/hurt/reset_animation

# パーティクル
    particle minecraft:flame ~ ~1 ~ 0 0 0 0.3 50
    particle minecraft:lava ~ ~1 ~ 0 0 0 0.3 20

# サウンド
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 2 2

# 全動作強制リセット
    function asset:mob/0311.blazing_inferno/tick/base_move/reset

# 行動カウントリセット
    scoreboard players reset @s 8N.MoveCount
