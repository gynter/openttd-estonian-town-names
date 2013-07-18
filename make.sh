#!/bin/sh
NMLC=$(which nmlc)
TAR=$(which tar)

ROOT="`pwd`/`dirname $0`"
VERSION=$(grep VERSION "${ROOT}/src/custom_tags.txt" | cut -d':' -f2)
NAME="estonian_town_names"
BUILD="${NAME}-${VERSION}"

if [ -z ${NMLC} ]; then
    echo "ERROR: NML not found!"
    exit 1
fi

if [ -z ${VERSION} ]; then
    echo "ERROR: Failed to get version!"
    exit 1
fi

mkdir -p "${ROOT}/build/${BUILD}"
mkdir -p "${ROOT}/dist/"
${NMLC} --grf="${ROOT}/build/${BUILD}/${NAME}.grf" \
        --custom-tags="${ROOT}/src/custom_tags.txt" \
        --lang-dir="${ROOT}/src/lang" \
        --default-lang="english.lng" \
        "${ROOT}/src/${NAME}.nml"

cp ${ROOT}/LICENSE.md ${ROOT}/build/${BUILD}/license
cp ${ROOT}/README.md ${ROOT}/build/${BUILD}/readme
cd "${ROOT}/build/"
${TAR} -cf "${ROOT}/dist/${BUILD}.tar" "${BUILD}"
rm -R "${ROOT}/build/${BUILD}"

exit 0
