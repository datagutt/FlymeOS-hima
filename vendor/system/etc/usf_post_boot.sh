#!/system/bin/sh
# Copyright (c) 2014, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#
# LeeDrOiD M9

setenforce 0

# Busybox Runparts
busybox run-parts /system/etc/init.d/

#Remount Corectly
mount -o remount,noatime,nodiratime,nodelalloc,noauto_da_alloc,nodev,data=ordered,nobh,barrier=0 -t auto /system
mount -o remount,noatime,nodiratime,nodelalloc,noauto_da_alloc,nosuid,nodev,data=ordered,nobh,barrier=0 -t auto /data
mount -o remount,noatime,nodiratime,nodelalloc,noauto_da_alloc,nosuid,nodev,data=ordered,nobh,barrier=0 -t auto /cache

#Clean Caches
find /data/data/*/cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/*/cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/*/*/cache/ -depth -mindepth 1 -exec rm -Rf {} \;

find /data/data/*/Cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/Cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/*/Cache/ -depth -mindepth 1 -exec rm -Rf {} \;
find /data/data/*/*/*/*/Cache/ -depth -mindepth 1 -exec rm -Rf {} \;

rm -Rf /data/data/com.facebook.katana/files/video-cache/*

dir0=/data/usf
pcm_ind_file=$dir0/pcm_inds.txt
pcm_file=/proc/asound/pcm

tx_rx_patterns=(tx2- rx2-)
dev_ids=("0" "0")
cards=("0" "0")
found_num=0

# Run usf_settings script
if [ -f /system/etc/usf_settings.sh ]; then
  source /system/etc/usf_settings.sh
fi

while read pcm_entry; do
    for i in 0 1; do
        echo $pcm_entry
        id="${pcm_entry##*"${tx_rx_patterns[$i]}"}"
        case "$pcm_entry" in
            "$id")
            ;;

            *)
            cards[$i]=${pcm_entry:0:2}
            dev_ids[$i]=${pcm_entry:3:2}
            found_num=$(( $found_num + 1))
            i=2
            ;;
        esac

        case $i in
            2)
            break
            ;;
        esac
    done

    case $found_num in
        2)
        break
        ;;
    esac

done < $pcm_file

echo ${dev_ids[0]}" "${dev_ids[1]}" "${cards[0]}" "${cards[1]}>$pcm_ind_file
chmod 0644 $pcm_ind_file

# Post-boot start of selected USF based calculators
for i in $(cat $dir0/auto_start.txt); do
   start $i
done

#Additional shit from  @Baadnewz
#misc tweaks
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; then
#Enable Developer settings
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update secure set value = 1 where name = 'development_settings_enabled'"
#Enable Install non market apps
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update secure set value = 1 where name = 'install_non_market_apps'"
#Force Disable Volume Safe Warning
	sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update global set value = 0 where name = 'audio_safe_volume_state'"
fi
#Reduce Google Play Services Alarm Wakelocks
if [ -e /data/data/com.google.android.gsf/databases/gservices.db ]; then
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'perform_market_checkin' and value = 'true'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'market_force_checkin' and value = -1"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'checkin_interval'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'checkin_dropbox_upload' and value = 'true'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'checkin_dropbox_upload:system_update' and value = 'true'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'checkin_dropbox_upload:event_log' and value = 'true'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'checkin_dropbox_upload:SYSTEM_RECOVERY_LOG' and value = 'true'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'market_force_checkin' and value = 1"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'secure:bandwidth_checkin_stat_interval'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'secure:send_action_app_error'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 0 where name = 'send_action_app_error'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update saved_secure set value = 'NULL' where name = 'send_action_app_error'"
	sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "update main set value = 'false' where name = 'vending_checkout_qa_service' and value = 'true'"
fi
