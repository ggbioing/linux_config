# NEUROIMAGING
alias ggdcm2nii='mri_convert -it DICOM -i '
alias grep_adni='grep -E "[0-9]{3}_S_[0-9]{4}"'
alias freeview_aal="freeview ${SOFTWAREDIR}/MATLAB/spm12/templates/aal/atlas/AAL.nii:colormap=lut:lut=${SOFTWAREDIR}/MATLAB/spm12/templates/aal/atlas/AAL_LUT.txt"

# TEXT PROCESSING
alias tolower='awk '\''{print tolower($0)}'\'
alias toupper='awk '\''{print toupper($0)}'\' 
rmd () {
  pandoc $1 | lynx -stdin
}
alias vimd='vim document.tex'

# GENERAL
alias aliases='nano ~/.bash_aliases && source ~/.bash_aliases'
alias ls='ls -F -v -1 --color=auto --group-directories-first'
alias rsyncssh='rsync -avhHAXx --numeric-ids --progress -e "ssh -T -c arcfour -o Compression=no -x"'
alias tree='tree --dirsfirst -C'
alias lsbiblio='ls | tr "-" "\t"'
alias freeall='free && sync && sudo echo 3 > /proc/sys/vm/drop_caches && free'
alias benchall='benchcpu && benchdisk'
alias benchdisk='echo DISK && dd bs=1M count=256 if=/dev/zero of=test conv=fdatasync'
alias benchcpu='echo CPU && dd if=/dev/zero bs=1M count=1024 | md5sum'
alias clearCache='free -g && sync && echo 3 > /proc/sys/vm/drop_caches && free -g'
alias su='echo ,KuL8ko8l9imkko9l, && echo QLLxRvy8wyctMzCqJttk9G4h && su'
alias frequencies='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies'
alias whos='last -da | grep -vE "^(root|reboot|asmith) "'
alias dubar='du -x --max-depth=1|sort -rn|awk -F / -v c=$COLUMNS '\''NR==1{t=$1} NR>1{r=int($1/t*c+.5); b="\033[1;31m"; for (i=0; i<r; i++) b=b"#"; printf " %5.2f%% %s\033[0m %s\n", $1/t*100, b, $2}'\''|tac'
alias scanimage_pnm_gray_300='scanimage --buffer-size=128 --format=pnm --mode="True Gray" --resolution=300'
alias whatIsMyIp='dig +short myip.opendns.com @resolver1.opendns.com && curl ipinfo.io'
alias grep_ip="grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"
alias win2linuxFileNames="prename 's/ /_/g' * && prename 's/_-_/-/g' * && prename 's/__/_/g' *"
alias skype='env LD_PRELOAD=/usr/lib/i386-linux-gnu/libv4l/v4l1compat.so skype'
alias resource='source ~/.bashrc'
alias monitor_off='xset dpms force off'
alias nano='vim'
alias wget='wget --continue'
myPasswords() {
	local ITEM=$1
	openssl des3 -pbkdf2 -md sha256 -d -in ${HOME}/Dropbox/home/siti.csv.des3 -out siti.csv
	# openssl des3 -pbkdf2 -md sha256 -e -out ${HOME}/Dropbox/home/siti.csv.des3 -in siti.csv
	#openssl des3 -md sha256 < siti.csv > ${HOME}/Dropbox/home/siti.csv.des3
	grep -i $ITEM siti.csv
	rm -f siti.csv
}
updatelog() {
	local LOGFILE="${HOME}/Dropbox/log/log.txt"
	echo "[$(date +%Y-%m-%d)]" >> ${LOGFILE}
	nano ${LOGFILE}
}
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Dictionaries and Manuals
alias myManual="vim ${HOME}/Dropbox/HowTo/manual.txt.sh"
alias myLateX="vim ${HOME}/Dropbox/HowTo/latex.tex"

# MATH
cumsum(){
	awk 'BEGIN {sum=0} {sum=sum+$0; print sum}'
}
alias ggGB='awk '\''{sum+=$1}END{print sum/1024/1024/1024" GB"}'\'
# SSH
alias camcan='echo dUYmcYrlL.A8i_ERRE-c && ssh camcan64@gate0.mrc-cbu.cam.ac.uk'

# MONITORING
alias conflicts='sudo arp-scan -l -I'
alias iotop='sudo iotop --only'
alias utop="htop -u $USER"
#alias mytree=ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Cblue - %cn %Creset' --abbrev-commit --date=relative"

