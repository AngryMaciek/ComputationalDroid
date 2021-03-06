#!/usr/bin/env bash

###############################################################################
#
#   UNIX shell master test script
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: MIT
#
###############################################################################

echo "######### BASH TEST STARTED #########"
date
curl --version | head -n 1
make --version | head -n 1
vim --version | head -n 1
cookiecutter --version
echo "Snakemake:" $(snakemake --version)

echo "######### C CODE COMPILATION ########"
gcc-9 ComputationalDroid/test/test.c -o ComputationalDroid/test/ctest.exe

echo "######### C CODE EXECUTION ##########"
chmod +x ComputationalDroid/test/ctest.exe
ComputationalDroid/test/ctest.exe

echo "######### C++ CODE COMPILATION ######"
g++ ComputationalDroid/test/test.cpp -o ComputationalDroid/test/cpptest.exe

echo "######### C++ CODE EXECUTION ########"
chmod +x ComputationalDroid/test/cpptest.exe
ComputationalDroid/test/cpptest.exe

echo "######### PYTHON SCRIPT TEST ########"
python ComputationalDroid/test/test.py

echo "######### R SCRIPT TEST #############"
Rscript ComputationalDroid/test/test.R
