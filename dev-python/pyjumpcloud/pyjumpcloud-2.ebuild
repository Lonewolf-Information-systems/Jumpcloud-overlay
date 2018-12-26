# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION=" Python client code for the JumpCloud API v1 and v2. "
HOMEPAGE="https://github.com/TheJumpCloud/jcapi-python/"
PYTHON_COMPAT=( python{2_7,3_6,3_7} )

inherit distutils-r1 ${SCM}
if [[ ${PV} == *9999 ]] ; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/TheJumpCloud/jcapi-python.git"
	## git path filter. https://github.com/TheJumpCloud/jcapi-python.git#subdirectory=jcapiv2
## dont care about 1.x  , dont need whole tree. and not in a branch, 
## add 9999 or Git clone & python setup.py install etc.. clone latest commits. use with caution.
fi

if [[ ${PV} == *9999 ]] ; then
	SRC_URI="https://github.com/TheJumpCloud/jcapi-python/archive/1.1.1.tar.gz"
	KEYWORDS=""
else


EGIT_REPO_URI="https://github.com/TheJumpCloud/jcapi-python.git"
EGIT_COMMIT"d550617b2c4de48f2efdb82c9199ee58d16e15a8"
## githash filter # d550617b2c4de48f2efdb82c9199ee58d16e15a8
## git path filter. https://github.com/TheJumpCloud/jcapi-python.git#subdirectory=jcapiv2
## dont care about 1.x , dont need whole tree. and not in a branch, 
fi

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/certifi
		dev-python/six 
		dev-python/python_dateutil
		dev-python/setuptools 
		dev-python/urllib3"
RDEPEND="${DEPEND}"

## fix ruby/python API as it is Split. 1.x/2.x 
src_prepare() {
mv  ${WORKDIR}/${PV}/jcapiv2/* ${WORKDIR}/${PV}/

}