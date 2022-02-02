# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=7
inherit git-r3

DESCRIPTION="A status bar generator for lemonbar written in plain C"
HOMEPAGE="https://github.com/b3nj5m1n/lemonblocks"
EGIT_REPO_URI="https://github.com/b3nj5m1n/lemonblocks"

LICENSE="MIT"
SLOT="0"
IUSE="scripts +example"

DEPEND="|| ( x11-misc/lemonbar x11-misc/lemonbar-xft )"
RDEPEND="${DEPEND}"

src_compile() {
	emake STRIP=true
}

src_install() {
	emake BINDIR="${D}/usr/bin" install

	if use scripts; then
		emake BINDIR="${D}/usr/bin" scripts
	fi

	if use example; then
		insinto "/usr/share/doc/${PF}/examples"
		doins -r config.txt
	fi
}
