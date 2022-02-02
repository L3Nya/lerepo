# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
	todo-tui-${PV}
	cc-1.0.68
	coord2d-0.2.4
	libc-0.2.97
	ncurses-5.101.0
	pkg-config-0.3.19
"

inherit cargo

DESCRIPTION="Simple Interactive Terminal Todo App in Rust"
HOMEPAGE="https://github.com/abdellatif-dev/todo-tui"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror"
