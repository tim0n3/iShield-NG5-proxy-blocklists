! Configuration

ip interface ether2 vlan 10
 description home
 mode static
 designation LAN
 ipv4 10.64.0.1 netmask 255.255.255.0

ip interface ether2 vlan 20
 description guest
 mode static
 designation LAN
 ipv4 10.127.255.254 netmask 255.255.255.128

ip interface ether2 vlan 30
 description IoT
 mode static
 designation LAN
 ipv4 10.30.30.1 netmask 255.255.255.0

ip interface ether1
 description wan
 mode dhcp
 designation WAN

ip interface ether2
 description lan
 mode static
 designation LAN
 ipv4 192.168.1.1 netmask 255.255.255.0

ip interface ether3 vlan 40
 description deadzone
 mode static
 designation LAN
 ipv4 192.168.40.1 netmask 255.255.255.0

ip interface ether3
 description lab
 mode static
 designation LAN

ip interface ether4
 description wan-pppoe
 mode 
 designation WAN

connection 1
 name wan1
 interface ether1
 type static
 gateway 192.168.88.1
 testType ICMP
 testAddress 8.8.8.8 8.8.4.4 www.google.co.za
 testICMPtimeout 800
 testICMPpackets 3
 testICMPinterval 100

networks
 family 10.64.0.0/24
 guest 10.127.255.0/25
 iot 10.30.30.0/24
 lab 192.168.40.0/24
 home 192.168.1.0/24
 scanning-enabled true

hostname ishield

dnsmasq-server
 interface ether2 dhcp dns
 interface ether3.40 dhcp dns
 local-ishield-ip auto
 dhcp-range 192.168.1.100 192.168.1.250 255.255.255.0 12h
 dhcp-range 10.64.0.10 10.64.0.254 255.255.255.0 96h
 dhcp-range 10.127.255.1 10.127.255.253 255.255.255.0 12h
 dhcp-range 10.30.30.1 10.30.30.254 255.255.255.0 12h
 dhcp-range 192.168.40.1 192.168.40.254 255.255.255.0 12h
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.252 # ---- Camera
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.253 # ---- Cudy M1800 Wi-Fi 6 Mesh_AP ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.207 # ---- my-HONOR-X9b-5G ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.204 # ---- my -- Honor 200 lite ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.185 # ---- laptop
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.250 # ---- Raspberry Pi seedbox ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.244 # ---- Invoice Ninja Pi -- Ethernet ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.233 # ---- my-s-S20-FE ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.232 # ---- Camera
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.231 # ---- Camera
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.228 # ---- Huawei MatePad T10s -- kid1 Tablet ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.223 # ---- HP -- my i7 Family laptop ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.237 # ---- kid5-A31 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.208 # ---- UNV -- Camera Kitchen ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.206 # ---- UNV -- Camera Lounge ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.200 # ---- my-pi-5 - eth0 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.196 # ---- UNV -- Camera Bedroom ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.195 # ---- UNV -- Camera Second Room ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.180 # ---- my-s-Air ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.178 # ---- swizbox ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.167 # ---- kid4 - Samsung SM-J410F ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.163 # ---- Bedroom -- Plug ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.162 # ---- kid4's Room -- Plug ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.161 # ---- Freezer -- Plug ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.160 # ---- TV -- Plug ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.254 # ---- Cudy M3000 Wi-Fi 6 Mesh_AP ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.158 # ---- my-s-Air-wlan0 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.155 # ---- laptop
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.153 # ---- Dell laptop eth0 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.154 # ---- my-s-Oukitel-WP200-Pro ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.146 # ---- XBOX 360 (XB360) ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.144 # ---- PlayStation 4 (PS4) ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.149 # ---- my-s-Air-enp0s1 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.143 # ---- PlayStation 3 (PS3) ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.142 # ---- PlayStation 2 (PS2) ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.137
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.199 # ---- my-pi-5 - wifi0 ----
 dhcp-host 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 192.168.1.225 # ---- kid4 ----
 dhcp-option dns-server 1.1.1.3,1.0.0.3
 dns-force-safe-search true
 disable-doh true
 dns-address-redirect domainhome.is5.co.za 192.168.1.1
 dns-address-redirect domainhome2.is5.co.za 192.168.1.1
 dns-servers manual 1.1.1.3 1.0.0.3

route dst default weight 255 connection 1

nat
 mode all

