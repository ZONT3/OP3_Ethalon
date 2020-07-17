#include "fnh_spawnResistance.sqf"

/* Exec that code in cosole to easilly get list of typenames.
   GR is gonna be your group var. Note that vehicles is dublicating, delete it after.
_arr = [];
{_arr pushBack typeOf vehicle _x} forEach units GR;
_arr
*/

                         // -------------------------------------------------------------------------------------
                         // ----------------------------------------------------  RESISTANCE SPAWN TEMPLATES HERE
switch (true) do {       // --  Different area sizes cases  -----------------------------------------------------
    case (_avg < 100): { // pattern for area (W+H)/2 < 100m
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
    };
    case (_avg < 300): { // " " " " < 300
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
    };
    case (_avg < 500): { // . . .
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_sniper","rhsgref_ins_g_machinegunner","rhsgref_ins_g_bmp2","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_akm"]] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
    };
    case (_avg < 1100): {
      [["rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_aksu","rhsgref_ins_g_machinegunner","rhsgref_ins_g_btr70","rhsgref_ins_g_machinegunner","rhsgref_ins_g_medic","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_uaz_dshkm_chdkz","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_uaz_ags","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_specialist_aa","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_sniper","rhsgref_ins_g_machinegunner","rhsgref_ins_g_bmp2","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_akm"]] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_sniper","rhsgref_ins_g_machinegunner","rhsgref_ins_g_bmp2","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_akm"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
    };
    default {           // Area (W+H)/2 >= 1100m
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_sniper","rhsgref_ins_g_machinegunner","rhsgref_ins_g_bmp2","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_akm"]] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_sniper","rhsgref_ins_g_machinegunner","rhsgref_ins_g_bmp2","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_akm"]] call _spawn;
      [["rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_aksu","rhsgref_ins_g_machinegunner","rhsgref_ins_g_btr70","rhsgref_ins_g_machinegunner","rhsgref_ins_g_medic","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_aksu","rhsgref_ins_g_machinegunner","rhsgref_ins_g_btr70","rhsgref_ins_g_machinegunner","rhsgref_ins_g_medic","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_rifleman_RPG26","rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman","rhsgref_ins_g_rifleman_aks74"]] call _spawn;
      [["rhsgref_ins_g_squadleader","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_rifleman_RPG26","rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman","rhsgref_ins_g_rifleman_aks74"]] call _spawn;
      [["rhsgref_ins_g_t72ba","rhsgref_ins_g_t72ba"]] call _spawn;
      [["rhsgref_ins_g_zsu234"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_rifleman","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_rifleman_RPG26"]] call _spawn;
      [["rhsgref_ins_g_uaz_ags","rhsgref_ins_g_uaz_ags","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_grenadier_rpg"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_uaz_dshkm_chdkz","rhsgref_ins_g_uaz_dshkm_chdkz","rhsgref_ins_g_machinegunner","rhsgref_ins_g_grenadier","rhsgref_ins_g_grenadier_rpg"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_specialist_aa","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_specialist_aa","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_grenadier_rpg","rhsgref_ins_g_rifleman"]] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
      [["rhsgref_ins_g_machinegunner","rhsgref_ins_g_rifleman_RPG26"], "BORDER"] call _spawn;
    };
};
