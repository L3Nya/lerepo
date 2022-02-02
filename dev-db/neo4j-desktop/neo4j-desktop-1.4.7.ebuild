# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Neo4j "
HOMEPAGE="https://neo4j.com/"
SRC_URI="https://s3-eu-west-1.amazonaws.com/dist.neo4j.org/${PN}/linux-offline/${P}-x86_64.AppImage"

SLOT="0"
KEYWORDS="amd64"

RDEPEND="virtual/krb5"

src_unpack() {
	mv "$DISTDIR/${A}" "$WORKDIR"
	mkdir ${PN}
}

src_prepare() {
	mv neo4j-desktop-${PV}-x86_64.AppImage "${PN}/neo4j-desktop"
}

src_install() {
	dobin neo4j-desktop
}