urlgroups
 qosvoip
  domain 52.244.160.207
  domain 52.238.119.141
  domain 52.122.0.0/15
  domain 52.112.0.0/14
  domain 13.107.64.0/18
  domain teams.microsoft.com
  domain *.teams.microsoft.com
  domain teams.cloud.microsoft
  domain lync.com
  domain *.lync.com
  domain meet.google.com
 forcesafesearch
  domain *.search.0xcb.dev
  domain *.search.0xgingi.com
  domain *.100searchengines.com
  domain *.search.2b9t.xyz
  domain *.searx.32bitflo.at
  domain *.search.abohiccups.com
  domain *.search.activemail.de
  domain *.haku.ahmia.fi
  domain *.search.ahwx.org
  domain *.search.albony.xyz
  domain *.searx.alec.ninja
  domain *.alltheinternet.com
  domain *.zoek.anchel.nl
  domain *.andisearch.com
  domain *.search.anoni.net
  domain *.recherche.aol.fr
  domain *.search.aol.ca
  domain *.search.aol.com
  domain *.suche.aol.de
  domain *.search.azkware.net
  domain *.librex.baczek.me
  domain *.searx.baczek.me
  domain *.baidu.com
  domain *.searx.bbaovanc.com
  domain *.beezboo.com
  domain *.search.biboumail.fr
  domain *.searx.bissisoft.com
  domain *.blackle.com
  domain *.search.bladerunn.in
  domain *.search.bluelock.org
  domain *.boomle.com
  domain *.search.bowlman.org
  domain *.searxng.canine.tools
  domain *.search.charliewhiskey.net
  domain *.search.aol.co.uk
  domain *.websearch.excite.co.jp
  domain *.searx.com.au
  domain *.search.cronobox.one
  domain *.searx.cthd.icu
  domain *.searxng.cups.moe
  domain *.searx.daetalytica.io
  domain *.search.darkness.services
  domain *.search.davidovski.xyz
  domain *.whoogle.dcs0.hu
  domain *.searx.decatec.de
  domain *.search.decentrala.org
  domain *.searx.deepak.pro
  domain *.search.demoniak.ch
  domain *.librex.devol.it
  domain *.searx.devol.it
  domain *.search.disroot.org
  domain *.searx.divided-by-zero.eu
  domain *.dogpile.com
  domain *.search.dojoro.de
  domain *.searx.doofpot.nl
  domain *.search.dr460nf1r3.org
  domain *.dynabyte.ca
  domain *.searx.elukerio.org
  domain *.searx.ericaftereric.top
  domain *.search.ethibox.fr
  domain *.eulie.de
  domain *.searx.everdot.org
  domain *.results.excite.com
  domain *.search.fascinated.cc
  domain *.search.femboy.ad
  domain *.fireball.de
  domain *.searx.foo.li
  domain *.search.freestater.org
  domain *.search.funami.tech
  domain *.search.garudalinux.org
  domain *.gibiru.com
  domain *.gigablast.com
  domain *.gigablast.io
  domain *.searx.gnu.style
  domain *.gogoprivate.com
  domain *.searx.gotrust.de
  domain *.searx.guillaumea.fr
  domain *.hmsearx.h0meserver.com
  domain *.searx.hardwired.link
  domain *.seeks.hsbp.org
  domain *.search.internetsucks.net
  domain *.search.ipsys.bf
  domain *.searx.joshcenters.com
  domain *.search.jpope.org
  domain *.search.kokomo.cloud
  domain *.trovu.komun.org
  domain *.search.laksith.dev
  domain *.searx.lavatech.top
  domain *.librex.me
  domain *.searx.linux.pizza
  domain *.lukol.com
  domain *.whoogle.lunar.icu
  domain *.searx.lwhr.xyz
  domain *.lycos.com
  domain *.searx.lynnesbian.space
  domain *.go.mail.ru
  domain *.searx.mastodontech.de
  domain *.searx.maxxblow.de
  domain *.metacrawler.com
  domain *.metager.de
  domain *.metager.org
  domain *.metager3.de
  domain *.metasearch.nl
  domain *.metasearx.com
  domain *.suche.mexmail.de
  domain *.searx.mha.fi
  domain *.mijisou.com
  domain *.millionshort.com
  domain *.search.minus27315.dev
  domain *.search.modalogi.com
  domain *.mojeek.com
  domain *.searx.monicz.pl
  domain *.monstercrawler.com
  domain *.mwmbl.org
  domain *.librex.myroware.eu
  domain *.searx.nakhan.net
  domain *.search.nebulacentre.net
  domain *.neeva.com
  domain *.searx.netzspielplatz.de
  domain *.nibblehole.com
  domain *.searxng.nicfab.eu
  domain *.searx.nightmare.life
  domain *.nigma.eu
  domain *.searx.nixnet.services
  domain *.searxng.no-logs.com
  domain *.whoogle.no-logs.com
  domain *.librex.nohost.network
  domain *.mydor.noip.me
  domain *.null.media
  domain *.o5.gg
  domain *.offtheradar.info
  domain *.search.oh64.moe
  domain *.searx.openhoofd.nl
  domain *.search.opentunisia.org
  domain *.openworlds.info
  domain *.oscobo.com
  domain *.searx.ouahpiti.info
  domain *.search.pabloferreiro.es
  domain *.peekier.com
  domain *.presearch.com
  domain *.privacia.org
  domain *.search.privacytools.io
  domain *.privacywall.org
  domain *.search.in.projectsegfau.lt
  domain *.search.us.projectsegfau.lt
  domain *.searx.prvcy.eu
  domain *.librex.pufe.org
  domain *.search.rabbit-company.com
  domain *.nova.rambler.ru
  domain *.searx.rasp.fr
  domain *.retifo.com
  domain *.wtf.roflcopter.fr
  domain *.roteserver.de
  domain *.search.rubberverse.xyz
  domain *.searchalot.com
  domain *.searche.org
  domain *.searchencrypt.com
  domain *.searx.bar
  domain *.searx.ch
  domain *.searx.info
  domain *.searx.ir
  domain *.searx.ninja
  domain *.searx.org
  domain *.searx.party
  domain *.searx.ru
  domain *.searx.run
  domain *.searx.si
  domain *.searx.space
  domain *.searx.stream
  domain *.searx.work
  domain *.searx.xyz
  domain *.searxng.biz
  domain *.searxzh.cn
  domain *.search.seds.nl
  domain *.searx.semipvt.com
  domain *.search.sethforprivacy.com
  domain *.search.seznam.cz
  domain *.skyn3t.in
  domain *.search.smnz.de
  domain *.searx.solusar.de
  domain *.searx.sp-codes.de
  domain *.search.spaeth.me
  domain *.search.st8.at
  domain *.suchfeuer.de
  domain *.searx.sulu.me
  domain *.searx.thegreenwebfoundation.org
  domain *.search.trom.tf
  domain *.suche.tromdienste.de
  domain *.s.trung.fun
  domain *.searx.tyil.nl
  domain *.suche.uferwerk.org
  domain *.search.undertale.uk
  domain *.search.unredacted.org
  domain *.lx.vern.cc
  domain *.wg.vern.cc
  domain *.grep.vim.wtf
  domain *.searx.vitanetworks.link
  domain *.search.wdpserver.com
  domain *.h4g3z1-nosafesearch.web.app
  domain *.webcrawler.com
  domain *.searx.wegeeks.win
  domain *.wiby.me
  domain *.search.xcloud.live
  domain *.find.xenorio.xyz
  domain *.xo.wtf
  domain *.yep.com
  domain *.yippy.com
  domain *.you.com
  domain *.searx.zapashcanon.fr
  domain *.searx.zdechov.net
  domain *.search.zeroish.xyz
  domain *.search.zina.dev
 youtube
  domain *.youtube.com
  domain *.youtube.co.za
  domain youtubei.googleapis.com
  domain youtube.googleapis.com
  domain www.youtube-nocookie.com
  domain *.ymyg.com
  domain ymyg.l.google.com
  domain youtube.l.google.com
  domain i.google.com
  domain googlevideo.com
  domain youtu.be
  domain yt.be
 realdebrid
  domain *.real-debrid.com
  domain real-debrid.com
  domain *.strem.io
  domain strem.io
  domain *strem.io
 ut1adult
  domain (?i)(^|[.-])(adultsight|adultsite|adultsonly|adultweb|blowjob|bondage|centerfold|cumshot|cyberlust|cybercore|hardcore|masturbat|obscene|pedophil|pedofil|playmate|pornstar|sexdream|showgirl|softcore|striptease)([.-]|$)
  domain (?i)(^|[.-])(big|cyber|hard|huge|mega|small|soft|super|tiny)?(adult|babe|boob|breast|busen|busty|clit|cum|fetish|hooter|lez|lust|naked|nude|porn|porno|pupper|pussy|lesb|gay|lolit|salop|orgasm|mature|sex|smutpump|teen|tit|topp?les|xxx)s?([.-]|$)
  domain (?i)(^|[.-])[a-z0-9-]*(adult|boob|breast|busty|clit|cum|fetish|lust|naked|nude|porn|porno|pussy|orgasm|mature|sex|teen|tit|xxx)[a-z0-9-]*([.-]|$)
 facebook
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*facebook\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*messenger\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*fb\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*fb\.me$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*fbcdn\.net$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*fbsbx\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*tfbnw\.net$
 instagram
  domain ^00:00:00:00:00:00-z00:00:00:00:00:00\/)?00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00stagram\.com|cdninstagram\.com)00:00:00:00:00:00/:?#]|$)|^00:00:00:00:00:00-z00:00:00:00:00:00\/)?ig\.me00:00:00:00:00:00/:?#]|$)
 whatsapp
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*whatsapp\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*whatsapp\.net$
  domain (?i)^whatsapp\.fbsbx\.com$
  domain (?i)^00:00:00:00:00:00a-whatsapp-shv|whatsapp-cdn-shv)-[a-z0-9-]+\.fbcdn\.net$
  domain (?i)^whatsapp-chatd-edge-shv-[a-z0-9-]+\.facebook\.com$
 signal
  domain ^00:00:00:00:00:00-z00:00:00:00:00:00\/)?00:00:00:00:00:00-z0-9-]+\.)*signal\.org00:00:00:00:00:00/:?#]|$)|^00:00:00:00:00:00-z00:00:00:00:00:00\/)?signal\.00:00:00:00:00:00t|group|link|me|tube)00:00:00:00:00:00/:?#]|$)
 tiktok
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*tiktok\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00ktokv\.com|tiktokcdn00:00:00:00:00:00s)?\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00teoversea\.00:00:00:00:00:00m|net)|bytedance00:00:00:00:00:00i)?\.com|bytedance\.net)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00ssdk\.com|isnssdk\.com|sgsnssdk\.com|sgnssdk\.com|ctobsnssdk\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00tatp\.com|ipstatp\.com|sgpstatp\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00teimg\.com|ibyteimg\.com|bytecdn\.cn|ibytedtos\.com|byteicdn\.com|bytedns\.net|byted\.org)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00sical\.ly|muscdn\.com|amemv\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00utiao\.com|toutiao50\.com|toutiaocdn\.00:00:00:00:00:00|com|net)|toutiaocloud\.00:00:00:00:00:00m|net)|ixigua\.com|ixiguavideo\.com|ixugua\.com|topbuzz\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00pstarcdn\.com|ttlivecdn\.com|musemuse\.cn|douyin\.com|iesdouyin\.com|douyincdn\.com|douyinvideo\.net|douyinact\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00cs3zlph\.com|zwtianshangm\.com|qfyf1toi\.com|mzfvozqybf\.com)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00p\.link|onelink\.me)$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00tatp\.com|ipstatp\.com|sgpstatp\.com|snssdk\.com|isnssdk\.com|sgsnssdk\.com|sgnssdk\.com|ctobsnssdk\.com|byteoversea\.com|byteoversea\.net|tiktok\.com|tiktokv\.com|tiktokcdn00:00:00:00:00:00s)?\.com|musical\.ly|muscdn\.com|amemv\.com|hypstarcdn\.com|ibyteimg\.com|ibytedtos\.com|toutiao\.com|toutiao50\.com|ixigua\.com|ixiguavideo\.com|bytecdn\.cn|byteimg\.com|bytedance\.com|bytedanceapi\.com|xzcs3zlph\.com)00:00:00:00:00:00[a-z0-9-]+)*\.00:00:00:00:00:00nluncan\.com|kunlunca\.com|kunlunle\.com|kunlungr\.com|kunlunpi\.com|kunlunhuf\.com|kunlunsl\.com|alikunlun\.com|alikunlun\.net|bsgslb\.com|bsgslb\.cn|bdgslb\.com|cdngslb\.com|wsglb0\.com|wscdns\.com|wsdvs\.com|cloudglb\.com|cloudcdn\.net|worldfcdn\.com|bytetcdn\.com|ks-cdn\.com|ks-cdn1\.com|ksyuncdn\.com|cdnle\.com|cdntip\.com|dnsv1\.com|ovscdns\.net|baishan-cloud\.net|footprint\.net|myqcloud\.com|srip\.net|akadns\.net|akamaized\.net|akamaihd\.net|edgesuite\.net|edgekey\.net|bitgravity\.com|jcloudcdn\.com|gshifen\.com|wshifen\.com|googleusercontent\.com|amazonaws\.com|cloudfront\.net|fastly\.net|cloudflare\.net)$
 sharedmetainfra
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*00:00:00:00:00:00cebook\.net|facebookmail\.com|facebookbrand\.com|facebookvirtualassistant\.com|facebookdesktop\.com|thefacebook\.com|freebasics\.com|internet\.org|fbpigeon\.com|fburl\.com|fbcdn\.com)$
 smarttv
  domain acr0.samsungcloudsolution.com
  domain ad.lgappstv.com
  domain ad.sxp.smartclip.net
  domain ads.samsungads.com
  domain aic-ngfts.lge.com
  domain amarillo.sb.roku.com
  domain az43064.vo.msecnd.net
  domain bif.sr.roku.com
  domain cdn.hbbtv.smartclip.net
  domain cdn.samsungcloudsolution.com
  domain cloudservices.roku.com
  domain config.samsungads.com
  domain control-zoo-dtsstage.tvinteractive.tv
  domain cooper.logs.roku.com
  domain coordinator-production-28516768.us-east-1.elb.amazonaws.com
  domain d179kwmlpc4o47.cloudfront.net
  domain d1oxlq5h9kq8q5.cloudfront.net
  domain d2tnx644ijgq6i.cloudfront.net
  domain d3mjsomixevyw7.cloudfront.net
  domain edgesuite.net
  domain errors.hbbtv.smartclip.net
  domain eu-auth2.samsungosp.com
  domain events.cid.samba.tv
  domain events.samsungads.com
  domain game.internetat.tv
  domain gld.push.samsungosp.com
  domain gpm.samsungqbe.com
  domain hoover.sxp.smartclip.net
  domain img-resize-cdn-prod.samsungnyc.com
  domain infolink.pavv.co.kr
  domain lcprd1.samsungcloudsolution.net
  domain lgad.cjpowercast.com
  domain log-1.samsungacr.com
  domain log-2.samsungacr.com
  domain log-config.samsungacr.com
  domain ngfts.lge.com
  domain notice.samsungcloudsolution.com
  domain noticecdn.samsungcloudsolution.com
  domain noticefile.samsungcloudsolution.com
  domain ns11.whois.co.kr
  domain ocfconnect-shard-eu02-euwest1.samsungiotcloud.com
  domain oempprd.samsungcloudsolution.com
  domain osb-apps-v2.samsungqbe.com
  domain osb-v2.samsungqbe.com
  domain osb.samsungqbe.com
  domain p.ads.roku.com
  domain platform.cid.samba.tv
  domain premium-videos.telly.com
  domain samsungacr.com
  domain samsungads.com
  domain samsungcloudsolution.com
  domain samsungcloudsolution.net
  domain samsungotn.net
  domain samsungrm.net
  domain sas.samsungcloudsolution.com
  domain scheduler.hbbtv.smartclip.net
  domain scribe.logs.roku.com
  domain scs.samsungqbe.com
  domain smartclip.com
  domain smartclip.net
  domain smartshare.lgtvsdp.com
  domain static.doubleclick.net
  domain stats.hbbtv.smartclip.net
  domain syncplusconfig.s3.amazonaws.com
  domain targeted-config-test.samsungacr.com
  domain time.samsungcloudsolution.com
  domain traces.sr.roku.com
  domain track.sr.roku.com
  domain tvinteractive.tv
  domain tvx.adgrx.com
  domain uimetadata.samsungiotcloud.com
  domain us.ad.lgsmartad.com
  domain us.ibs.lgappstv.com
  domain us.info.lgsmartad.com
  domain us.lgtvsdp.com
  domain us.rdx2.lgtvsdp.com
  domain vdterms.samsungcloudsolution.com
  domain yumenetworks.com
 adsstarterlist
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*doubleclick\.net$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*googlesyndication\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*googletagmanager\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*google-analytics\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*googletagservices\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*atdmt\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*scorecardresearch\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*adnxs\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*taboola\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*outbrain\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*criteo\.com$
  domain (?i)^00:00:00:00:00:00-z0-9-]+\.)*rubiconproject\.com$

