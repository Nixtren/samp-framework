/*
__
__        [:::] S0nny's Roleplay Framework [:::]
__
__   Arquivo: framework.pwn (gamemode-debugger)
__   Ultima data de modificação: 01/11/2015
__   Autor: s0nny
__   Descrição: Gamemode debugger - Depuração de script
__
*/

/*
[:::] Includes Nativas [:::]
*/
#include <a_samp>
#include <a_mysql>
#include <colandreas>
#include <mapandreas>
#include <ysf>
#include <icmd>
#include <streamer>
#include <sscanf2>
#include <foreach>
#include <ysi\y_areas>

/*
[:::] Includes Externas (módulos) [:::]
*/
#include "../include/furnis/furnidata.pwn"
#include "../include/housing/houses.pwn"
#include "../include/stores/markets.pwn"
#include "../include/stores/furnishops.pwn"
#include "../include/terrains/areas.pwn"
#include "../include/terrains/sanandreas.pwn"


main() { }

public OnGameModeInit()
{
  Read_SA_MAP();
  return 1;
}

public OnCommandCalled(playerid, params[])
{
  return 1;
}

public OnPlayerSpawn(playerid)
{
  return 1;
}
