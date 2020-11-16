#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="am335x"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="am335x_novotech_demo_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    cp -v "${WORKDIR}/configs/${CONFIGFILE}" "${BUILDDIR}/.config"
fi

make O="${BUILDDIR}"
