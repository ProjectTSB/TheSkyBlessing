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

#> ObjectDeclare
# @within *
#   score_to_health:**
#   lib:score_to_health_wrapper/**
#   lib:has_health_modify_score
#   api:modifier/max_health/**
    scoreboard objectives add ScoreToHealth dummy {"text":"プレイヤーをこの体力にする(*0.01HP)"}
    scoreboard objectives add ScoreToMaxHealth dummy {"text":"プレイヤーをこの最大体力にする(*0.0001HP)"}

#> PrivateUse
# @internal
    #declare tag ScoreToHealth.AntiGlitch.UnsafeTick
    #declare tag ScoreToHealth.AntiGlitch.Protected
    #declare tag ScoreToHealth.Modified
    #declare tag ScoreToHealth.Return
    scoreboard objectives add STMHBackup dummy {"text":"ScoreToMaxHealthのBackup"}

#> RespawnCheck
# @within function core:handler/respawn
#declare objective STMHBackup