#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="am335x"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="am335x_novotech_demo_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    echo "No config file found!"
    exit 1
fi

cp -v "${BUILDDIR}/.config" "${WORKDIR}/configs/${CONFIGFILE}"

echo "Saved config to ${CONFIGFILE}."
