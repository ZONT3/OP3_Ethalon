params [["_orig", 0, [0]], ["_mod", 0, [0]]];
private _n = (_orig + _mod) % 360;
if (_n < 0) then {_n = 360 + _n};
_n
