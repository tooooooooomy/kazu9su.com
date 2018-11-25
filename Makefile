SHELL = /bin/sh
.PHONY:sakura local

sakura: sakura-database.yml

sakura-database.yml:
	ln -snf ../submodules/local-git/database.yml config/database.yml

local: local-database.yml

local-database.yml:
	ln -snf config/database.sample.yml config/database.yml