# Software
alias briss="java -Xms512m -Xmx4096m -jar $HOME/Software/briss-0.9/briss-0.9.jar"
alias Git='echo "@*8O<vEC.^*s#Q]p" && git'
alias docear='sh /usr/local/docear/docear.sh'
alias ef='exiftool'
alias kSar='sh /usr/local/kSar/run.sh'
#alias mango='java -Xms64M -Xmx2000M -XX:MaxDirectMemorySize=8g -jar /usr/local/Mango/Mango.jar'
alias matlab='sh /usr/local/matlab/bin/matlab'
alias oxygen='sh /usr/local/oxygen/oxygen.sh'
alias psqlcsv='psql -A -F","'
alias spm8='sh /usr/local/spm8/run_spm8.sh /usr/local/matlab_7.10_R2010a/'
alias spm12='/home/luigi/Software/matlab/spm12_standalone/run_spm12.sh /home/luigi/Software/matlab/MCR/v713/'
alias startmricro='/usr/local/mricro/startmricro'
alias telegram='/usr/local/Telegram/Telegram'

# MPLAYER
alias mplayer='mplayer -prefer-ipv4 -zoom -af volnorm -af scaletempo'
alias playlist='mplayer -af scaletempo -af volnorm -fs -playlist playlist'
#alias mplayer='mplayer -prefer-ipv4 -af scaletempo -vo x11 -zoom'

# RADIO
radios(){
cat << EOF
franceinfo
franceBleuAzur
isoradio
radiouno
radiodue
radiotre
rts-1ere
rockNrollRadio
martiniInTheMorning
mozart
beethoven
rtl102.5
rds
rmc
classicFM
rainymood
cabrel
eros
EOF
}
alias franceinfo='mplayer http://direct.franceinfo.fr/live/franceinfo-midfi.mp3'
alias franceBleuAzur='mplayer https://direct.francebleu.fr/live/fbazur-midfi.mp3'
alias isoradio='mplayer -af scaletempo https://icestreaming.rai.it/6.mp3'
alias radiouno='mplayer -af scaletempo rtsp://live.media.rai.it/broadcast/radiouno.rm'
alias radiodue='mplayer -af scaletempo rtsp://live.media.rai.it/broadcast/radiodue.rm'
alias radiotre='mplayer -af scaletempo rtsp://live.media.rai.it/broadcast/radiotre.rm'
alias rts-1ere='mplayer -af scaletempo http://stream.srg-ssr.ch/m/la-1ere/aacp_96'
alias rockNrollRadio='mplayer http://94.23.67.20:8000'
alias martiniInTheMorning='mplayer http://mitm.digistream.info:8052/'
alias mozart='mplayer -cache 1024 http://streaming.radionomy.com/Radio-Mozart'
alias beethoven='mplayer -cache 1024 http://streaming.radionomy.com/Beethoven-Radio'
alias rtl102.5='mplayer -af scaletempo http://shoutcast.rtl.it:3010/stream/1/'
alias rds='mplayer -af scaletempo http://46.37.20.205:8000/rdsmp3'
alias rmc='mplayer https://icy.unitedradio.it/RMC.mp3'
alias classicFM='mplayer -af scaletempo http://media-ice.musicradio.com/ClassicFM'
alias rainymood="mplayer -shuffle -volume 30 -loop 0 -playlist $HOME/Dropbox/Music/rainymood/playlist.txt"
alias cabrel="mplayer -playlist ${HOME}/Dropbox/Music/French/Francis\ Cabrel/Samedi\ soir\ sur\ la\ terre/mp3/playlist"
alias eros="mplayer -playlist ${HOME}/Dropbox/Music/Ramazzotti/Vita-ce-n-è/playlist"

# RDESKTOP
alias rdesktop_win_inria="rdesktop -g 1600x1000 -u lantelmi@ad.inria.fr -r disk:LOGIN=$HOME bise.inria.fr"

