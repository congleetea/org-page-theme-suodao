## Copyright 2016 Lenilson Jose Dias. All rights reserved.
## Use of this source code is governed by a BSD-style
## license that can be found in the LICENSE file.
##
## Makefile for the org-page-one-column theme.
##
## USAGE:
##	make 'compile'
##		Generate the css files at "resources/css/":
##		- main.css - not compressed
##		- main-min.css - compressed and default css required by
##		  'templates/header.mustache'
##
##	make 'deps'
##		Install dependencies.
##
## IMPORTANT: If you don't want to use sass(http://sass-lang.com/),
##	      you can use the pure 'resources/css/main.css'.
##            Then change 'templates/header.mustache' from this:
##		  <link rel="stylesheet" href="/media/css/main-min.css" type="text/css">
##	      to this:
##		  <link rel="stylesheet" href="/media/css/main.css" type="text/css">

default:
	@echo 'Check the Makefile instructions.'

.PHONY: compile
compile:
	sass resources/assets/scss/main.scss:resources/css/main.css
	sass resources/assets/scss/main.scss:resources/css/main-min.css -t compressed

.PHONY: deps
deps:
	gem install sass
