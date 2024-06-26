#!/bin/bash
gcc -v -c -fpic -o Client_Dispatcher_32.o Client_Dispatcher.c -I.
gcc -v -c -fpic -o Client_API_32.o Client_API.c -I.
gcc -v -c -fpic -o Client_Packager_32.o Client_Packager.c -I.
gcc -v -c -fpic -o Serializer_BuiltIn_32.o Serializer_BuiltIn.c -I.
gcc -v -c -fpic -o Serializer_Struct_32.o Serializer_Struct.c -I.
gcc -v -c -fpic -o UART_Connector_32.o UART_Connector.c -I.
#gcc -v -shared -o C_SDK_32.dll Client_API_32.o Client_Dispatcher_32.o Client_Packager_32.o Serializer_BuiltIn_32.o Serializer_Struct_32.o UART_Connector_32.o UART_HalfDuplex64.def -I.
gcc -v -fpic -shared -o libboson.so Client_API_32.o Client_Dispatcher_32.o Client_Packager_32.o Serializer_BuiltIn_32.o Serializer_Struct_32.o UART_Connector_32.o -I.
