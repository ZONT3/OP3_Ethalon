if (isPlayer _this) exitWith {};

[side _this, -1] call BIS_fnc_respawnTickets;

private _nearest = [objNull, -1];

{
    if (_x # 1 == side _this || _x # 1 == sideUnknown) then {
      private _dist = (_x # 0) distance leader _this;
      if (_nearest # 1 > _dist || _nearest # 1 < 0) then {
        _nearest = [_x # 0, _dist];
      }
    }
} forEach MPV_respawnPoints;

private _respawn = _nearest # 0;
if (isNull _respawn) then {
  _respawn = OPL_spawn
};
_this sideChat format ["%1 RS=%2", str _this, str _respawn];
_this setPosATL getPosATL _respawn;
