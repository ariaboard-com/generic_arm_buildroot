#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="imx6dl"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="imx6dl-sabresd-a8_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    cp -v "${WORKDIR}/configs/${CONFIGFILE}" "${BUILDDIR}/.config"
fi

make O="${BUILDDIR}" menuconfig
