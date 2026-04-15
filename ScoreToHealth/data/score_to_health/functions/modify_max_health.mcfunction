#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-17
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-16
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-15
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-14
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-13
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-12
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-11
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-10
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0F
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0E
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0D
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0C
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0B
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-0A
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-09
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-08
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-07
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-06
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-05
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-04
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-03
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-02
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-01
attribute @s minecraft:generic.max_health modifier remove bab7cdc2-fb6a-47f6-0002-00

execute store result score $_ ScoreToMaxHealth run attribute @s generic.max_health base get 10000

scoreboard players operation $__ ScoreToMaxHealth = $_ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-17 "ScoreToMaxHealth" -838.8607 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 8388607
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-17 "ScoreToMaxHealth" 838.8607 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 8388607
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-16 "ScoreToMaxHealth" -419.4304 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 4194304
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-16 "ScoreToMaxHealth" 419.4304 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 4194304
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-15 "ScoreToMaxHealth" -209.7152 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 2097152
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-15 "ScoreToMaxHealth" 209.7152 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 2097152
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-14 "ScoreToMaxHealth" -104.8576 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 1048576
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-14 "ScoreToMaxHealth" 104.8576 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 1048576
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-13 "ScoreToMaxHealth" -52.4288 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 524288
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-13 "ScoreToMaxHealth" 52.4288 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 524288
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-12 "ScoreToMaxHealth" -26.2144 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 262144
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-12 "ScoreToMaxHealth" 26.2144 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 262144
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-11 "ScoreToMaxHealth" -13.1072 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 131072
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-11 "ScoreToMaxHealth" 13.1072 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 131072
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-10 "ScoreToMaxHealth" -6.5536 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 65536
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-10 "ScoreToMaxHealth" 6.5536 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 65536
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0F "ScoreToMaxHealth" -3.2768 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 32768
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0F "ScoreToMaxHealth" 3.2768 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 32768
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0E "ScoreToMaxHealth" -1.6384 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 16384
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0E "ScoreToMaxHealth" 1.6384 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 16384
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0D "ScoreToMaxHealth" -0.8192 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 8192
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0D "ScoreToMaxHealth" 0.8192 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 8192
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0C "ScoreToMaxHealth" -0.4096 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 4096
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0C "ScoreToMaxHealth" 0.4096 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 4096
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0B "ScoreToMaxHealth" -0.2048 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 2048
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0B "ScoreToMaxHealth" 0.2048 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 2048
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0A "ScoreToMaxHealth" -0.1024 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 1024
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-0A "ScoreToMaxHealth" 0.1024 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 1024
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-09 "ScoreToMaxHealth" -0.0512 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0512
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-09 "ScoreToMaxHealth" 0.0512 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0512
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-08 "ScoreToMaxHealth" -0.0256 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0256
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-08 "ScoreToMaxHealth" 0.0256 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0256
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-07 "ScoreToMaxHealth" -0.0128 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0128
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-07 "ScoreToMaxHealth" 0.0128 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0128
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-06 "ScoreToMaxHealth" -0.0064 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0064
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-06 "ScoreToMaxHealth" 0.0064 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0064
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-05 "ScoreToMaxHealth" -0.0032 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0032
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-05 "ScoreToMaxHealth" 0.0032 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0032
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-04 "ScoreToMaxHealth" -0.0016 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0016
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-04 "ScoreToMaxHealth" 0.0016 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0016
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-03 "ScoreToMaxHealth" -0.0008 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0008
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-03 "ScoreToMaxHealth" 0.0008 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0008
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-02 "ScoreToMaxHealth" -0.0004 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0004
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-02 "ScoreToMaxHealth" 0.0004 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0004
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-01 "ScoreToMaxHealth" -0.0002 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0002
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-01 "ScoreToMaxHealth" 0.0002 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0002
scoreboard players operation $_ ScoreToMaxHealth = $__ ScoreToMaxHealth

execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-00 "ScoreToMaxHealth" -0.0001 add
execute if score @s ScoreToMaxHealth <= $_ ScoreToMaxHealth run scoreboard players remove $__ ScoreToMaxHealth 0001
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0002-00 "ScoreToMaxHealth" 0.0001 add
execute if score @s ScoreToMaxHealth > $_ ScoreToMaxHealth run scoreboard players add $__ ScoreToMaxHealth 0001

effect give @s minecraft:instant_health 1 254 true
scoreboard players operation @s STMHBackup = @s ScoreToMaxHealth
tag @s add ScoreToHealth.Return
