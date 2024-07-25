MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug.log
set -x

# var
API=`getprop ro.build.version.sdk`

# prop
resetprop -n persist.sys.assert.panic true

# wait
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 10
done

# list
PKGS=`cat $MODPATH/package.txt
       com.oplus.athena:pinner
       com.oplus.uxdesign:uxCenterProvider`
for PKG in $PKGS; do
  magisk --denylist rm $PKG 2>/dev/null
  magisk --sulist add $PKG 2>/dev/null
done
if magisk magiskhide sulist; then
  for PKG in $PKGS; do
    magisk magiskhide add $PKG
  done
else
  for PKG in $PKGS; do
    magisk magiskhide rm $PKG
  done
fi

# grant
PKG=com.oplus.launcher
if appops get $PKG > /dev/null 2>&1; then
  appops set $PKG SYSTEM_ALERT_WINDOW allow
  if [ "$API" -ge 33 ]; then
    appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
  fi
  if [ "$API" -ge 30 ]; then
    appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
  fi
  PKGOPS=`appops get $PKG`
  UID=`dumpsys package $PKG 2>/dev/null | grep -m 1 Id= | sed -e 's|    userId=||g' -e 's|    appId=||g'`
  if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
    UIDOPS=`appops get --uid "$UID"`
  fi
fi

# grant
PKG=com.oplus.athena
if appops get $PKG > /dev/null 2>&1; then
  appops set $PKG SYSTEM_ALERT_WINDOW allow
  if [ "$API" -ge 33 ]; then
    appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
  fi
  if [ "$API" -ge 30 ]; then
    appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
  fi
  PKGOPS=`appops get $PKG`
  UID=`dumpsys package $PKG 2>/dev/null | grep -m 1 Id= | sed -e 's|    userId=||g' -e 's|    appId=||g'`
  if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
    UIDOPS=`appops get --uid "$UID"`
  fi
fi

# grant
PKG=com.oplus.uxdesign
if appops get $PKG > /dev/null 2>&1; then
  if [ "$API" -ge 33 ]; then
    appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
  fi
  if [ "$API" -ge 30 ]; then
    appops set $PKG MANAGE_EXTERNAL_STORAGE allow
    appops set $PKG NO_ISOLATED_STORAGE allow
    appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
  fi
  PKGOPS=`appops get $PKG`
  UID=`dumpsys package $PKG 2>/dev/null | grep -m 1 Id= | sed -e 's|    userId=||g' -e 's|    appId=||g'`
  if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
    UIDOPS=`appops get --uid "$UID"`
  fi
fi







