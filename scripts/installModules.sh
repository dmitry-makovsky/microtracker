#!/bin/bash

cd backend
make install && make build
cd ../core
make install && make build
cd ../
