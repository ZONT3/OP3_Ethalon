waitUntil {MPV_postInitConsts};
systemChat "Init sectors...";

private _i = 1;
private _tr = format ["MPT_sect%1", _i] call ZONT_fnc_getTriggers;
while {(count _tr) > 0} do {
  private _ftr = _tr select 0;

  private _own = -1;
  if (((triggerActivation _ftr) # 0) == "WEST") then { _own = west call BIS_fnc_sideID };
  if (((triggerActivation _ftr) # 0) == "EAST") then { _own = east call BIS_fnc_sideID };
  if (((triggerActivation _ftr) # 0) == "GUER") then { _own = independent call BIS_fnc_sideID };

  {
    _x setTriggerActivation ["ANY", "PRESENT", false];
  } forEach _tr;
  if (isServer) then {
    private _name = triggerText _ftr;
    private _logic = MPV_sideLogic createUnit ["LocationArea_F", position _ftr, [], 10, "NONE"];
    _logic synchronizeObjectsAdd _tr;
    private _module = MPV_sideLogic createUnit ["ModuleSector_F", position _ftr, [], 10, "NONE"];
    _module synchronizeObjectsAdd [_logic];
    _module synchronizeObjectsAdd MPV_sideLogics;

    if (_name != "") then { _module setVariable ["Name", _name, true] };
    _module setVariable ["Designation", MPV_alphabet select ((_i - 1) % (count MPV_alphabet)), true];
    _module setVariable ["DefaultOwner", format ["%1", _own]];
    _module setVariable ["OnOwnerChange", "_this spawn ZONT_fnc_onSectorChanged"];
    _module call BIS_fnc_moduleSector;
    _module setVariable ["ZTriggers", str _tr];
  };

  _i = _i + 1;
  _tr = format ["MPT_sect%1", _i] call ZONT_fnc_getTriggers;
};

systemChat "Init sectors done";
