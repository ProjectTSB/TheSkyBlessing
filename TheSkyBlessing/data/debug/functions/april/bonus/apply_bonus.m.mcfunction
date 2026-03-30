#> debug:april/bonus/apply_bonus.m

# スコア設定
    $scoreboard players set $02.Value Temporary $(Count)
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1

# チェック
    $execute if score $02.Value Temporary matches 1.. if score $(CountName) 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    $execute if score $02.Value Temporary matches ..-1 if score $(CountName) 02.SelectCount matches ..0 run tellraw @s [{"text":"下限を超えてステータスを下げることは出来ません","color":"red"}]

# 残BonusCount計算
    scoreboard players operation $April.BonusCount Global -= $02.Value Temporary
    # BonusCountが0未満になった場合、Valueを減らす
        execute if score $April.BonusCount Global matches ..-1 run scoreboard players operation $02.Value Temporary += $April.BonusCount Global
        execute if score $April.BonusCount Global matches ..-1 run scoreboard players set $April.BonusCount Global 0

# SelectCount計算
    $scoreboard players operation $(CountName) 02.SelectCount += $02.Value Temporary

# SelectCountが
    # 上限値を超えた場合
        $execute if score $02.Value Temporary matches 1.. if score $(CountName) 02.SelectCount matches 31.. store result score $02.Diff Temporary run scoreboard players get $(CountName) 02.SelectCount
        $execute if score $02.Value Temporary matches 1.. if score $(CountName) 02.SelectCount matches 31.. run scoreboard players remove $02.Diff Temporary 30
        $execute if score $02.Value Temporary matches 1.. if score $(CountName) 02.SelectCount matches 31.. run scoreboard players operation $April.BonusCount Global += $02.Diff Temporary
    # 下限値を超えた場合
        $execute if score $02.Value Temporary matches ..-1 if score $(CountName) 02.SelectCount matches ..-1 store result score $02.Diff Temporary run scoreboard players get $(CountName) 02.SelectCount
        $execute if score $02.Value Temporary matches ..-1 if score $(CountName) 02.SelectCount matches ..-1 run scoreboard players operation $April.BonusCount Global += $02.Diff Temporary

# ステータス計算
    # クランプ
        $execute if score $(CountName) 02.SelectCount matches 31.. run scoreboard players set $(CountName) 02.SelectCount 30
        $execute if score $(CountName) 02.SelectCount matches ..-1 run scoreboard players set $(CountName) 02.SelectCount 0
    $scoreboard players set $(BonusName) Global $(Multiply)
    $execute store result score $(CountName) 02.SelectBonusSum run scoreboard players operation $(BonusName) Global *= $(CountName) 02.SelectCount

# 終了
    scoreboard players reset $02.Value Temporary
