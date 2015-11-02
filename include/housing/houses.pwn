/*
__
__        [:::] S0nny's Roleplay Framework [:::]
__
__   Arquivo: houses.pwn (módulo)
__   Ultima data de modificação: 01/11/2015
__   Autor: s0nny
__   Descrição: Módulo de casas
__
*/

#define MAX_HOUSES 600

//estrutura de dados
enum HousesData
{
  house_ownerid,
  house_ownername[24],
  house_key_ownerid[5],
  house_key_ownername[5],
  house_area_name[16],
  house_description[64],
  Float:house_area_min_x,
  Float:house_area_min_y,
  Float:house_area_min_z,
  Float:house_area_max_x,
  Float:house_area_max_y,
  Float:house_area_max_z,
  house_pickup_entrance,
  house_pickup_exit
}

new HousesInfo[MAX_HOUSES][HousesData];

#pragma unused HousesInfo
