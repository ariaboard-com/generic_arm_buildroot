#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="imx6q"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="imx6q-sabresd-a8-2g_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    cp -v "${WORKDIR}/configs/${CONFIGFILE}" "${BUILDDIR}/.config"
fi

make O="${BUILDDIR}"
