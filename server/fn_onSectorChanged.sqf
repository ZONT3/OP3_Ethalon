if (!isServer) exitWith {};

params ["_module", "_side", "_previous"];

private _arr = [];
{
  _side call compile format
    ["MPV_SC_%1 = _this; publicVariable 'MPV_SC_%1'", str _x];
  {
    if (_x getVariable ["zrs", false] && _side != sideUnknown) then {
      MPV_respawnPoints pushBackUnique [_x, _side];
      private _name = _x getVariable ["zname", ""];
      if (_name == "") then {
        _arr pushBack ([_side, getPosATL _x] call BIS_fnc_addRespawnPosition);
      } else {
        _arr pushBack ([_side, getPosATL _x, _name] call BIS_fnc_addRespawnPosition);
      }
    }
  } forEach list _x
} forEach call compile (_module getVariable ["ZTriggers", "[]"]);

{
  _x call BIS_fnc_removeRespawnPosition;
} forEach call compile (_module getVariable ["ZSpawns", "[]"]);

_module setVariable ["ZSpawns", str _arr];
