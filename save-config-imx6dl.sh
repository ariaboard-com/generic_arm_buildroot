#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="imx6dl"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="imx6dl-sabresd-a8_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    echo "No config file found!"
    exit 1
fi

cp -v "${BUILDDIR}/.config" "${WORKDIR}/configs/${CONFIGFILE}"

echo "Saved config to ${CONFIGFILE}."
