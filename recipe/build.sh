set -eu

./configure \
    --prefix="$PREFIX" \
    --enable-static=no \
    --enable-shared=yes

make
make check || { cat ./test-suite.log && false; }
