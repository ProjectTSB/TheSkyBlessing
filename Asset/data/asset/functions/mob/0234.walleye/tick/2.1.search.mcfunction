#> asset:mob/0234.walleye/tick/2.1.search
#
# @within
#   function asset:mob/0234.walleye/tick/2.tick

#> prv
# @private
    #declare score_holder $Gametime
    #declare score_holder $Locktime
    #declare tag 6i.TargetCandidate

execute store result score $Gametime Temporary run time query gametime 
execute store result score $Locktime Temporary run time query gametime 
scoreboard players add $Locktime Temporary 60

#攻撃範囲内にプレイヤーか友好mobがいる場合ロックオン終了予定時間をセットして向きを変える
execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockonTime matches -2147483648..2147483647 run tag @e[tag=Friend,dx=10,dy=20,dz=10] add 6i.TargetCandidate
execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockonTime matches -2147483648..2147483647 at @s run tp @s ~ ~ ~ facing entity @e[tag=Friend,tag=6i.TargetCandidate,distance=..25,sort=nearest,limit=1]
execute positioned ~-5 ~-20 ~-5 if entity @e[tag=Friend,dx=10,dy=20,dz=10] unless score @s 6i.LockonTime matches -2147483648..2147483647 store result score @s 6i.LockonTime run scoreboard players get $Locktime Temporary

#攻撃範囲内にプレイヤーか友好mobがいない場合ロックオン終了予定時間をリセット
execute positioned ~-5 ~-20 ~-5 unless entity @e[tag=Friend,dx=10,dy=20,dz=10] run scoreboard players reset @s 6i.LockonTime

#ロックオン終了予定時間に達した場合Phaseを1にして移動状態へ移行する
execute if score $Gametime Temporary >= @s 6i.LockonTime run say phasechange
execute if score $Gametime Temporary >= @s 6i.LockonTime run scoreboard players set @s 6i.Phase 1

#reset
tag @e[tag=Friend,tag=6i.TargetCandidate,distance=..25] remove 6i.TargetCandidate
scoreboard players reset $Gametime Temporary
scoreboard players reset $Locktime Temporary