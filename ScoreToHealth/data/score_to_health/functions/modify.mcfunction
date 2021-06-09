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

execute if entity @s[tag=ScoreToHealth.AntiGlitch.Protected] run function score_to_health:anti_glitch/modify

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
scoreboard players operation @s ScoreToHealth < $_ ScoreToHealth
attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-17 "ScoreToHealth" -838.8607 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-16 "ScoreToHealth" -419.4304 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-16 "ScoreToHealth" 419.4304 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-15 "ScoreToHealth" -209.7152 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-15 "ScoreToHealth" 209.7152 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-14 "ScoreToHealth" -104.8576 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-14 "ScoreToHealth" 104.8576 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-13 "ScoreToHealth" -52.4288 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-13 "ScoreToHealth" 52.4288 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-12 "ScoreToHealth" -26.2144 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-12 "ScoreToHealth" 26.2144 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-11 "ScoreToHealth" -13.1072 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-11 "ScoreToHealth" 13.1072 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-10 "ScoreToHealth" -6.5536 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-10 "ScoreToHealth" 6.5536 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0F "ScoreToHealth" -3.2768 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0F "ScoreToHealth" 3.2768 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0E "ScoreToHealth" -1.6384 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0E "ScoreToHealth" 1.6384 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0D "ScoreToHealth" -0.8192 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0D "ScoreToHealth" 0.8192 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0C "ScoreToHealth" -0.4096 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0C "ScoreToHealth" 0.4096 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0B "ScoreToHealth" -0.2048 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0B "ScoreToHealth" 0.2048 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0A "ScoreToHealth" -0.1024 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-0A "ScoreToHealth" 0.1024 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-09 "ScoreToHealth" -0.0512 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-09 "ScoreToHealth" 0.0512 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-08 "ScoreToHealth" -0.0256 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-08 "ScoreToHealth" 0.0256 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-07 "ScoreToHealth" -0.0128 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-07 "ScoreToHealth" 0.0128 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-06 "ScoreToHealth" -0.0064 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-06 "ScoreToHealth" 0.0064 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-05 "ScoreToHealth" -0.0032 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-05 "ScoreToHealth" 0.0032 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-04 "ScoreToHealth" -0.0016 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-04 "ScoreToHealth" 0.0016 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-03 "ScoreToHealth" -0.0008 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-03 "ScoreToHealth" 0.0008 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-02 "ScoreToHealth" -0.0004 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-02 "ScoreToHealth" 0.0004 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-01 "ScoreToHealth" -0.0002 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-01 "ScoreToHealth" 0.0002 add

execute store result score $_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute if score @s ScoreToHealth <= $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-00 "ScoreToHealth" -0.0001 add
execute if score @s ScoreToHealth > $_ ScoreToHealth run attribute @s minecraft:generic.max_health modifier add bab7cdc2-fb6a-47f6-0001-00 "ScoreToHealth" 0.0001 add

effect give @s minecraft:instant_health 1 252 true
tag @s add ScoreToHealth.Modified
scoreboard players reset @s ScoreToHealth
