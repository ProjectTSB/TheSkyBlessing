#> lib:score_to_health_wrapper/core/absorb_damage/foreach
# @within function
#   lib:score_to_health_wrapper/core/absorb_damage/
#   lib:score_to_health_wrapper/core/absorb_damage/foreach

#> Private
# @private
    #declare score_holder $Absorption
    #declare score_holder $isCompleteAbsorb

# データ取得
    data modify storage lib: HeadAbsorption set from storage lib: Absorptions[-1]
    data remove storage lib: Absorptions[-1]
# 緩衝体力を取得
    execute store result score $Absorption Temporary run data get storage lib: HeadAbsorption.Amount 100

# 緩衝体力とダメージの数字を比較する
    execute store result score $isCompleteAbsorb Temporary if score $BaseDamage Temporary < $Absorption Temporary
# ダメージよりも緩衝体力のほうが大きくない場合(同一も)、その分ダメージを軽減する
    execute if score $isCompleteAbsorb Temporary matches 0 run scoreboard players operation $BaseDamage Temporary -= $Absorption Temporary
    execute if score $isCompleteAbsorb Temporary matches 0 run function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m with storage lib: HeadAbsorption
# ダメージよりも緩衝体力のほうが大きい場合、ダメージを全て削除し、その分緩衝体力を減少させる
    execute if score $isCompleteAbsorb Temporary matches 1 run scoreboard players operation $Absorption Temporary -= $BaseDamage Temporary
    execute if score $isCompleteAbsorb Temporary matches 1 run scoreboard players set $BaseDamage Temporary 0
    execute if score $isCompleteAbsorb Temporary matches 1 run data modify storage lib: NewAbsorptions append from storage lib: HeadAbsorption
    execute if score $isCompleteAbsorb Temporary matches 1 store result storage lib: NewAbsorptions[-1].Amount double 0.01 run scoreboard players get $Absorption Temporary

# リセット
    data remove storage lib: HeadAbsorption
    scoreboard players reset $Absorption Temporary
    scoreboard players reset $isCompleteAbsorb Temporary

# ダメージを緩衝しきった場合、残っている緩衝体力を全て NewAbsorption に追加する
    execute if score $BaseDamage Temporary matches ..0 if data storage lib: Absorptions[0] run function lib:score_to_health_wrapper/core/absorb_damage/revert
# ダメージを緩衝しきれず、かつまだ緩衝体力がある場合、再帰的に緩衝する
    execute if score $BaseDamage Temporary matches 1.. if data storage lib: Absorptions[0] run function lib:score_to_health_wrapper/core/absorb_damage/foreach
