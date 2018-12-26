Close
# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby23 ruby24 ruby25 ruby26 ruby"

RUBY_FAKEGEM_NAME="jumpcloud"



inherit ruby-fakegem

DESCRIPTION="JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph."
LICENSE="Ruby"


SLOT="0"
IUSE=""
KEYWORDS="amd64 ~ppc x86"

ruby_add_rdepend "dev-ruby/libxml
dev-ruby/http 
dev-ruby/bundler
dev-ruby/typhoeus
dev-ruby/ruby_gntp"


HOMEPAGE="https://github.com/TheJumpCloud/jumpcloud-ruby-gem"
#https://github.com/TheJumpCloud/jumpcloud-ruby-gem.git
#https://rubygems.org/gems/jumpcloud/versions/0.4.0
# https://rubygems.org/downloads/jumpcloud-0.4.0.gem
SRC_URI="https://github.com/TheJumpCloud/jcapi-python/archive/1.1.1.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~*"
IUSE=""
RESTRICT="test"


src_prepare() {
	cp -r "${WORKDIR}/pyjumpcloud-${PV}/"* "${S}/pyjumpcloud/"
	default
}

## fix ruby/python API as it is Split. 1.x/2.x 
src_prepare() {
mv  $CWD/jcapiv2/* $CWD/

}

all_ruby_install() {
	all_fakegem_install


}