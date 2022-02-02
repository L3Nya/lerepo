# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=7
inherit git-r3

DESCRIPTION="fork of lemonbar with support for Xft."
HOMEPAGE="https://github.com/LemonBoy/bar"
EGIT_REPO_URI="https://github.com/LemonBoy/bar"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="
	x11-libs/libxcb
	!x11-misc/lemonbar"
RDEPEND="${DEPEND}"

src_compile() {
	emake STRIP=true
}

src_install() {
	emake DESTDIR="${D}" install
}
