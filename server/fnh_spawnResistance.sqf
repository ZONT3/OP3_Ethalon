params [["_trg", objNull, [objNull]]];
if !(_trg isKindOf "EmptyDetector") exitWith {};

if (isNil "MPV_resistLoiter") then { MPV_resistLoiter = "_g = group this; _wp = _g addWaypoint [(_g getVariable ['loiterArea', []]) call BIS_fnc_randomPos, 0]; _wp setWaypointStatements ['true', format [MPV_resistLoiter, %1]]; _wp setWaypointCompletionRadius %1; _wp setWaypointBehaviour 'SAFE'" };

private _size = triggerArea _trg;
private _max = (_size select 0) max (_size select 1);
private _min = (_size select 0) min (_size select 1);
private _avg = (_max + _min) / 2;
private _cr = 30 max (120 min (_avg / 8));

private _spawn = { // [ARRAY, STRING] - 0: array of class names to spawn; 1: special behaviour
  params [["_arr", [], [[]]], ["_beh", "NONE", [""]]];
  if (count _arr == 0) exitWith {};
  private _pos = [];
  switch (_beh) do {
    case ("BORDER"): {
      _bl = triggerArea _trg;
      _bl set [0, (_bl # 0) - ((_bl # 0) / 6)];
      _bl set [1, (_bl # 1) - ((_bl # 1) / 6)];
      _pos = [[_trg], [[position _trg, _bl], "water"]]
    };
    default {
      _w = triggerArea _trg;
      _w set [0, (_w # 0) - ((_w # 0) / 6)];
      _w set [1, (_w # 1) - ((_w # 1) / 6)];
      _pos = [[[position _trg, _w]]]
    };
  };
  private _g = createGroup independent;
  private _gpos = _pos call BIS_fnc_randomPos;
  {
    _lpos = _gpos findEmptyPosition [0, _min, _x];
    if (_x isKindOf "Man") then {
      _x createUnit [_lpos, _g, "this enableDynamicSimulation true"];
    } else {
      _v = [_lpos, 0, _x, _g] call BIS_fnc_spawnVehicle;
      (_v # 0) enableDynamicSimulation true;
      {_x enableDynamicSimulation true} forEach (_v # 1)
    }
  } forEach _arr;
  _g deleteGroupWhenEmpty true;
  _g setVariable ["loiterArea", _pos];
  _wp = _g addWaypoint [_pos call BIS_fnc_randomPos, 0];
  _wp setWaypointBehaviour "SAFE";
  _wp setWaypointCompletionRadius _cr;
  _wp setWaypointStatements ["true", format [MPV_resistLoiter, _cr]];
};
