

ZIP=vim


all:

symlink:
	cd .. && ln -s $${HOME}/.vim/.vimrc .vimrc

if [ -f include/libraries/libxyz.so ] ; then echo "something";else ln -s include/libraries/libxyz.so.1  include/libraries/libxyz.so;echo "linked";fi


pull:
	git pull


zip:
	cd .. && \
	zip -r $(ZIP).zip .vimrc .vim/Makefile .vim/spell .vim/autoload .vim/include .vim/syntax && \
	mv $(ZIP).zip .vim

