#define MAX_SA_OBJECTS  36086

enum SA_MAP_INFO
{
  SA_MAP_Model,
  SA_MAP_LODModel,
  SA_MAP_Model_Name[32],
  Float:SA_MAP_X,
  Float:SA_MAP_Y,
  Float:SA_MAP_Z,
  Float:SA_MAP_RX,
  Float:SA_MAP_RY,
  Float:SA_MAP_RZ
};

new SA_MAP_Object[MAX_SA_OBJECTS][SA_MAP_INFO];

stock Read_SA_MAP()
{
  print("Parsing GTA:SA objects array.");
  new index, line[256], File:file_ptr;

  file_ptr = fopen("sanandreasarray.db", filemode:io_read);

  if(!file_ptr) return print("Error, server could not find SanAndreasArray.db");

  while(fread(file_ptr, line) > 0)
  {
    if(!sscanf(line, "p<,>dds[32]ffffff",
    SA_MAP_Object[index][SA_MAP_Model], SA_MAP_Object[index][SA_MAP_LODModel], SA_MAP_Object[index][SA_MAP_Model_Name],
    SA_MAP_Object[index][SA_MAP_X], SA_MAP_Object[index][SA_MAP_Y], SA_MAP_Object[index][SA_MAP_Z],
    SA_MAP_Object[index][SA_MAP_RX], SA_MAP_Object[index][SA_MAP_RY], SA_MAP_Object[index][SA_MAP_RZ]))
    {
      index++;
    }
  }
  fclose(file_ptr);
  printf("Server sucessfully parsed %d GTA:SA objects data.", index);
  return 1;
}
