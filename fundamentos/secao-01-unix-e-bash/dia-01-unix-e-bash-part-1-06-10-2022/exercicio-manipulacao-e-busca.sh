#!/bin/bash

delay=2

#1 - 1- Crie um novo diretório chamado unix_tests_search e entre nele. 
echo -e "Criando o diretório unix_tests_search"
mkdir unix_tests_search
echo -e "\nEntrando em unix_tests_search"
cd unix_tests_search
sleep $delay

#2- Na pasta unix_tests_search, baixe um arquivo com os nomes de todos os países do mundo utilizando o comando curl
echo -e "\nBaixando o nome de todos os países do mundo\n"
curl -o countries.txt "https://gist.githubusercontent.com/kalinchernev/486393efcca01623b18d/raw/daa24c9fea66afb7d68f8d69f0c4b8eeb9406e83/countries"
sleep $delay

#3 - Mostre todo o conteúdo do arquivo countries.txt na tela.
echo -e "\nLendo o arquivo countries.txt"
ls countries.txt
sleep $delay

#4 - Mostre o conteúdo de countries.txt, página por página, até encontrar a Zambia.
echo -e "\nEncontre o país Zambia"
echo -e "\n1 - Digite /Zambia"
echo -e "\nApós encontrado tecle a letra Q para sair"
less countries.txt
sleep $delay

#5 - Mostre novamente o conteúdo de countries.txt página por página, mas agora utilize um comando para buscar por Zambia.
echo -e "\nProcurando pelo país Zambia\n"
cat countries.txt 
grep Zambia countries.txt
sleep $delay

#6 - Busque por Brazil no countries.txt.
echo -e "\nBuscando pelo país Brazil no countries.txt"
grep Brazil countries.txt
sleep $delay

#7 - Busque novamente por brazil, mas agora utilizando o lower case.
echo -e "\nIgnorando o lower case, buscando por brazil"
grep -i brazil countries.txt
sleep $delay

#8 - Crie um novo arquivo chamado phrases.txt e adicione algumas frases à sua escolha. Não precisa criar o arquivo pelo terminal.
echo -e "\nCriando o arquivo phrases.txt"
echo -e "\nEscrevendo no phrases.txt"
echo -e "\nNÃO É FALTA DE CAFÉ,\nNEM TEQUILA.\nÉ MEU CÓDIGO,\nQUE NÃO COMPILA." >> phrases.txt
sleep $delay

#9 - Busque pelas frases que não contenham a palavra fox.
echo -e "\nBuscando pelas frases que não tem a palavra fox\n"
grep -v fox phrases.txt
sleep $delay

#10 - Conte o número de palavras do arquivo phrases.txt.
echo -e "\nContando o número de palavras no arquivo phrsases.txt\n"
wc -w phrases.txt
sleep $delay

#11 - Conte o número de linhas do arquivo phrases.txt.
echo -e "\nContando o número de linhas do arquivo phrsases.txt\n"
wc -l phrases.txt
sleep $delay

#12 - Crie os arquivos empty.tbt e empty.pdf.
echo -e "\nCriando o arquivo empty.tbt e empty.pdf"
touch empty.tbt empty.pdf
sleep $delay

#13 - Liste todos os arquivos do diretório unix_tests_search.
echo -e "\nListando todos os arquivos do diretório unix_tests_search\n"
ls
sleep $delay

#14 - Liste todos os arquivos que terminem com txt.
echo -e "\nListando todos os arquivos que terminam com txt\n"
ls *.txt
sleep $delay

#15 - Liste todos os arquivos que terminem com tbt ou txt.
echo -e "\nListando todos os arquivos que terminam com tbt ou txt\n"
ls *.tbt || *.txt
sleep $delay

#16 - Acesse o manual do comando ls.
echo -e "\nAcessando o manual do comando ls\n"
man ls