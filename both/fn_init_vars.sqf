MPV_sideLogic = createGroup sideLogic;
MPV_logicWest = MPV_sideLogic createUnit ["SideBLUFOR_F", [0,0,0], [], 10, "NONE"];
MPV_logicEast = MPV_sideLogic createUnit ["SideOPFOR_F", [0,0,0], [], 10, "NONE"];
MPV_logicGuer = MPV_sideLogic createUnit ["SideResistance_F", [0,0,0], [], 10, "NONE"];
MPV_sideLogics = [MPV_logicWest, MPV_logicEast, MPV_logicGuer];

MPV_postInitConsts = true;
