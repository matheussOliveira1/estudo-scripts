#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11
	
echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Olá, estarei aqui para lhe aulixiar no processo de instalação da aplicação do Data Sentry!;"
echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Verificando se você possui o Java instalado em seu servidor...;"
sleep 2

java -version
if [ $? -eq 0 ]
	then
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Você já tem o java instalado!!!"
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando o processo de instalação da aplicação..."
git clone https://github.com/AccentureSPtech2ADSA/Data-Sentry-Application.git
sleep 2
cd Data-Sentry-Application
cd app
sleep 2
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando teste de execução da aplicação!"
java -jar data-sentry-1.0-SNAPSHOT-jar-with-dependencies.jar

else
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Opa! Não identifiquei nenhuma versão do Java instalado, mas sem problemas, irei resolver isso agora!"
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar o Java (S/N)?"
read inst
if [ \"$inst\" == \"S\" ]
then
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Ok! Você escolheu instalar o Java ;D"
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Adicionando o repositório!"
sleep 2
sudo add-apt-repository ppa:webupd8team/java -y
clear
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Atualizando! Quase lá."
sleep 2
sudo apt update -y
clear
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando o processo de instalação da aplicação..."
git clone https://github.com/AccentureSPtech2ADSA/Data-Sentry-Application.git
sleep 2
cd Data-Sentry-Application
cd app
sleep 2
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando teste de execução da aplicação!"
java -jar data-sentry-1.0-SNAPSHOT-jar-with-dependencies.jar
			
if [ $VERSAO -eq 11 ]
then
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Preparando para instalar a versão 11 do Java. Confirme a instalação quando solicitado ;D"
sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
clear
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Java instalado com sucesso!"
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando o processo de instalação da aplicação..."
git clone https://github.com/AccentureSPtech2ADSA/Data-Sentry-Application.git
sleep 2
cd Data-Sentry-Application
cd app
sleep 2
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Iniciando teste de execução da aplicação!"
java -jar data-sentry-1.0-SNAPSHOT-jar-with-dependencies.jar
fi
else 	
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto..."
echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Logo, não poderemos utilizar a aplicação!"
fi
fi