timeconditions
 kid1
  day mon tue wed thu fri
  time 14h30 19h00
 kid4weekdays
  day mon tue wed thu fri
  time 17h01 22h00
 kid4weekend
  day sat
  time 00h00 23h00
 kid1weekends
  day fri sat sun
  time 07h00 21h00
 kid4sunday
  day sun
  time 00h00 21h00

policies
 home
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup youtube,facebook,instagram,whatsapp,signal,tiktok,sharedmetainfra
  web 30 block blacklist ads,aggressive,alcohol,crypto-hijacking,dating,dns-over-https,malicious,malware,proxies,spyware,tencent-cloud
  default web allow
 kids
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup youtube,whatsapp,sharedmetainfra
  web 30 block blacklist ads,aggressive,alcohol,anonvpn,crypto-hijacking,dating,dns-over-https,drugs,dyndns,filehosting,fortunetelling,forums,gambling,government,hacking,image-sharing,malicious,malware,piracy,podcasts,politics,porn,proxies,sex-education,sex-lingerie,social-media,spyware,terrorism,urlshort,warez,weapons,webhosting,webmail
  web 40 block blacklist amazon-cloud,microsoft-cloud,social-media,video,microsoft-cloud,tencent-cloud,video
  default web allow
 guest
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup youtube,facebook,instagram,whatsapp,signal,tiktok,sharedmetainfra
  web 30 block blacklist ads,crypto-hijacking,dns-over-https,hacking,malicious,malware,porn,proxies,sex-education,sex-lingerie,spyware,terrorism,tencent-cloud
  default web allow
 kid1
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup whatsapp,sharedmetainfra
  web 30 block blacklist ads,aggressive,alcohol,amazon-cloud,anonvpn,automobile,banking,blasphemy,crypto-hijacking,dating,dns-over-https,downloads,drugs,dyndns,ecommerce,filehosting,financial,fortunetelling,forums,gambling,gardening,government,hacking,image-sharing,jobsearch,malicious,malware,microsoft-cloud,military,news,pets,piracy,podcasts,politics,porn,proxies,recreation-humor,recreation-martialarts,recreation-restaurants,recreation-sports,recreation-travel,recreation-wellness,remote-control,ringtones,science,sex-education,sex-lingerie,spyware,terrorism,tv-related,updatesites,urlshort,warez,weapons,webhosting,webmail,microsoft-cloud,tencent-cloud
  web 40 allow urlgroup youtube timecondition kid1
  web 50 allow urlgroup youtube timecondition kid1weekends
  web 60 allow blacklist google-cloud,music,searchengines,social-media,video,video timecondition kid1
  web 70 allow blacklist downloads,google-cloud,searchengines,social-media,video,video timecondition kid1weekends
  default web block
 kid4
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup youtube,facebook,instagram,whatsapp,sharedmetainfra
  web 30 block blacklist ads,aggressive,alcohol,anonvpn,crypto-hijacking,dns-over-https,gambling,hacking,jobsearch,malicious,malware,military,proxies,spyware,terrorism,urlshort,tencent-cloud
  web 40 allow timecondition kid4weekdays
  web 50 allow timecondition kid4weekend
  web 60 allow timecondition kid4sunday
  default web block
 myworkdevices
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 block blacklist ads,crypto-hijacking,malicious,malware,piracy,porn,sex-education,sex-lingerie,spyware,terrorism,weapons,tencent-cloud
  default web allow
 tv
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup realdebrid
  web 30 block blacklist ads,crypto-hijacking,malware,porn,spyware,tencent-cloud
  default web allow
 defaultpolicy
  web 10 block urlgroup forcesafesearch,ut1adult,adsstarterlist
  web 20 allow urlgroup youtube,realdebrid,whatsapp,sharedmetainfra
  web 30 block blacklist ads,crypto-hijacking,malicious,malware,spyware,tencent-cloud
  default web block

