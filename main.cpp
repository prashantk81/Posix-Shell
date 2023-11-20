#include <iostream>
#include <signal.h>

#include "taskA.h"
#include "taskB.h"
#include "taskC.h"
#include "taskD.h"

using namespace std;

int main()
{
    signal(SIGINT, exitShell);
    initialise();
    return 0;
}