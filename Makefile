###############################################################################
## jNetMap
##
## Copyright (C) 2012 rakudave
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
###############################################################################


#Vars
DESTDIR		=	/usr
BINDIR		=	$(DESTDIR)/bin/
MAINDIR		=	$(DESTDIR)/share/jnetmap/
DESKTOPDIR	=	$(DESTDIR)/share/applications/

JARFILE		=	jNetMap.jar
NAME		=	jnetmap
EXECFILE	=	$(NAME).sh
ICONFILE	=	$(NAME).png
DESKTOPFILE	=	$(NAME).desktop

install:
	mkdir -p $(BINDIR) $(MAINDIR) $(DESKTOPDIR)
 
	install -m 0644 $(JARFILE) $(MAINDIR)
	install -m 0755 $(EXECFILE) $(MAINDIR)
	install -m 0755 $(NAME) $(BINDIR)
 
	install -m 644 $(ICONFILE) $(MAINDIR)
	install -m 644 $(DESKTOPFILE) $(DESKTOPDIR)
	
uninstall:
	rm -rf $(MAINDIR)
	rm -f $(BINDIR)$(NAME)
	rm -f $(DESKTOPDIR)$(DESKTOPFILE)
