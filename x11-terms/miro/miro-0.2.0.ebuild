# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
addr2line-0.14.1
adler-1.0.2
adler32-1.2.0
ahash-0.4.7
aho-corasick-0.7.15
ansi_term-0.11.0
anyhow-1.0.39
approx-0.3.2
atty-0.2.14
autocfg-1.0.1
backtrace-0.3.56
base64-0.13.0
bitflags-1.2.1
block-0.1.6
bytemuck-1.5.1
byteorder-1.4.3
cc-1.0.67
cfg-if-0.1.10
cfg-if-1.0.0
chrono-0.4.19
clap-2.33.3
clipboard-0.5.0
clipboard-win-2.2.0
cloudabi-0.0.3
cmake-0.1.45
cocoa-0.24.0
cocoa-foundation-0.1.0
color_quant-1.1.0
core-foundation-0.9.1
core-foundation-sys-0.8.2
core-graphics-0.22.2
core-graphics-types-0.1.1
core-text-19.2.0
crc32fast-1.2.1
crossbeam-channel-0.5.0
crossbeam-deque-0.8.0
crossbeam-epoch-0.9.3
crossbeam-utils-0.8.3
deflate-0.8.6
doc-comment-0.3.3
either-1.6.1
euclid-0.22.2
evmap-6.0.1
expat-sys-2.1.6
failure-0.1.8
failure_derive-0.1.8
fallible_collections-0.4.0
filedescriptor-0.7.3
fnv-1.0.7
font-loader-0.11.0
foreign-types-0.3.2
foreign-types-shared-0.1.1
freetype-0.7.0
freetype-sys-0.13.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
getrandom-0.1.16
gif-0.11.2
gimli-0.23.0
gl_generator-0.14.0
glium-0.29.0
harfbuzz-sys-0.5.0
hashbrown-0.5.0
hashbrown-0.9.1
hermit-abi-0.1.18
image-0.23.14
iovec-0.1.4
itoa-0.4.7
jobserver-0.1.21
jpeg-decoder-0.1.22
kernel32-sys-0.2.2
khronos_api-3.1.0
lazy_static-1.4.0
libc-0.2.91
libloading-0.7.0
line_drawing-0.8.0
lock_api-0.3.4
log-0.4.14
malloc_buf-0.0.6
maybe-uninit-2.0.0
memchr-2.3.4
memoffset-0.6.1
miniz_oxide-0.3.7
miniz_oxide-0.4.4
mio-0.6.23
miow-0.2.2
net2-0.2.37
nonzero_ext-0.1.5
ntapi-0.3.6
num-0.4.0
num-bigint-0.4.0
num-complex-0.4.0
num-derive-0.3.3
num-integer-0.1.44
num-iter-0.1.42
num-rational-0.3.2
num-rational-0.4.0
num-traits-0.1.43
num-traits-0.2.14
num_cpus-1.13.0
objc-0.2.7
objc-foundation-0.1.1
objc_id-0.1.1
object-0.23.0
once_cell-1.7.2
open-1.6.0
palette-0.5.0
palette_derive-0.5.0
parking_lot-0.9.0
parking_lot_core-0.6.2
phf-0.8.0
phf_codegen-0.8.0
phf_generator-0.8.0
phf_shared-0.8.0
pkg-config-0.3.19
png-0.16.8
ppv-lite86-0.2.10
proc-macro2-1.0.24
quote-1.0.9
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_hc-0.2.0
rand_pcg-0.2.1
ratelimit_meter-5.0.0
rayon-1.5.0
rayon-core-1.9.0
redox_syscall-0.1.57
regex-1.4.5
regex-syntax-0.6.23
resize-0.7.2
rgb-0.8.25
rustc-demangle-0.1.18
rustc_version-0.2.3
ryu-1.0.5
scoped_threadpool-0.1.9
scopeguard-1.1.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.125
serde_derive-1.0.125
serde_json-1.0.64
servo-fontconfig-0.5.1
servo-fontconfig-sys-5.1.0
siphasher-0.3.5
slab-0.4.2
smallvec-0.6.14
smallvec-1.6.1
strsim-0.8.0
syn-1.0.64
synstructure-0.12.4
sysinfo-0.16.5
takeable-option-0.5.0
textwrap-0.11.0
thiserror-1.0.24
thiserror-impl-1.0.24
tiff-0.6.1
time-0.1.44
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.1
utf8parse-0.1.1
vec_map-0.8.2
vtparse-0.1.0
wasi-0.10.0+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
weezl-0.1.4
which-4.0.2
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
ws2_32-sys-0.2.1
x11-2.18.2
x11-clipboard-0.3.3
xcb-0.8.2
xcb-0.9.0
xcb-util-0.3.0
xi-unicode-0.3.0
xml-rs-0.8.3
zstd-0.6.1+zstd.1.4.9
zstd-safe-3.0.1+zstd.1.4.9
zstd-sys-1.4.20+zstd.1.4.9
"

inherit cargo

DESCRIPTION="A GPU-accelerated terminal emulator written in Rust."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/o2sh/miro"
if [ ${PV} == "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/o2sh/${PN}"
else
	SRC_URI="https://github.com/o2sh/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
fi

RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0 WITH LLVM-exception BSD-2-Clause BSD-3-Clause BSL-1.0 ISC MIT Unlicense Zlib"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+X"

REQUIRED_USE="X"

DEPEND=""
RDEPEND=""

src_unpack() {
	if [[ "${PV}" == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_configure() {
	cargo_src_configure --no-default-features
}

src_compile() {
	cargo_src_compile
}
