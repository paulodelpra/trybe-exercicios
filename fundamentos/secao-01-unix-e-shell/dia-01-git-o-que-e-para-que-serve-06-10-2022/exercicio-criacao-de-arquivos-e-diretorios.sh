#!/bin/bash

delay=2

#1 - Utilizando o terminal, aplique o comando de criação de diretórios que você aprendeu, crie um diretório chamado unix_tests e navegue até ele.
echo "Criando o diretório unix_tests"
mkdir unix_tests
echo -e "\nEntrando no diretório unix_tests"
cd unix_tests
sleep $delay

#2 - Crie um arquivo de texto com o nome trybe.txt.
echo -e "\nCriando arquivo trybe.txt"
touch trybe.txt
sleep $delay

#3 - Crie uma cópia do arquivo trybe.txt com o nome trybe_backup.txt.
echo -e "\nCriando uma cópia do arquivo trybe.txt com o nome trybe_backup.txt"
cp trybe.txt trybe_backup.txt
sleep $delay

#4 - Renomeie o arquivo trybe.txt.
echo -e "\nRenomeando trybe.txt para trybe2.txt"
mv trybe.txt trybe2.txt
sleep $delay

#5 - Dentro de unix_tests, crie um novo diretório chamado backup.
echo -e "\nCriando o diretório backup"
mkdir backup
sleep $delay

#6 - Mova o arquivo trybe_backup.txt para o diretório backup.
echo -e "\nMovendo o arquivo trybe_backup.txt para o diretório backup"
mv trybe_backup.txt backup
sleep $delay

#7 - Dentro de unix_tests, crie um novo diretório chamado backup2.
echo -e "\nCriando o diretório backup2"
mkdir backup2
sleep $delay

#8 - Mova o arquivo trybe_backup.txt da pasta backup para a pasta backup2.
echo -e "\nMovendo arquivo trybe_backup para o diretório backup2"
mv backup/trybe_backup.txt backup2
sleep $delay

#9 - Apague a pasta backup.
echo -e "\nApagando o diretório backup"
rmdir backup
sleep $delay

#10 - Renomeie a pasta backup2 para backup.
echo -e "\nRenomeando o diretório backup2 para backup"
mv backup2 backup
sleep $delay

#11 - Veja qual o path completo do diretório atual e liste todos os arquivos dentro dele.
echo -e "\nO Path é:"
pwd
echo -e "\nOs arquivos são:"
ls -al
sleep $delay

#12 - Apague o diretório backup.
echo -e "\nApagando o diretório backup"
rm -rf backup
sleep $delay

#13 - Limpe o terminal.
echo -e "\nLimpando o terminal"
clear

#14 - Para os próximos dois exercícios, crie, de forma manual, na parte gráfica do seu sistema operacional (através do mouse), um arquivo de texto com o conteúdo abaixo, chamado skills.txt:
echo -e "\nCriando arquivo skills.txt"
echo -e "Internet\nUnix\nBash\nHTML\nCSS\nJavascript\nReact\nSQL" >> skills.txt

#15 - Mostre na tela as 5 primeiras skills do arquivo skills.txt.
echo -e "\nMostrando as 5 primeiras skills"
head -5 skills.txt
sleep $delay

#16 - Mostre na tela as 4 últimas skills do arquivo skills.txt.
echo -e "\nMostrando as 4 últimas skills"
tail -4 skills.txt
sleep $delay

#17 - Apague todos os arquivos que terminem em .txt.
echo -e "\nApagando todos os arquivos com a extensão .txt"
rm *.txt
