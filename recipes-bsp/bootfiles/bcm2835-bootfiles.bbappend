RPIFW_DATE = "20180313"

SRC_URI[md5sum] = "d5c97469ce1001658e9d5db39473aa95"
SRC_URI[sha256sum] = "14c42aa0b67ad5fc388fe6ae35e68b18188ea9fdd09eb3e55918449bdd565d48"

FILESEXTRAPATHS_prepend := "${THISDIR}:"
SRC_URI += "file://dt-blob.bin"

do_deploy_prepend() {
    cp ${WORKDIR}/dt-blob.bin ${S}/
}