dcmd() {
        # DICOM DECOMPRESS FUNCTION
	local dcmfile=$1
        # dcmftest: Test if file uses DICOM part 10 format
        dcmftest $dcmfile &> /dev/null
	local retcode=$?
        if [ $retcode -eq 0 ]; then
                echo "$dcmfile: processing..."
                local tipo=`dcmdump $dcmfile | grep '(0002,0010)'`
                if [[ "$tipo" == *LittleEndianExplicit* ]]; then
                        echo "already uncompressed."
                elif [[ "$tipo" == *LittleEndianImplicit* ]]; then
                        echo "already uncompressed."
                elif [[ "$tipo" == *JPEG2000* ]]; then
                        echo "JPEG2000LosslessOnly not supported"
                elif [[ "$tipo" == *JPEGLossless* ]]; then
                        echo "uncompressing JPEG..."
                        dcmdjpeg $dcmfile  $dcmfile
                elif [[ "$tipo" == *JPEGLSLossless* ]]; then
                        echo "uncompressing JPEG-LS..."
                        dcmdjpls $dcmfile  $dcmfile
                elif [[ "$tipo" == *RLELossless* ]]; then
                        echo "uncompressing RLE..."
                        dcmdrle $dcmfile  $dcmfile
                fi
        else    
                echo "$dcmfile is not a dicom!"
                #exit 1
        fi
};
export -f dcmd

dcminfo() {
	local DCM=$1
	local PatientName=$(dcmdump $DCM +P 0010,0010)
	local PatientSex=$(dcmdump $DCM +P 0010,0040)
	local PatientAge=$(dcmdump $DCM +P 0010,1010)
	local PatientBirthDate=$(dcmdump $DCM +P 0010,0030)
	local StudyDate=$(dcmdump $DCM +P 0008,0020)
	local Manufacturer=$(dcmdump $DCM +P 0008,0070)
	local FieldStrength=$(dcmdump $DCM +P 0018,0087)
	local ProtocolName=$(dcmdump $DCM +P 0018,1030)
	local SeriesDescription=$(dcmdump $DCM +P 0008,103e)
	local SliceThickness=$(dcmdump $DCM +P 0018,0050)
	local GAP=$(dcmdump $DCM +P 0018,0088)
	local PixelSpacing=$(dcmdump $DCM +P 0028,0030)
	local Rows=$(dcmdump $DCM +P 0028,0010)
	local Cols=$(dcmdump $DCM +P 0028,0011)
	local NSlices=$(dcmdump $DCM +P 2001,1018)
	local TR=$(dcmdump $DCM +P 0018,0080)
	local TE=$(dcmdump $DCM +P 0018,0081)
	local FlipAngle=$(dcmdump $DCM +P 0018,1314)
	local NAS=$(dcmdump $DCM +P 0018,0083)
	local SS=$(dcmdump $DCM +P 2005,100e)
	local RS=$(dcmdump $DCM +P 0028,1053)
	echo -e "$PatientName\n$PatientSex\n$PatientBirthDate\n$StudyDate\n$Manufacturer\n$FieldStrength\n$ProtocolName\n$SeriesDescription\n$SliceThickness\n$GAP\n$PixelSpacing\n$Rows\n$Cols\n$NSlices\n\n$TR\n$TE\n$FlipAngle\n$NAS\n$SS\n$RS"
}
export -f dcminfo

# find ./ -maxdepth 1 -type f | xargs -P 8 -I {} bash -c 'dcmd "$@"' _ {}
#alias dcmdall="find ./ -maxdepth 1 -type f | xargs -P 8 -I {} bash -c 'dcmd \"$@\"' _ {}"
#alias dcmdall="ls * | xargs -P 8 -I {} bash -c 'dcmd \"$@\"' _ {}"

csv2excel() {
	local CSV=$1
	cp $CSV ${CSV}.bkp
	cat ${CSV}.bkp | \
		sed 's/,/;/g' | \
		sed 's/\./,/g' | \
		sed 's/;/";"/g' | \
		sed 's/\(^\|$\)/"/g' > $CSV
}

transpose() {
	local FILE=$1
	awk '
	{ 
		for (i=1; i<=NF; i++)  {
			a[NR,i] = $i
		}
	}
	NF>p { p = NF }
	END {    
		for(j=1; j<=p; j++) {
			str=a[1,j]
			for(i=2; i<=NR; i++){
				str=str" "a[i,j];
			}
			print str
		}
	}' $FILE
}

sform2mat(){
	fslorient -getsform $1 | awk '{RS="";FS="\n";ORS=" "};{for (i=0; i<=NF; i++){if((i%4)==0) printf "\n"; print $(i+1)}}' | sed 1d
}
ggSortUniqSort() {
	sort -n $1 | uniq -c  | sort -nr
}

