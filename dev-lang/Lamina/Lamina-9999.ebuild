# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit cmake
inherit git-r3
DESCRIPTION="Lamina is a procedural programming language focused on precise mathematical computation."
HOMEPAGE="https://github.com/Lamina-dev/Lamina"
EGIT_REPO_URI="https://github.com/Lamina-dev/Lamina.git"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
EGIT_DEPTH=1
DEPEND="
    dev-build/cmake
	dev-vcs/git
"
src_unpack(){
    git-r3_src_unpack
}
src_prepare(){
    cmake_src_prepare
    default
	git submodule update --init --recursive
}
src_configure() {
    cmake_src_configure
}

src_compile() {
    cmake_src_compile
}

src_install() {
    cmake_src_install
}
