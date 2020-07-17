systemChat "Init respawn...";
if (isServer) then {
  if (!isNil 'OPL_spawn') then {
    MPV_startRespawn = [missionNamespace, getPosATL OPL_spawn, "CHANGE ITS NAME IN server/fn_init_respawn.sqf"]
  	 		call BIS_fnc_addRespawnPosition; // TODO Измени здесь название и сторону (вместо missionNamespace)
  };
	{ _x addEventHandler ["Respawn", { params ["_unit", "_corpse"];
		_unit call ZONT_fnc_onRespawn
	}]} forEach playableUnits;
};
systemChat "Init respawn done";
