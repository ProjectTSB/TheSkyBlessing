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

execute if entity @s[tag=ScoreToHealth.Modified] run function score_to_health:restore
execute unless score @s STMHBackup matches -2147483648.. run scoreboard players set @s ScoreToMaxHealth 200000
execute unless score @s STMHBackup matches -2147483648.. run scoreboard players set @s STMHBackup 200000
execute if entity @s[tag=!ScoreToHealth.Return,tag=!ScoreToHealth.AntiGlitch.UnsafeTick] unless score @s ScoreToMaxHealth = @s STMHBackup run function score_to_health:modify_max_health
execute unless entity @s[tag=ScoreToHealth.Return] if score @s ScoreToHealth matches -2147483648.. run function score_to_health:check
tag @s[tag=ScoreToHealth.Return] remove ScoreToHealth.Return
