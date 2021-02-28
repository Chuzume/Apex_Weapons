scoreboard players operation #spreadC ForwardSpread = $spread ForwardSpread
scoreboard players operation #spreadC ForwardSpread *= #1000 ForwardSpread
scoreboard players operation #spreadC/2 ForwardSpread = #spreadC ForwardSpread
scoreboard players operation #spreadC/2 ForwardSpread /= #2 ForwardSpread

scoreboard players operation #distanceC ForwardSpread = $distance ForwardSpread
scoreboard players operation #distanceC ForwardSpread *= #1000 ForwardSpread

scoreboard players operation #r^2 ForwardSpread = #spreadC/2 ForwardSpread
scoreboard players operation #r^2 ForwardSpread *= #spreadC/2 ForwardSpread

function forwardspread:core/pitch
function forwardspread:core/yaw
function forwardspread:core/circle_randomizer
function forwardspread:core/vec

execute at 0-0-0-0-a run function #forwardspread:return