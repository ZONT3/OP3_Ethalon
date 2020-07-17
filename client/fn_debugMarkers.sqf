systemChat "Toggling markers...";
if (isNil 'MPV_debugMarkers') then {
  MPV_debugMarkers = true
};

{
    if ([_x, 0, 4] call BIS_fnc_trimString == "OPM_D") then {
      _x setMarkerAlphaLocal (if (MPV_debugMarkers) then {0} else {1});
    }
} forEach allMapMarkers;
MPV_debugMarkers = !MPV_debugMarkers;
systemChat "Toggled markers";
