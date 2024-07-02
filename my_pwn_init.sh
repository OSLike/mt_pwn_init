#!/bin/bash

echo "Hello, Pwn! -- from Nsus"
echo ""
echo ""

cd ~

echo "I think that u have been changed apt source.."

echo "time to use ur apt to install something mecessary"

sudo dpkg --add-architecture i386
sudo apt update
sudo apt -y install libc6-i386
sudo apt -y install git gdb python3-pip tmux

echo "time to use git to clone pwndbg and setup it"

git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

echo "this time i will install some useful tools for u"

sudo apt source libc6-dev
echo "this is pwntools and checksec"
pip install pwntools
pip install checksec-py
echo "this is ruby, it can help u install one_gadget and seccomp-tools"
sudo apt install -y ruby ruby-dev
gem install one_gadget
gem install seccomp-tools
echo "this is patchelf, change a ELF's ld and libc"
sudo apt install -y patchelf
echo "this is glibc-all-in-one"
git clone https://github.com/matrix1001/glibc-all-in-one.git
echo "this is LibcSearcher"
pip install LibcSearcher

echo "Pwngdb! heap!heap!"
cd ~
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwndbg/.gdbinit ~

echo "no peda!:("
sed -i 's/peda/pwndbg/' ~/.gdbinit
sed -i 's/peda/gdbinit/' ~/.gdbinit
