#!/usr/bin/make -f


CWD=source

# ---------------------------------------------------------------------------------------------------------------------

PREFIX     := /usr/local
BINDIR     := $(PREFIX)/bin
LIBDIR     := $(PREFIX)/lib
DATADIR    := $(PREFIX)/share
DESTDIR    :=


all:
	echo "build finished"

install:

	# Everything else is $(DESTDIR)
	install -d $(DESTDIR)$(DATADIR)/applications
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/16x16/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/22x22/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/24x24/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/48x48/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/64x64/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/128x128/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/256x256/apps
	install -d $(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps
	install -d $(DESTDIR)$(DATADIR)/man/man1
#	install -d $(DESTDIR)$(DATADIR)/musicpager
#	install -d $(DESTDIR)$(DATADIR)/musicpager/html
	install -d $(DESTDIR)$(DATADIR)/musicpager/html/img

	install -d $(DESTDIR)$(BINDIR)
	#install -d $(DESTDIR)$(LIBDIR)/python3/dist-packages

	# now the files
	install -m 644	usr/share/applications/net.ovenwerks.musicpager.desktop \
		$(DESTDIR)$(DATADIR)/applications
	install -m 644 usr/share/icons/hicolor/16x16/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/16x16/apps
	install -m 644 usr/share/icons/hicolor/22x22/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/22x22/apps
	install -m 644 usr/share/icons/hicolor/24x24/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/24x24/apps
	install -m 644 usr/share/icons/hicolor/48x48/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/48x48/apps
	install -m 644 usr/share/icons/hicolor/64x64/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/64x64/apps
	install -m 644 usr/share/icons/hicolor/128x128/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/128x128/apps
	install -m 644 usr/share/icons/hicolor/256x256/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/256x256/apps
	install -m 644 usr/share/icons/hicolor/scalable/apps/* \
		$(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps
	install -m 644 usr/share/man/man1/* \
		$(DESTDIR)$(DATADIR)/man/man1
	# || true in the next two comands because install doesn't like directories
	install -m 644 usr/share/musicpager/* \
		$(DESTDIR)$(DATADIR)/musicpager || true
	install	-m 644 usr/share/musicpager/html/* \
		$(DESTDIR)$(DATADIR)/musicpager/html || true
	install	-m 644 usr/share/musicpager/html/img/* \
		$(DESTDIR)$(DATADIR)/musicpager/html/img


	install -m 655 usr/bin/* \
		$(DESTDIR)$(BINDIR)

	#install -m 655 usr/lib/python3/dist-packages/* \
	#	$(DESTDIR)$(LIBDIR)/python3/dist-packages

# ---------------------------------------------------------------------------------------------------------------------

uninstall:
	rm -f $(DESTDIR)$(DATADIR)/applications/net.ovenwerks.musicpager.desktop

	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/16x16/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/22x22/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/24x24/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/48x48/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/64x64/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/128x128/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/256x256/apps/musicpager.png
	rm -f $(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps/musicpager.svg

	rm -f $(DESTDIR)$(DATADIR)/man/man1/musicpager.*

	rm -rf $(DESTDIR)$(DATADIR)/musicpager

	rm -f $(DESTDIR)$(BINDIR)/musicpager

	#rm -f $(DESTDIR)$(LIBDIR)/python3/dist-packages/mylib.py

