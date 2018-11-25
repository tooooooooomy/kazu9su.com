SHELL = /bin/sh
.PHONY:sakura local

sakura: sakura-database.yml sakura-master.key

sakura-database.yml:
	ln -snf ../submodules/local-git/database.yml config/database.yml

sakura-master.key:
	ln -snf ../submodules/local-git/master.key config/master.key

local: local-database.yml

local-database.yml:
	ln -snf config/database.sample.yml config/database.yml
