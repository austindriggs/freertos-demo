#!/bin/bash

PROJECT_PATH=~/code/FreeRTOS

# replace the main_blinky.c with mine
rm "$PROJECT_PATH/FreeRTOS/Demo/Posix_GCC/main_blinky.c"
cp main_blinky.c "$PROJECT_PATH/FreeRTOS/Demo/Posix_GCC/main_blinky.c"

# make and run
cd "$PROJECT_PATH/FreeRTOS/Demo/Posix_GCC"
make clean
make CFLAGS="-DUSER_DEMO=0"
./build/posix_demo
