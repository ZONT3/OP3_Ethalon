private _n = [] spawn {
  playSound "papich";
  sleep 2;
  ["end1", true, true, false, true] call BIS_fnc_endMission;
}