session-tracking
 session-authenticated-idle-timeout 3600
 session-authenticated-max-life 86400
 session-unauthenticated-idle-timeout 600
 session-unauthenticated-max-life 86400

captive-portal
 enabled true
 ip-range 10.64.0.0/24
 ip-range 10.127.255.0/25
 allow-guests true
 guest-policy guest

external-authenticators
 guest
  type localusers
  enabled true
  user gspot enabled password $////////////////////////////////////////////0 policy defaultpolicy friendly-name Guest Hotspot
  user my enabled password $//////////////////////////////////////////// policy myworkdevices friendly-name Owner
  user my enabled password $////////////////////////////////////////////0 policy defaultpolicy friendly-name OwnersBoss
  user streaming enabled password $6////////////////////////////////////////////0 policy tv friendly-name StremingDevices

blacklists
 microsoft-cloud
  include teams.cloud.microsoft
  include lync.com
 video
  include real-debrid.com
  include baby-beamup.club
  include strem.fun
  include strem.io
  include v3-cinemeta.strem.io
  include api.strem.io
 tencent-cloud
  include myqcloud.com
 apple-cloud
  include swcdn.apple.com
  include apple.com
  include updates.cdn-apple.com
  include cdn-apple.com
 ai
  include ai-hay.vn
  include andisearch.com
  include anthropic.com
  include aoyo.ai
  include app.holmesbot.com
  include ayesoul.com
  include bolt.new
  include botsonic.com
  include character.ai
  include chatgpt.com
  include claude.ai
  include colomboai.com
  include compute.hyper.space
  include consensus.app
  include copilot.microsoft.com
  include copy.ai
  include correkt.ai
  include deepfind.co
  include deepseek.com
  include devv.ai
  include doubao.com
  include duck.ai
  include fal.ai
  include felo.ai
  include gemini.google.com
  include genspark.ai
  include getliner.com
  include ghibliai.ai
  include hellomiku.com
  include hika.fyi
  include huggingface.co
  include iask.ai
  include ithy.com
  include jasper.ai
  include khanmigo.ai
  include kimi.ai
  include komo.ai
  include llama.com
  include lmarena.ai
  include lumigo.ai
  include lumo.proton.me
  include metaso.cn
  include miromind.ai
  include mistral.ai
  include mixmyai.com
  include monica.so
  include msty.app
  include omnexio.ai
  include openai.com
  include perplexity.ai
  include phind.com
  include pi.ai
  include poe.com
  include qwen.ai
  include so.360.com
  include stellar.chatastra.ai
  include suno.ai
  include suno.com
  include t3.chat
  include textcortex.com
  include thegigabrain.com
  include thinkany.ai
  include tiangong.cn
  include typeset.io
  include uncovr.app
  include venice.ai
  include writesonic.com
  include xdash.ai
  include you.com
  include yuewen.cn
  include z.ai
 remote-control
  include meshcentral.domain.org.za
  include rustdesk.domain.org.za
  include rustdesk.domain
 work
  include pagerduty.com
  include work.pagerduty.com
  include gotify.work.co.za
 alerting-cloud
  include gotify.work.co.za
  include pagerduty.com
  include work.pagerduty.com

