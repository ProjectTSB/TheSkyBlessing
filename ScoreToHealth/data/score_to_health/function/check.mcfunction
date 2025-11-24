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

function api:modifier/max_health/get
execute store result score $_ ScoreToHealth run data get storage api: Return.MaxHealth 100
function api:data_get/health
execute store result score $__ ScoreToHealth run data get storage api: Health 100
scoreboard players operation $__ ScoreToHealth -= $_ ScoreToHealth

execute if score $__ ScoreToHealth matches ..0 unless entity @s[tag=ScoreToHealth.AntiGlitch.UnsafeTick] run function score_to_health:modify
tag @s remove ScoreToHealth.AntiGlitch.UnsafeTick
execute if score $__ ScoreToHealth matches 1.. run function score_to_health:anti_glitch/protect
