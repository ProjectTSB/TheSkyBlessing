#> player_manager:god/mercy/offering/set_next
#
#
#
# @within function
#   player_manager:god/mercy/offering/get
#   player_manager:god/mercy/mercy

#> Length
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Argument.Index
    #declare score_holder $Min
    #declare score_holder $Diff
    #declare score_holder $Count

# セッション開ける
    function lib:array/session/open
# 供物リスト
    data modify storage lib: Array set from storage player_manager:god TargetOfferingData.Items
# 候補リストの長さを取得
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
# ターゲットの名前をランダムに決める
    execute store result score $Argument.Index Lib run random value 0..65535
    scoreboard players operation $Argument.Index Lib %= $CandidatesLength Temporary
# 移動
    function lib:array/move
# 名前と必要アイテムを代入
    data modify storage player_manager:god TargetOfferingData.Next.Item set from storage lib: Array[-1].Item
    data modify storage player_manager:god TargetOfferingData.Next.Name set from storage lib: Array[-1].Name
# 個数の範囲を算出する
    execute store result score $Min Temporary run data get storage lib: Array[-1].Amount[0]
    execute store result score $Diff Temporary run data get storage lib: Array[-1].Amount[1]
    scoreboard players operation $Diff Temporary -= $Min Temporary
    scoreboard players add $Diff Temporary 1
# 個数をランダムに設定する
    execute store result score $Count Temporary run random value 0..65535
    scoreboard players operation $Count Temporary %= $Diff Temporary
    scoreboard players operation $Count Temporary += $Min Temporary
    execute store result storage player_manager:god TargetOfferingData.Next.Amount int 1 run scoreboard players get $Count Temporary
# セット
    execute if score @s InSubArea matches 1 run data modify storage player_manager:god OfferingData.Flora set from storage player_manager:god TargetOfferingData
    execute if score @s InSubArea matches 2 run data modify storage player_manager:god OfferingData.Nyaptov set from storage player_manager:god TargetOfferingData
    execute if score @s InSubArea matches 3 run data modify storage player_manager:god OfferingData.Rumor set from storage player_manager:god TargetOfferingData
    execute if score @s InSubArea matches 4 run data modify storage player_manager:god OfferingData.Urban set from storage player_manager:god TargetOfferingData
    execute if score @s InSubArea matches 5 run data modify storage player_manager:god OfferingData.Wi-ki set from storage player_manager:god TargetOfferingData
# リセット
    function lib:array/session/close
    scoreboard players reset $CandidatesLength Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $Diff Temporary
    scoreboard players reset $Min Temporary
