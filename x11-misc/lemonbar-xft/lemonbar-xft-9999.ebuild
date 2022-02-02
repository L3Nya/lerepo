# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=7
inherit git-r3

DESCRIPTION="fork of lemonbar with support for Xft."
HOMEPAGE="https://gitlab.com/protesilaos/lemonbar-xft"
EGIT_REPO_URI="https://gitlab.com/protesilaos/lemonbar-xft"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="
	x11-libs/libxcb
	x11-libs/libXft
	"
RDEPEND="${DEPEND}"

src_compile() {
	emake STRIP=true
}

src_install() {
	emake DESTDIR="${D}" install
}
