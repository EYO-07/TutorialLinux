#!/bin/bash
# ~/.config/i3/prev_workspace.sh

# Logic [ Next Workspace Script ]
#-> $prev || prev is initially the current worskpace number minus one from current output
#-> $prev | & | % if prev is greater than 0 || goto the workspace assigned by prev
#-> $prev | & || % prev not exists on all outputs || break ~ this is our target workspace
#-> $prev | & || %% prev exists and is on current output || break ~ this is our target workspace
#-> $prev | & || %%% else || decrement the prev workspace number
#.
#1. A || B : means that B belongs to structure of A or a subproblem of A 
#2. $prev : construction of prev workspace variables
#3. % I : I is a conditional structure
#4. & : loop structure
#5. A | B : means that B is after A, but in same topological level
#6. %% : shorthand for a collection of related conditionals

# Current workspace information
set -euo pipefail
current_json=$(i3-msg -t get_workspaces)
current_num=$(jq -r '.[] | select(.focused) | .num' <<< "$current_json")
current_output=$(jq -r '.[] | select(.focused) | .output' <<< "$current_json")
prev=$((current_num - 1))
while true; do
    # Find workspace with this number (if it exists)
    ws=$(jq -c --argjson n "$prev" '.[] | select(.num == $n)' <<< "$current_json")
    # Doesn't exist anywhere -> use it (creates it)
    if [[ -z "$ws" ]]; then
        break
    fi
    ws_output=$(jq -r '.output' <<< "$ws")
    # Exists on current monitor -> use it
    if [[ "$ws_output" == "$current_output" ]]; then
        break
    fi
    # Exists on another monitor -> skip
    ((prev--))
done
if (( prev >0 )); then
    i3-msg "workspace number $prev"
fi    

# END
