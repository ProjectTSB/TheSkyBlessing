#> asset:mob/0311.blazing_inferno/tick/intro/title
#
# タイトルででっかく名前を出す
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# タイトル
    title @a[distance=..60] title {"text":""}
    title @a[distance=..60] subtitle {"text":"\uE015","font":"screen_effect"}
    title @a[distance=..64] times 5 30 5

# サウンド
    execute at @a[distance=..60] run playsound minecraft:item.trident.return hostile @p ~ ~ ~ 3 0.6
    execute at @a[distance=..60] run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 3 1.5

# パーティクル
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal