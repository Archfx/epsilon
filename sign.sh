#!/bin/bash

KEYSDIR="$1"
OUTFILE="$2"



if [ -z "$KEYSDIR" ]; then
    KEYSDIR="$HOME/.android-certs"
fi

if [ -z "$OUTFILE" ]; then
    OUTFILE="signed-target_files.zip"
fi

sign_target_files_apks -o -d $KEYSDIR \
    --extra_apks AdServicesApk.apk=$KEYSDIR/releasekey \
    --extra_apks HalfSheetUX.apk=$KEYSDIR/releasekey \
    --extra_apks OsuLogin.apk=$KEYSDIR/releasekey \
    --extra_apks SafetyCenterResources.apk=$KEYSDIR/releasekey \
    --extra_apks ServiceConnectivityResources.apk=$KEYSDIR/releasekey \
    --extra_apks ServiceUwbResources.apk=$KEYSDIR/releasekey \
    --extra_apks ServiceWifiResources.apk=$KEYSDIR/releasekey \
    --extra_apks WifiDialog.apk=$KEYSDIR/releasekey \
    $OUT/obj/PACKAGING/target_files_intermediates/*-target_files*.zip \
    $OUTFILE


# --extra_apks com.android.adbd.apex=$KEYSDIR/com.android.adbd \
    # --extra_apks com.android.adservices.apex=$KEYSDIR/com.android.adservices \
    # --extra_apks com.android.adservices.api.apex=$KEYSDIR/com.android.adservices.api \
    # --extra_apks com.android.appsearch.apex=$KEYSDIR/com.android.appsearch \
    # --extra_apks com.android.art.apex=$KEYSDIR/com.android.art \
    # --extra_apks com.android.bluetooth.apex=$KEYSDIR/com.android.bluetooth \
    # --extra_apks com.android.btservices.apex=$KEYSDIR/com.android.btservices \
    # --extra_apks com.android.cellbroadcast.apex=$KEYSDIR/com.android.cellbroadcast \
    # --extra_apks com.android.compos.apex=$KEYSDIR/com.android.compos \
    # --extra_apks com.android.configinfrastructure.apex=$KEYSDIR/com.android.configinfrastructure \
    # --extra_apks com.android.connectivity.resources.apex=$KEYSDIR/com.android.connectivity.resources \
    # --extra_apks com.android.conscrypt.apex=$KEYSDIR/com.android.conscrypt \
    # --extra_apks com.android.devicelock.apex=$KEYSDIR/com.android.devicelock \
    # --extra_apks com.android.extservices.apex=$KEYSDIR/com.android.extservices \
    # --extra_apks com.android.graphics.pdf.apex=$KEYSDIR/com.android.graphics.pdf \
    # --extra_apks com.android.hardware.biometrics.face.virtual.apex=$KEYSDIR/com.android.hardware.biometrics.face.virtual \
    # --extra_apks com.android.hardware.biometrics.fingerprint.virtual.apex=$KEYSDIR/com.android.hardware.biometrics.fingerprint.virtual \
    # --extra_apks com.android.hardware.boot.apex=$KEYSDIR/com.android.hardware.boot \
    # --extra_apks com.android.hardware.cas.apex=$KEYSDIR/com.android.hardware.cas \
    # --extra_apks com.android.hardware.wifi.apex=$KEYSDIR/com.android.hardware.wifi \
    # --extra_apks com.android.healthfitness.apex=$KEYSDIR/com.android.healthfitness \
    # --extra_apks com.android.hotspot2.osulogin.apex=$KEYSDIR/com.android.hotspot2.osulogin \
    # --extra_apks com.android.i18n.apex=$KEYSDIR/com.android.i18n \
    # --extra_apks com.android.ipsec.apex=$KEYSDIR/com.android.ipsec \
    # --extra_apks com.android.media.apex=$KEYSDIR/com.android.media \
    # --extra_apks com.android.media.swcodec.apex=$KEYSDIR/com.android.media.swcodec \
    # --extra_apks com.android.mediaprovider.apex=$KEYSDIR/com.android.mediaprovider \
    # --extra_apks com.android.nearby.halfsheet.apex=$KEYSDIR/com.android.nearby.halfsheet \
    # --extra_apks com.android.networkstack.tethering.apex=$KEYSDIR/com.android.networkstack.tethering \
    # --extra_apks com.android.neuralnetworks.apex=$KEYSDIR/com.android.neuralnetworks \
    # --extra_apks com.android.ondevicepersonalization.apex=$KEYSDIR/com.android.ondevicepersonalization \
    # --extra_apks com.android.os.statsd.apex=$KEYSDIR/com.android.os.statsd \
    # --extra_apks com.android.permission.apex=$KEYSDIR/com.android.permission \
    # --extra_apks com.android.resolv.apex=$KEYSDIR/com.android.resolv \
    # --extra_apks com.android.rkpd.apex=$KEYSDIR/com.android.rkpd \
    # --extra_apks com.android.runtime.apex=$KEYSDIR/com.android.runtime \
    # --extra_apks com.android.safetycenter.resources.apex=$KEYSDIR/com.android.safetycenter.resources \
    # --extra_apks com.android.scheduling.apex=$KEYSDIR/com.android.scheduling \
    # --extra_apks com.android.sdkext.apex=$KEYSDIR/com.android.sdkext \
    # --extra_apks com.android.support.apexer.apex=$KEYSDIR/com.android.support.apexer \
    # --extra_apks com.android.telephony.apex=$KEYSDIR/com.android.telephony \
    # --extra_apks com.android.telephonymodules.apex=$KEYSDIR/com.android.telephonymodules \
    # --extra_apks com.android.tethering.apex=$KEYSDIR/com.android.tethering \
    # --extra_apks com.android.tzdata.apex=$KEYSDIR/com.android.tzdata \
    # --extra_apks com.android.uwb.apex=$KEYSDIR/com.android.uwb \
    # --extra_apks com.android.uwb.resources.apex=$KEYSDIR/com.android.uwb.resources \
    # --extra_apks com.android.virt.apex=$KEYSDIR/com.android.virt \
    # --extra_apks com.android.vndk.current.apex=$KEYSDIR/com.android.vndk.current \
    # --extra_apks com.android.vndk.current.on_vendor.apex=$KEYSDIR/com.android.vndk.current.on_vendor \
    # --extra_apks com.android.wifi.apex=$KEYSDIR/com.android.wifi \
    # --extra_apks com.android.wifi.dialog.apex=$KEYSDIR/com.android.wifi.dialog \
    # --extra_apks com.android.wifi.resources.apex=$KEYSDIR/com.android.wifi.resources \
    # --extra_apks com.google.pixel.camera.hal.apex=$KEYSDIR/com.google.pixel.camera.hal \
    # --extra_apks com.google.pixel.vibrator.hal.apex=$KEYSDIR/com.google.pixel.vibrator.hal \
    # --extra_apks com.qorvo.uwb.apex=$KEYSDIR/com.qorvo.uwb \
    # --extra_apex_payload_key com.android.adbd.apex=$KEYSDIR/com.android.adbd.pem \
    # --extra_apex_payload_key com.android.adservices.apex=$KEYSDIR/com.android.adservices.pem \
    # --extra_apex_payload_key com.android.adservices.api.apex=$KEYSDIR/com.android.adservices.api.pem \
    # --extra_apex_payload_key com.android.appsearch.apex=$KEYSDIR/com.android.appsearch.pem \
    # --extra_apex_payload_key com.android.art.apex=$KEYSDIR/com.android.art.pem \
    # --extra_apex_payload_key com.android.bluetooth.apex=$KEYSDIR/com.android.bluetooth.pem \
    # --extra_apex_payload_key com.android.btservices.apex=$KEYSDIR/com.android.btservices.pem \
    # --extra_apex_payload_key com.android.cellbroadcast.apex=$KEYSDIR/com.android.cellbroadcast.pem \
    # --extra_apex_payload_key com.android.compos.apex=$KEYSDIR/com.android.compos.pem \
    # --extra_apex_payload_key com.android.configinfrastructure.apex=$KEYSDIR/com.android.configinfrastructure.pem \
    # --extra_apex_payload_key com.android.connectivity.resources.apex=$KEYSDIR/com.android.connectivity.resources.pem \
    # --extra_apex_payload_key com.android.conscrypt.apex=$KEYSDIR/com.android.conscrypt.pem \
    # --extra_apex_payload_key com.android.devicelock.apex=$KEYSDIR/com.android.devicelock.pem \
    # --extra_apex_payload_key com.android.extservices.apex=$KEYSDIR/com.android.extservices.pem \
    # --extra_apex_payload_key com.android.graphics.pdf.apex=$KEYSDIR/com.android.graphics.pdf.pem \
    # --extra_apex_payload_key com.android.hardware.biometrics.face.virtual.apex=$KEYSDIR/com.android.hardware.biometrics.face.virtual.pem \
    # --extra_apex_payload_key com.android.hardware.biometrics.fingerprint.virtual.apex=$KEYSDIR/com.android.hardware.biometrics.fingerprint.virtual.pem \
    # --extra_apex_payload_key com.android.hardware.boot.apex=$KEYSDIR/com.android.hardware.boot.pem \
    # --extra_apex_payload_key com.android.hardware.cas.apex=$KEYSDIR/com.android.hardware.cas.pem \
    # --extra_apex_payload_key com.android.hardware.wifi.apex=$KEYSDIR/com.android.hardware.wifi.pem \
    # --extra_apex_payload_key com.android.healthfitness.apex=$KEYSDIR/com.android.healthfitness.pem \
    # --extra_apex_payload_key com.android.hotspot2.osulogin.apex=$KEYSDIR/com.android.hotspot2.osulogin.pem \
    # --extra_apex_payload_key com.android.i18n.apex=$KEYSDIR/com.android.i18n.pem \
    # --extra_apex_payload_key com.android.ipsec.apex=$KEYSDIR/com.android.ipsec.pem \
    # --extra_apex_payload_key com.android.media.apex=$KEYSDIR/com.android.media.pem \
    # --extra_apex_payload_key com.android.media.swcodec.apex=$KEYSDIR/com.android.media.swcodec.pem \
    # --extra_apex_payload_key com.android.mediaprovider.apex=$KEYSDIR/com.android.mediaprovider.pem \
    # --extra_apex_payload_key com.android.nearby.halfsheet.apex=$KEYSDIR/com.android.nearby.halfsheet.pem \
    # --extra_apex_payload_key com.android.networkstack.tethering.apex=$KEYSDIR/com.android.networkstack.tethering.pem \
    # --extra_apex_payload_key com.android.neuralnetworks.apex=$KEYSDIR/com.android.neuralnetworks.pem \
    # --extra_apex_payload_key com.android.ondevicepersonalization.apex=$KEYSDIR/com.android.ondevicepersonalization.pem \
    # --extra_apex_payload_key com.android.os.statsd.apex=$KEYSDIR/com.android.os.statsd.pem \
    # --extra_apex_payload_key com.android.permission.apex=$KEYSDIR/com.android.permission.pem \
    # --extra_apex_payload_key com.android.resolv.apex=$KEYSDIR/com.android.resolv.pem \
    # --extra_apex_payload_key com.android.rkpd.apex=$KEYSDIR/com.android.rkpd.pem \
    # --extra_apex_payload_key com.android.runtime.apex=$KEYSDIR/com.android.runtime.pem \
    # --extra_apex_payload_key com.android.safetycenter.resources.apex=$KEYSDIR/com.android.safetycenter.resources.pem \
    # --extra_apex_payload_key com.android.scheduling.apex=$KEYSDIR/com.android.scheduling.pem \
    # --extra_apex_payload_key com.android.sdkext.apex=$KEYSDIR/com.android.sdkext.pem \
    # --extra_apex_payload_key com.android.support.apexer.apex=$KEYSDIR/com.android.support.apexer.pem \
    # --extra_apex_payload_key com.android.telephony.apex=$KEYSDIR/com.android.telephony.pem \
    # --extra_apex_payload_key com.android.telephonymodules.apex=$KEYSDIR/com.android.telephonymodules.pem \
    # --extra_apex_payload_key com.android.tethering.apex=$KEYSDIR/com.android.tethering.pem \
    # --extra_apex_payload_key com.android.tzdata.apex=$KEYSDIR/com.android.tzdata.pem \
    # --extra_apex_payload_key com.android.uwb.apex=$KEYSDIR/com.android.uwb.pem \
    # --extra_apex_payload_key com.android.uwb.resources.apex=$KEYSDIR/com.android.uwb.resources.pem \
    # --extra_apex_payload_key com.android.virt.apex=$KEYSDIR/com.android.virt.pem \
    # --extra_apex_payload_key com.android.vndk.current.apex=$KEYSDIR/com.android.vndk.current.pem \
    # --extra_apex_payload_key com.android.vndk.current.on_vendor.apex=$KEYSDIR/com.android.vndk.current.on_vendor.pem \
    # --extra_apex_payload_key com.android.wifi.apex=$KEYSDIR/com.android.wifi.pem \
    # --extra_apex_payload_key com.android.wifi.dialog.apex=$KEYSDIR/com.android.wifi.dialog.pem \
    # --extra_apex_payload_key com.android.wifi.resources.apex=$KEYSDIR/com.android.wifi.resources.pem \
    # --extra_apex_payload_key com.google.pixel.camera.hal.apex=$KEYSDIR/com.google.pixel.camera.hal.pem \
    # --extra_apex_payload_key com.google.pixel.vibrator.hal.apex=$KEYSDIR/com.google.pixel.vibrator.hal.pem \
    # --extra_apex_payload_key com.qorvo.uwb.apex=$KEYSDIR/com.qorvo.uwb.pem \