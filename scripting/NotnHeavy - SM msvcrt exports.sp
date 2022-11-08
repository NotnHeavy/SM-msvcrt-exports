#include <cstdlib>

public void OnPluginStart()
{
    PrintToServer("------------------------------------------------------------------");
    msvcrt_exports();

    any pointer = malloc(4);
    StoreToAddress(pointer, 69420, NumberType_Int32);
    PrintToServer("*pointer: %i", LoadFromAddress(pointer, NumberType_Int32));

    pointer = realloc(pointer, 8);
    StoreToAddress(pointer + 4, 2000, NumberType_Int32);
    PrintToServer("*pointer: %i, *(pointer + 4): %i", LoadFromAddress(pointer, NumberType_Int32), LoadFromAddress(pointer + 4, NumberType_Int32));

    free(pointer);

    PrintToServer("\n\"%s\" has loaded.\n------------------------------------------------------------------", "NotnHeavy - SM msvcrt exports");
}