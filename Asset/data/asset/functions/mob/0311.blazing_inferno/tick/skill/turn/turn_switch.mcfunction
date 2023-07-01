#> asset:mob/0311.blazing_inferno/tick/skill/turn/turn_switch
#
# 方向転換
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/turn/tick

# サウンド
    playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 5 1
    playsound minecraft:block.iron_trapdoor.open hostile @a ~ ~ ~ 5 0.8

# タグ調整
    # 時計回り→反時計回り
        tag @s[tag=8N.Turn.Clockwise] add 8N.Turn.CounterClockwise
        tag @s[tag=8N.Turn.Clockwise] add 8N.Turn.Wait
        tag @s[tag=8N.Turn.Clockwise] remove 8N.Turn.Clockwise
    # 反時計回り→時計回り
        tag @s[tag=8N.Turn.CounterClockwise,tag=!8N.Turn.Wait] add 8N.Turn.Clockwise
        tag @s[tag=8N.Turn.CounterClockwise,tag=!8N.Turn.Wait] remove 8N.Turn.CounterClockwise
    # 待ちのタグ削除
        tag @s remove 8N.Turn.Wait