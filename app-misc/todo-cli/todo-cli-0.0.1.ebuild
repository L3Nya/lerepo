# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} pypy3  )
inherit distutils-r1 git-r3

DESCRIPTION="Command-line tool to manage Todo lists"
HOMEPAGE="https://github.com/francoischalifour/todo-cli"
EGIT_REPO_URI="https://github.com/francoischalifour/todo-cli"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