identities
 myswp200pro
  icon android
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy myworkdevices
 Camera
  icon tv
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 cudy_m1800_mesh_ap
  icon robot
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 cudy_m3000_mesh_ap
  icon robot
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_honor_x9b_5g
  icon android
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy kid1
 my_honor_200_lite
  icon user-crown
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_s20_fe
  icon android
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_hp_i7_family_laptop
  icon laptop
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_air
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_air_wlan0
  icon apple
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_air_enp0s1
  icon apple
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 laptop
  icon laptop
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy myworkdevices
 laptop
  icon laptop
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy myworkdevices
 dell_laptop_eth0
  icon linux
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy myworkdevices
 raspi_seedbox
  icon linux
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 invoice_ninja_pi_eth
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_pi_5_eth0
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 my_pi_5_wifi0
  icon linux
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 Camera
  icon user-secret
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 kid1_matepad_t10s
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy kid1
 kid5_a31
  icon mobilephone
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy guest
 kid4_samsung_sm_j410f
  icon mobilephone
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy kid4
 plug_bedroom
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 plug_kid4_room
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy kid4
 plug_freezer
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 plug_tv
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 swizbox
  icon linux
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 xbox360
  icon xbox
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 ps4
  icon playstation
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 ps3
  icon playstation
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 ps2
  icon playstation
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy tv
 device_70_5a_0f_b5_fa_09
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy home
 kid4
  icon user
  devices 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
  policy kid4
 default
  icon default
  net-src-policy 10.64.0.0/24 home
  net-src-policy 10.10.0.0/24 defaultpolicy
  net-src-policy 192.168.40.0/24 defaultpolicy
  net-src-policy 10.30.30.0/24 guest
  net-src-policy 192.168.88.0/24 defaultpolicy
  policy guest

