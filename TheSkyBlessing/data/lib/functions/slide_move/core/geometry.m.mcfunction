#> lib:slide_move/core/geometry.m
# @within function lib:slide_move/**

# ファンクションの実行位置＆向きに実行者を移動
    tp @s ~ ~ ~ ~ ~

# XYZ各軸のベクトル成分の位置のブロックを見て、合致しなければ軸方向の向きを反転
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ 0.0 0.0 positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^$(Speed) rotated as @s unless block ^ ^ ^$(Speed) $(ThroughBlock) facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    $execute at @s positioned ^ ^ ^$(Speed) rotated ~180 ~ unless block ^ ^ ^$(Speed) $(ThroughBlock) facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned 0.0 0.0 ~ positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^$(Speed) rotated as @s unless block ^ ^ ^$(Speed) $(ThroughBlock) facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 実行者の向きで前進
    $execute at @s run tp @s ^ ^ ^$(Speed)

# ファンクションの実行向きで前進＆元の向きに戻す
    $execute positioned as @s run tp @s ^ ^ ^$(Speed) ~ ~
