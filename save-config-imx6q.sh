#!/bin/sh

export WORKDIR="$(pwd)"
export BOARDNAME="imx6q"
export BUILDDIR="${WORKDIR}/output/${BOARDNAME}"
export CONFIGFILE="imx6q-sabresd-a8-2g_defconfig"

mkdir -p "${BUILDDIR}"

if [ ! -f "${BUILDDIR}/.config" ]; then
    echo "No config file found!"
    exit 1
fi

cp -v "${BUILDDIR}/.config" "${WORKDIR}/configs/${CONFIGFILE}"

echo "Saved config to ${CONFIGFILE}."