firewall
 disable-sip-nat true
 disable-ftp-nat true
 disable-pptp-nat true
 hijack-local-dns true
 icmp-reply-pings LAN,wg+
 dhcp-flood-protection true
 drop-broadcasts WAN
 log-management-traffic true
 log-vpn-connections true
 undesired-traffic-policy DROP # Default iptables policy (Drop = fail-close; Accept= fail-open)
 geoblock
  zone RU
  zone CN
  zone KP
  zone TOR-NODES
 ipsets
  ipset QoS-VoIP ipv4 # VoIP address-list for QoS and fw rule matching
   match 52.244.160.207/32 # MS Teams/Skype (from microsoftTeams-TCP)
   match 13.107.64.0/18 # Msft Teams and Skype UDP ports 3478, 3479, 3480, 3481
   match 52.112.0.0/14 # MS Teams
   match 52.122.0.0/15 # MS Teams
  ipset blacklist ipv4 # Blacklisted IPs/IP-ranges
   match 66.180.128.0/19 # NETENTERPRISE-IPV4-BLK2
   match 63.216.0.0/13 # SENTRIS BTN-CIDR5
   match 46.202.232.68/32 # ukrtelecom.ua
   match 82.26.190.206/32 # netutils.io
   match 176.113.191.108/32 # liteinfo-isp.com
   match 193.203.28.251/32 # liteinfo-isp.com
   match 34.208.194.230/32 # This IP was reported 914 times. Confidence of Abuse is 1000:00:00:00:00:00tt00:00:00:00:00:00www.abuseipdb.com/check/34.208.194.230
   match 46.203.118.194/32 # ukrtelecom.ua
   match 66.195.198.249/32 # lumen.com
   match 46.203.111.60 # ukrtelecom.ua
 input
  rule id 1 ipset-src blacklist action DROP
  rule id 2 state INVALID action DROP
  rule id 3 inif ether1 state ESTABLISHED action ACCEPT
  rule id 4 inif ether1 state RELATED action ACCEPT
 output
  rule id 1 ipset-src blacklist action REJECT
  rule id 2 state INVALID action REJECT
  rule id 3 state ESTABLISHED action ACCEPT
  rule id 4 state RELATED action ACCEPT
 forward
  rule direction in id 3000 ipset-src blacklist action DROP # ---- Blacklisted ----
  rule direction in id 3001 state INVALID action DROP # ---- INVALID ----
  rule direction in id 3002 state ESTABLISHED action ACCEPT # ---- ESTABLISHED ----
  rule direction in id 3003 state RELATED action ACCEPT # ---- RELATED ----
  rule direction in id 3004 inif wg+ src 10.10.0.0/24 dst 192.168.1.0/24 state NEW action ACCEPT # ---- NEW conns from VPN ----
  rule direction in id 3005 inif wg+ outif ether2 src 10.10.0.0/24 state NEW action ACCEPT # ---- allow connections to vpn network ----
  rule direction in id 3006 inif ether1 proto TCP dport 1194 state NEW action ACCEPT # ---- OpenVPN ----
  rule direction in id 3007 inif ether1 proto UDP multi-dport 51825,51829 state NEW action ACCEPT # ---- WireguardVPN ----
  rule direction out id 4000 ipset-dst blacklist action REJECT # ---- Blacklisted ----
  rule direction out id 4001 state INVALID action REJECT # ---- INVALID ----
  rule direction out id 4002 state ESTABLISHED action ACCEPT # ---- ESTABLISHED ----
  rule direction out id 4003 state RELATED action ACCEPT # ---- RELATED ----
  rule direction out id 4004 outif wg+ src 192.168.1.0/24 dst 10.10.0.0/24 state NEW action ACCEPT # ---- NEW conns to VPN ----
  rule direction out id 4005 inif ether2 outif wg+ src 10.10.0.0/24 state NEW action ACCEPT # ---- allow connections to vpn network ----
  rule direction out id 4006 outif ether1 proto TCP dport 853 action REJECT # ---- Block DNS over TLS ----
  rule direction out id 4007 outif ether1 proto UDP dport 853 action REJECT # ---- Block DNS over QUIC ----
  rule direction out id 4008 inif ether2 src 192.168.88.2/32 proto UDP multi-dport 5353,5355,3478 state NEW action ACCEPT # ---- Zenarmor CTI servers ----
 portforwards
  rule id 5000 inif ether2 src 192.168.1.1/24 dst 10.10.0.105/32 proto TCP sport 53 multi-dport 53,853 state NEW action RETURN disabled # Dummy rule for config expression
  rule id 5001 inif ether2 src 192.168.1.0/24 dst 192.168.1.1/24 proto TCP dport 8291 state NEW action DNAT dnat-to 192.168.8800:00:00:00:00:0091 # WinBox
  rule id 5002 inif ether1 src 10.10.0.0/24 proto TCP multi-dport 80,443 state NEW action DNAT dnat-to 192.168.100:00:00:00:00:004 hammer-protect true hammer-hits 10 hammer-time 10 # # ---- Allow VPN management ----
  rule id 5003 inif ether1 src 192.168.88.0/24 proto TCP multi-dport 80,443 state NEW action DNAT dnat-to 192.168.100:00:00:00:00:004 hammer-protect true hammer-hits 10 hammer-time 10 # # ---- Allow VPN management ----
  rule id 5004 inif ether1 proto UDP multi-dport 51820,51821 state NEW action DNAT dnat-to 192.168.1.1 hammer-protect true hammer-hits 10 hammer-time 10 # # ---- Allow VPN management ----
  rule id 5005 inif ether1 proto UDP multi-dport 51821 state NEW action DNAT dnat-to 192.168.100:00:00:00:00:00821 hammer-protect true hammer-hits 10 hammer-time 10 # # ---- Allow VPN management ----
 vlan
  restrict ether2.10 ether2.20
  restrict ether2.10 ether2.30
  restrict ether2.10 ether3.40
  restrict ether2.20 ether2.30
  restrict ether2.20 ether3.40
  restrict ether2.30 ether3.40
  rule id 7000 inif ether2 outif ether2.30 src 192.168.1.180/32 state NEW action ACCEPT disabled # Dummy rule for inter-vlan routing