ggHist() {
	local sortUniqCount=$1
	grep -o -P '^[ ]{1,}[0-9]{1,} ' $sortUniqCount | uniq -c
}
venn() {
	# Venn Diagram
	LEFT=$1
	RIGHT=$2
	LEFT_COUNT=$(comm -23 $LEFT $RIGHT | wc -l)
	COMMON_COUNT=$(comm -12 $LEFT $RIGHT | wc -l)
	RIGHT_COUNT=$(comm -13 $LEFT $RIGHT | wc -l)
	echo "$LEFT  [ $LEFT_COUNT [ $COMMON_COUNT ] $RIGHT_COUNT ] $RIGHT"
}

freeview_pet() {
	freeview -v $1:colormap=pet
} 

freeviewaal() {
	COMP=$1
	freeview -v aal.nii.gz aal_amy_comp_${COMP}.nii.gz:colormap=heat aal_fdg_comp_${COMP}.nii.gz:colormap=heat aal_mri_comp_${COMP}.nii.gz:colormap=heat
}

alias freeview_aseg='freeview -v mri/{T1.mgz,aseg.mgz:colormap=lut:opacity=0.2} -f surf/{lh.white:edgecolor=blue,lh.pial:edgecolor=red,rh.white:edgecolor=blue,rh.pial:edgecolor=red}'
alias freeview_seeg='freeview -v mri/{ref_plus_seeg.nii.gz,aseg.mgz:colormap=lut:opacity=0.2} -f surf/{lh.white:edgecolor=blue,lh.pial:edgecolor=red:annot=BA.annot:name=LX_pial,rh.white:edgecolor=blue,rh.pial:edgecolor=red:annot=BA.annot:name=RX_pial}'
alias freeview_seeg2='freeview -v mri/{ref_plus_seeg.nii.gz,aseg.mgz:colormap=lut:opacity=0.2} -f surf/{lh.white:edgecolor=blue,lh.pial:edgecolor=red:annot=BA.annot,rh.white:edgecolor=blue,rh.pial:edgecolor=red:annot=BA.annot,lh.inflated:annot=BA.annot,rh.inflated:annot=BA.annot}'
alias freeview_surface='freeview -f surf/{lh.pial,lh.inflated,rh.pial,rh.inflated}:annot=aparc.annot'
alias freeview_pial='freeview -v mri/{T1,brainmask}.mgz -f surf/{lh,rh}.pial:annot=aparc.annot:edgecolor=red -f surf/{lh,rh}.white:edgecolor=yellow'
alias freeview_subfields_old='freeview mri/nu.mgz -p-labels mri/posterior_left_* mri/posterior_Left-Hippocampus.mgz -p-labels mri/posterior_right_* mri/posterior_Right-Hippocampus.mgz -p-prefix posterior_ -p-lut $FREESURFER_HOME/FreeSurferColorLUT.txt'
alias freeview_subfields='freeview -v mri/nu.mgz -v mri/{lh,rh}.hippoSfLabels-T1.v10.mgz:colormap=lut:opacity=0.40'
alias freeview_subAseg='freeview -v mri/nu.mgz good_output/mri/aseg.mgz:colormap=lut:opacity=0.2 -p-labels good_output/mri/posterior_left_* good_output/mri/posterior_Left-Hippocampus.mgz -p-labels good_output/mri/posterior_right_* good_output/mri/posterior_Right-Hippocampus.mgz -p-prefix posterior_ -p-lut $FREESURFER_HOME/FreeSurferColorLUT.txt'

alias myWakeOnLan='cat /home/luigi/Dropbox/configFiles/wakeOnLan_list.csv'

alias recent='find ./ -type f -exec stat -c "%y %n" {} + | sort -r | head'
alias recent_access='find ./ -type f -exec stat -c "%x %n" {} + | sort -r | head'
alias recent_change='find ./ -type f -exec stat -c "%z %n" {} + | sort -r | head'
alias recent_today='find ./ -type f -exec ls -al --time-style=+%D {} + | grep `date +%D`'

alias tempo='curl wttr.in && finger nice@graph.no'
alias findf='find -L ./ -type f '
alias findd='find -L ./ -type d '
alias findfgid='find -L ./ -type f -perm -2000'
alias finddgid='find -L ./ -type d -perm -2000'

alias mp3download='youtube-dl -x --audio-format mp3 --audio-quality 0'
# INRIA
alias whoisepione="ls -l /home | grep epione | awk '{print \$3}'"