proxy
 http-interception enabled
 https-interception enabled
 https-interception-mode peek
 disable-quic-protocol enabled
 safe-browsing enabled

dnsbl
 dns-interception enabled

openvpn-server
 domainhome
  mode server
  server 192.168.11.94 255.255.255.248
  keepalive 30 120
  data-ciphers AES-256-G00:00:00:00:00:00S-128-GCM
  protocol tcp
  port 1194
  key domainhome
  max-clients 8
  push-route 192.168.1.0 255.255.255.0
  dhcp-option DNS 1.1.1.3
  dhcp-option DNS 1.0.0.3
  mfa-enforce-auth true
  mfa-renegotiate 3600

wireVPN
 freebsdwgvpn
  listen-port 51825
  private-key s////////////////////////////////////////////=
  public-key D////////////////////////////////////////////=
  interface wg0
  nat false
  ipaddr 10.10.0.105/24
  peer wgvpnmaster
   public-key 8////////////////////////////////////////////=
   end-point 129.151.161.00:00:00:00:00:00820
   allowed-ips 10.10.0.0/24
   keepalive 10
 remoteusers
  listen-port 51829
  private-key S////////////////////////////////////////////=
  public-key p////////////////////////////////////////////=
  interface wg1
  nat false
  ipaddr 192.168.51.1/24
  peer mymac
   public-key C////////////////////////////////////////////=
   end-point 192.168.5100:00:00:00:00:00821
   allowed-ips 192.168.1.0/24
   keepalive 21
  peer myswp200pro
   public-key 0////////////////////////////////////////////=
   end-point 192.168.5100:00:00:00:00:00822
   allowed-ips 192.168.1.0/24

fileshare-audit-tool
 shares
  scan-networks local-only
  auth-method guest
  alert-new-shares true
  alert-shared-executables true
  alert-writable-executables true
  alert-new-executables true
  alert-large-files 0
  alert-modified-files-count 0
  alert-deleted-files-count 0
  alert-new-files-count 0
  notify-email youremail.tld
  schedule monday

traffic-shaping
 activated false
 mode simple
 voip-priority-enabled true
 voip-bypass-dpi false
 wan-download-rate 240mbps
 wan-upload-rate 120mbps
 voip-download-rate 20mbps
 voip-upload-rate 10mbps
 download-queues
  queue dl-05-normal
   id 101
   priority 5
   enableSFQ false
   rate 120mbps
   ceil 228mbps
  queue dl-02-realtime
   id 102
   priority 2
   enableSFQ false
   rate 50mbps
   ceil 228mbps
  queue dl-01-high
   id 103
   priority 1
   enableSFQ false
   rate 10mbps
   ceil 228mbps
  queue dl-08-bulk
   id 104
   priority 9
   enableSFQ false
   rate 20mbps
   ceil 228mbps
  queue dl-99-kid-control
   id 105
   priority 10
   enableSFQ true
   rate 5mbps
   ceil 15mbps
  queue default-download-queue
   id 900
   priority 8
   enableSFQ false
   rate 10mbps
   ceil 228mbps
 upload-queues
  queue up-05-normal
   id 501
   priority 5
   enableSFQ false
   rate 60mbps
   ceil 112mbps
  queue up-01-high
   id 502
   priority 1
   enableSFQ false
   rate 5mbps
   ceil 112mbps
  queue ul-02-realtime
   id 503
   priority 2
   enableSFQ false
   rate 25mbps
   ceil 112mbps
  queue ul-08-bulk
   id 504
   priority 9
   enableSFQ false
   rate 10mbps
   ceil 112mbps
  queue ul-99-kid-control
   id 505
   priority 10
   enableSFQ true
   rate 2500kbps
   ceil 10mbps
  queue default-upload-queue
   id 901
   priority 8
   enableSFQ false
   rate 5mbps
   ceil 112mbps
 rules
  rule id 10 type ip inif ether2 proto TCP dport 443 multi-sport 50000:00:00:00:00:00019 policy myworkdevices download-queue dl-01-high upload-queue up-01-high
  rule id 11 type ip inif ether2 proto UDP multi-sport 50000:00:00:00:00:00019 multi-dport 3400:00:00:00:00:0081 policy myworkdevices download-queue dl-01-high upload-queue up-01-high
  rule id 12 type urlgroup qosvoip download-queue dl-02-realtime upload-queue ul-02-realtime
  rule id 13 type urlgroup qosvoip download-queue dl-02-realtime upload-queue ul-02-realtime
  rule id 14 type ip policy myworkdevices download-queue dl-01-high upload-queue up-01-high
  rule id 15 type ip policy kid4 download-queue dl-99-kid-control upload-queue ul-99-kid-control
  rule id 17 type ip policy kid1 download-queue dl-99-kid-control upload-queue ul-99-kid-control
  rule id 18 type ip policy tv download-queue dl-08-bulk upload-queue ul-08-bulk
  rule id 19 type blacklist video download-queue default-download-queue upload-queue default-upload-queue
  rule id 20 type ip inif ether2 proto TCP dport 443 multi-sport 50000:00:00:00:00:00039 policy myworkdevices download-queue dl-02-realtime upload-queue ul-02-realtime
  rule id 40 type ip inif ether2 proto UDP multi-sport 50000:00:00:00:00:00039 multi-dport 3400:00:00:00:00:0081 policy myworkdevices download-queue dl-02-realtime upload-queue ul-02-realtime
  rule id 41 type ip proto TCP multi-dport 21100:00:00:00:00:00119 download-queue dl-01-high upload-queue up-01-high
  rule id 42 type ip proto UDP multi-dport 21100:00:00:00:00:00119 download-queue dl-01-high upload-queue up-01-high
  rule id 43 type ip proto UDP multi-dport 3400:00:00:00:00:0081,5349 download-queue dl-01-high upload-queue up-01-high
  rule id 44 type ip proto UDP multi-dport 53,123,51800:00:00:00:00:00821 download-queue dl-01-high upload-queue up-01-high
  rule id 50 type ip proto TCP multi-dport 22,53,3389,8291 download-queue dl-01-high upload-queue up-01-high
  rule id 51 type ip proto TCP multi-dport 51413,6800:00:00:00:00:0089 download-queue dl-08-bulk upload-queue ul-08-bulk
  rule id 52 type ip proto UDP multi-dport 51413,6800:00:00:00:00:0089 download-queue dl-08-bulk upload-queue ul-08-bulk
  rule id 53 type ip proto TCP multi-dport 80,443 download-queue dl-05-normal upload-queue up-05-normal
  rule id 54 type ip inif ether1 proto TCP dport 8080 download-queue dl-08-bulk upload-queue ul-08-bulk
 voip-rules
  rule id 10 type ip proto UDP multi-dport 5060,5061 
  rule id 20 type ip proto UDP multi-sport 5060,5061 
  rule id 30 type ip proto TCP dport 443 multi-sport 50000:00:00:00:00:00019 
  rule id 31 type ip proto TCP dport 443 multi-sport 50000:00:00:00:00:00039 
  rule id 32 type ip proto UDP multi-sport 50000:00:00:00:00:00019 multi-dport 3400:00:00:00:00:0081 
  rule id 33 type ip proto UDP multi-sport 50000:00:00:00:00:00019 multi-dport 3400:00:00:00:00:0081 
  rule id 34 type ip proto UDP multi-dport 3400:00:00:00:00:0081,5349 

remote-management
 webui-restrict-trusted-sources true
 webui-trusted-source 10.0.0.0/8
 webui-trusted-source 10.10.0.0/24
 webui-trusted-source 192.168.88.0/24
 ssh-restrict-trusted-sources false
 ssh-trusted-source 10.10.0.0/24
 ssh-trusted-source 10.0.0.0/8
 ssh-trusted-source 192.168.0.0/16
 allow-vendor-access true
 webui-http-port 80 # change to preferred port
 webui-https-port 443 # change to preferred port
 ssh-port 22 # change to preferred port

user username defaultuser encryptedpassword $////////////////////////////////////////////. enabled false superadmin true tfa-enabled false
user username admin1 encryptedpassword $6///////////////////////////////////////////// enabled true superadmin true tfa-enabled false
user username user1 encryptedpassword $//////////////////////////////////////////// enabled false superadmin false tfa-enabled false
user username admin2 encryptedpassword $////////////////////////////////////////////. enabled true superadmin true tfa-enabled true
user username demouser encryptedpassword $//////////////////////////////////////////// enabled false superadmin false tfa-enabled false

tfa-keys
 user my encrypted-seed 0////////////////////////////////////////////= # 1pass
 user myphone encrypted-seed y////////////////////////////////////////////= # wp200

email-reports
 destination youremail.tld type usage frequency daily
 destination youremail.tld type usage frequency weekly
 destination youremail.tld type usage frequency monthly
 destination youremail.tld type new-devices frequency batched
 destination youremail.tld type new-devices frequency monthly

! end of configuration
