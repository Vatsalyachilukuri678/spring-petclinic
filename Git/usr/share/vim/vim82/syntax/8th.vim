" Vim syntax file
" Language:     8th
<<<<<<< HEAD
" Version:      21.08
" Last Change:  2021 Sep 20
=======
" Version:      19.01d
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" Maintainer:   Ron Aaron <ron@aaron-tech.com>
" URL:          https://8th-dev.com/
" Filetypes:    *.8th
" NOTE:         You should also have the ftplugin/8th.vim file to set 'isk'

if version < 600
  syntax clear
  finish
elseif exists("b:current_syntax")
   finish
endif

let s:cpo_save = &cpo
set cpo&vim
syn clear
" Synchronization method
syn sync ccomment 
syn sync maxlines=100
syn case match
syn match eighthColonName "\S\+" contained
syn match eighthColonDef ":\s\+\S\+" contains=eighthColonName

" new words
syn match eighthClasses "\<\S\+:" contained
syn match eighthClassWord "\<\S\+:.\+" contains=eighthClasses

syn keyword eighthEndOfColonDef ; i;
syn keyword eighthDefine var var,

<<<<<<< HEAD
" Built in words:
com! -nargs=+ Builtin syn keyword eighthBuiltin <args>

Builtin  args #:args b #:b dhm #:dhm exec# #:exec# id2ns #:id2ns id? #:id? idd #:idd key #:key oa #:oa
Builtin  oid #:oid okey #:okey with #:with with! #:with! zip #:zip gen-secret 2fa:gen-secret gen-url 2fa:gen-url
Builtin  validate-code 2fa:validate-code ! G:! #! G:#! ## G:## #> G:#> #if G:#if ' G:' ( G:( (* G:(*
Builtin  (:) G:(:) (code) G:(code) (defer) G:(defer) (dump) G:(dump) (getc) G:(getc) (gets) G:(gets)
Builtin  (interp) G:(interp) (log) G:(log) (needs) G:(needs) (parseln) G:(parseln) (putc) G:(putc) (puts) G:(puts)
Builtin  (putslim) G:(putslim) (stat) G:(stat) (with) G:(with) ) G:) +hook G:+hook +listener G:+listener
Builtin  +ref G:+ref ,# G:,# -- G:-- -----BEGIN G:-----BEGIN -Inf G:-Inf -Inf? G:-Inf? -hook G:-hook
Builtin  -listener G:-listener -ref G:-ref -rot G:-rot . G:. .# G:.# .hook G:.hook .needs G:.needs .r G:.r
Builtin  .s G:.s .s-truncate G:.s-truncate .stats G:.stats .ver G:.ver .with G:.with 0; G:0; 2dip G:2dip
Builtin  2drop G:2drop 2dup G:2dup 2over G:2over 2swap G:2swap 3drop G:3drop 3rev G:3rev 4drop G:4drop
Builtin  8thdt? G:8thdt? 8thsku G:8thsku 8thver? G:8thver? 8thvernum? G:8thvernum? : G:: ; G:; ;; G:;;
Builtin  ;;; G:;;; ;with G:;with <# G:<# <#> G:<#> >clip G:>clip >json G:>json >kind G:>kind >n G:>n
Builtin  >r G:>r >s G:>s ?: G:?: @ G:@ BITMAP: G:BITMAP: ENUM: G:ENUM: FLAG: G:FLAG: Inf G:Inf Inf? G:Inf?
Builtin  NaN G:NaN NaN? G:NaN? SED-CHECK G:SED-CHECK SED: G:SED: SED: G:SED: \ G:\ _dup G:_dup _swap G:_swap
Builtin  actor: G:actor: again G:again ahead G:ahead and G:and appname G:appname apropos G:apropos argc G:argc
Builtin  args G:args array? G:array? assert G:assert base G:base bi G:bi bits G:bits break G:break break? G:break?
Builtin  breakif G:breakif build? G:build? buildver? G:buildver? bye G:bye c# G:c# c/does G:c/does case: G:case:
Builtin  catch G:catch chdir G:chdir clip> G:clip> clone G:clone clone-shallow G:clone-shallow cold G:cold
Builtin  compile G:compile compile? G:compile? compiling? G:compiling? conflict G:conflict const G:const
Builtin  container? G:container? counting-allocations G:counting-allocations cr G:cr curlang G:curlang
Builtin  curry G:curry curry: G:curry: decimal G:decimal default: G:default: defer: G:defer: deferred: G:deferred:
Builtin  deg>rad G:deg>rad depth G:depth die G:die dip G:dip drop G:drop dstack G:dstack dump G:dump
Builtin  dup G:dup dup>r G:dup>r dup? G:dup? e# G:e# enum: G:enum: error? G:error? eval G:eval eval! G:eval!
Builtin  eval0 G:eval0 execnull G:execnull expect G:expect extra! G:extra! extra@ G:extra@ false G:false
Builtin  fnv G:fnv fourth G:fourth free G:free func: G:func: getc G:getc getcwd G:getcwd getenv G:getenv
Builtin  gets G:gets handler G:handler header G:header help G:help hex G:hex i: G:i: i; G:i; isa? G:isa?
Builtin  items-used G:items-used jcall G:jcall jclass G:jclass jmethod G:jmethod json! G:json! json-8th> G:json-8th>
Builtin  json-nesting G:json-nesting json-pretty G:json-pretty json-throw G:json-throw json> G:json>
Builtin  json@ G:json@ k32 G:k32 keep G:keep l: G:l: last G:last lib G:lib libbin G:libbin libc G:libc
Builtin  listener@ G:listener@ literal G:literal locals: G:locals: lock G:lock lock-to G:lock-to locked? G:locked?
Builtin  log G:log log-syslog G:log-syslog log-task G:log-task log-time G:log-time log-time-local G:log-time-local
Builtin  long-days G:long-days long-months G:long-months longjmp G:longjmp lookup G:lookup loop G:loop
Builtin  loop- G:loop- map? G:map? mark G:mark mark? G:mark? memfree G:memfree mobile? G:mobile? n# G:n#
Builtin  name>os G:name>os name>sem G:name>sem ndrop G:ndrop needs G:needs new G:new next-arg G:next-arg
Builtin  nip G:nip noop G:noop not G:not nothrow G:nothrow ns G:ns ns: G:ns: ns>ls G:ns>ls ns>s G:ns>s
Builtin  ns? G:ns? null G:null null; G:null; null? G:null? number? G:number? of: G:of: off G:off on G:on
Builtin  onexit G:onexit only G:only op! G:op! or G:or os G:os os-names G:os-names os>long-name G:os>long-name
Builtin  os>name G:os>name over G:over p: G:p: pack G:pack parse G:parse parse-csv G:parse-csv parsech G:parsech
Builtin  parseln G:parseln parsews G:parsews pick G:pick poke G:poke pool-clear G:pool-clear pool-clear-all G:pool-clear-all
Builtin  prior G:prior private G:private process-args G:process-args process-args-fancy G:process-args-fancy
Builtin  process-args-help G:process-args-help process-args-vars G:process-args-vars prompt G:prompt
Builtin  public G:public putc G:putc puts G:puts putslim G:putslim quote G:quote r! G:r! r> G:r> r@ G:r@
Builtin  rad>deg G:rad>deg rand-jit G:rand-jit rand-jsf G:rand-jsf rand-native G:rand-native rand-normal G:rand-normal
Builtin  rand-pcg G:rand-pcg rand-pcg-seed G:rand-pcg-seed rand-range G:rand-range rand-select G:rand-select
Builtin  randbuf-pcg G:randbuf-pcg random G:random rdrop G:rdrop recurse G:recurse recurse-stack G:recurse-stack
Builtin  ref@ G:ref@ reg! G:reg! reg@ G:reg@ regbin@ G:regbin@ remaining-args G:remaining-args repeat G:repeat
Builtin  required? G:required? requires G:requires reset G:reset roll G:roll rop! G:rop! rot G:rot rpick G:rpick
Builtin  rroll G:rroll rstack G:rstack rswap G:rswap rusage G:rusage s>ns G:s>ns same? G:same? scriptdir G:scriptdir
Builtin  scriptfile G:scriptfile sem G:sem sem-post G:sem-post sem-rm G:sem-rm sem-wait G:sem-wait sem-wait? G:sem-wait?
Builtin  sem>name G:sem>name semi-throw G:semi-throw set-wipe G:set-wipe setenv G:setenv setjmp G:setjmp
Builtin  settings! G:settings! settings![] G:settings![] settings@ G:settings@ settings@? G:settings@?
Builtin  settings@[] G:settings@[] sh G:sh sh$ G:sh$ short-days G:short-days short-months G:short-months
Builtin  sleep G:sleep sleep-until G:sleep-until slog G:slog space G:space stack-check G:stack-check
Builtin  stack-size G:stack-size step G:step sthrow G:sthrow string? G:string? struct: G:struct: swap G:swap
Builtin  tab-hook G:tab-hook tell-conflict G:tell-conflict tempdir G:tempdir tempfilename G:tempfilename
Builtin  third G:third throw G:throw thrownull G:thrownull times G:times tlog G:tlog tri G:tri true G:true
Builtin  tuck G:tuck type-check G:type-check typeassert G:typeassert uid G:uid uname G:uname unlock G:unlock
Builtin  unpack G:unpack until G:until until! G:until! while G:while while! G:while! with: G:with: word? G:word?
Builtin  words G:words words-like G:words-like words/ G:words/ xchg G:xchg xor G:xor >auth HTTP:>auth
Builtin  (curry) I:(curry) notimpl I:notimpl sh I:sh trace-word I:trace-word call JSONRPC:call auth-string OAuth:auth-string
Builtin  gen-nonce OAuth:gen-nonce params OAuth:params call SOAP:call ! a:! + a:+ - a:- / a:/ 2each a:2each
Builtin  2map a:2map 2map+ a:2map+ 2map= a:2map= = a:= @ a:@ @? a:@? _@ a:_@ all a:all any a:any bsearch a:bsearch
Builtin  centroid a:centroid clear a:clear close a:close diff a:diff dot a:dot each a:each each! a:each!
Builtin  each-slice a:each-slice exists? a:exists? filter a:filter generate a:generate group a:group
Builtin  indexof a:indexof insert a:insert intersect a:intersect join a:join len a:len map a:map map+ a:map+
Builtin  map= a:map= mean a:mean mean&variance a:mean&variance merge a:merge new a:new op! a:op! open a:open
Builtin  pop a:pop push a:push qsort a:qsort randeach a:randeach reduce a:reduce reduce+ a:reduce+ remove a:remove
Builtin  rev a:rev shift a:shift shuffle a:shuffle slice a:slice slice+ a:slice+ slide a:slide smear a:smear
Builtin  sort a:sort union a:union x a:x x-each a:x-each xchg a:xchg y a:y zip a:zip 8thdir app:8thdir
Builtin  asset app:asset atrun app:atrun atrun app:atrun atrun app:atrun basedir app:basedir current app:current
Builtin  datadir app:datadir exename app:exename lowmem app:lowmem main app:main name app:name oncrash app:oncrash
Builtin  opts! app:opts! opts@ app:opts@ orientation app:orientation orientation! app:orientation! pid app:pid
Builtin  post-main app:post-main pre-main app:pre-main raise app:raise request-perm app:request-perm
Builtin  restart app:restart resumed app:resumed signal app:signal standalone app:standalone subdir app:subdir
Builtin  suspended app:suspended sysquit app:sysquit terminated app:terminated trap app:trap (here) asm:(here)
Builtin  >n asm:>n avail asm:avail c, asm:c, here! asm:here! n> asm:n> used asm:used w, asm:w, ! b:!
Builtin  + b:+ / b:/ 1+ b:1+ 1- b:1- = b:= >base16 b:>base16 >base32 b:>base32 >base64 b:>base64 >base85 b:>base85
Builtin  >hex b:>hex >mpack b:>mpack @ b:@ append b:append base16> b:base16> base32> b:base32> base64> b:base64>
Builtin  base85> b:base85> bit! b:bit! bit@ b:bit@ clear b:clear compress b:compress conv b:conv each b:each
Builtin  each! b:each! each-slice b:each-slice expand b:expand fill b:fill getb b:getb hex> b:hex> len b:len
Builtin  mem> b:mem> move b:move mpack-compat b:mpack-compat mpack-date b:mpack-date mpack-ignore b:mpack-ignore
Builtin  mpack> b:mpack> n! b:n! n+ b:n+ n@ b:n@ new b:new op b:op pad b:pad rev b:rev search b:search
Builtin  shmem b:shmem slice b:slice splice b:splice ungetb b:ungetb unpad b:unpad writable b:writable
Builtin  xor b:xor +block bc:+block .blocks bc:.blocks add-block bc:add-block block-hash bc:block-hash
Builtin  block@ bc:block@ first-block bc:first-block hash bc:hash last-block bc:last-block load bc:load
Builtin  new bc:new save bc:save set-sql bc:set-sql validate bc:validate validate-block bc:validate-block
Builtin  add bloom:add filter bloom:filter in? bloom:in? accept bt:accept ch! bt:ch! ch@ bt:ch@ connect bt:connect
Builtin  disconnect bt:disconnect init bt:init leconnect bt:leconnect lescan bt:lescan listen bt:listen
Builtin  on? bt:on? read bt:read scan bt:scan service? bt:service? services? bt:services? write bt:write
Builtin  * c:* * c:* + c:+ + c:+ = c:= = c:= >ri c:>ri >ri c:>ri abs c:abs abs c:abs arg c:arg arg c:arg
Builtin  conj c:conj conj c:conj im c:im n> c:n> new c:new new c:new re c:re >redir con:>redir accept con:accept
Builtin  accept-pwd con:accept-pwd ansi? con:ansi? black con:black blue con:blue clreol con:clreol cls con:cls
Builtin  cyan con:cyan down con:down free con:free getxy con:getxy gotoxy con:gotoxy green con:green
Builtin  key con:key key? con:key? left con:left load-history con:load-history magenta con:magenta onBlack con:onBlack
Builtin  onBlue con:onBlue onCyan con:onCyan onGreen con:onGreen onMagenta con:onMagenta onRed con:onRed
Builtin  onWhite con:onWhite onYellow con:onYellow print con:print red con:red redir> con:redir> redir? con:redir?
Builtin  right con:right save-history con:save-history size? con:size? up con:up white con:white yellow con:yellow
Builtin  >aes128gcm cr:>aes128gcm >aes256gcm cr:>aes256gcm >cp cr:>cp >cpe cr:>cpe >decrypt cr:>decrypt
Builtin  >edbox cr:>edbox >encrypt cr:>encrypt >nbuf cr:>nbuf >rsabox cr:>rsabox >uuid cr:>uuid CBC cr:CBC
Builtin  CFB cr:CFB CTR cr:CTR ECB cr:ECB GCM cr:GCM OFB cr:OFB aad? cr:aad? aes128box-sig cr:aes128box-sig
Builtin  aes128gcm> cr:aes128gcm> aes256box-sig cr:aes256box-sig aes256gcm> cr:aes256gcm> aesgcm cr:aesgcm
Builtin  blakehash cr:blakehash chacha20box-sig cr:chacha20box-sig chachapoly cr:chachapoly cipher! cr:cipher!
Builtin  cipher@ cr:cipher@ cp> cr:cp> cpe> cr:cpe> decrypt cr:decrypt decrypt+ cr:decrypt+ decrypt> cr:decrypt>
Builtin  dh-genkey cr:dh-genkey dh-secret cr:dh-secret dh-sign cr:dh-sign dh-verify cr:dh-verify ebox-sig cr:ebox-sig
Builtin  ecc-genkey cr:ecc-genkey ecc-secret cr:ecc-secret ecc-sign cr:ecc-sign ecc-verify cr:ecc-verify
Builtin  edbox-sig cr:edbox-sig edbox> cr:edbox> encrypt cr:encrypt encrypt+ cr:encrypt+ encrypt> cr:encrypt>
Builtin  ensurekey cr:ensurekey gcm-tag-size cr:gcm-tag-size genkey cr:genkey hash cr:hash hash! cr:hash!
Builtin  hash+ cr:hash+ hash>b cr:hash>b hash>s cr:hash>s hash@ cr:hash@ hmac cr:hmac hotp cr:hotp iv? cr:iv?
Builtin  mode cr:mode mode@ cr:mode@ rand cr:rand randbuf cr:randbuf randkey cr:randkey restore cr:restore
Builtin  root-certs cr:root-certs rsa_decrypt cr:rsa_decrypt rsa_encrypt cr:rsa_encrypt rsa_sign cr:rsa_sign
Builtin  rsa_verify cr:rsa_verify rsabox-sig cr:rsabox-sig rsabox> cr:rsabox> rsagenkey cr:rsagenkey
Builtin  save cr:save sbox-sig cr:sbox-sig sha1-hmac cr:sha1-hmac shard cr:shard tag? cr:tag? totp cr:totp
Builtin  totp-epoch cr:totp-epoch totp-time-step cr:totp-time-step unshard cr:unshard uuid cr:uuid uuid> cr:uuid>
Builtin  validate-pgp-sig cr:validate-pgp-sig (.hebrew) d:(.hebrew) (.islamic) d:(.islamic) + d:+ +day d:+day
Builtin  +hour d:+hour +min d:+min +msec d:+msec - d:- .hebrew d:.hebrew .islamic d:.islamic .time d:.time
Builtin  / d:/ = d:= >fixed d:>fixed >hebepoch d:>hebepoch >jdn d:>jdn >msec d:>msec >unix d:>unix >ymd d:>ymd
Builtin  ?= d:?= Adar d:Adar Adar2 d:Adar2 Adar2 d:Adar2 Av d:Av Elul d:Elul Fri d:Fri Heshvan d:Heshvan
Builtin  Iyar d:Iyar Kislev d:Kislev Mon d:Mon Nissan d:Nissan Sat d:Sat Shevat d:Shevat Sivan d:Sivan
Builtin  Sun d:Sun Tammuz d:Tammuz Tevet d:Tevet Thu d:Thu Tishrei d:Tishrei Tue d:Tue Wed d:Wed adjust-dst d:adjust-dst
Builtin  approx! d:approx! approx? d:approx? approximates! d:approximates! between d:between d. d:d.
Builtin  dawn d:dawn days-in-hebrew-year d:days-in-hebrew-year displaying-hebrew d:displaying-hebrew
Builtin  do-dawn d:do-dawn do-dusk d:do-dusk do-rise d:do-rise doy d:doy dst? d:dst? dstquery d:dstquery
Builtin  dstzones? d:dstzones? dusk d:dusk elapsed-timer d:elapsed-timer elapsed-timer-seconds d:elapsed-timer-seconds
Builtin  first-dow d:first-dow fixed> d:fixed> fixed>dow d:fixed>dow fixed>hebrew d:fixed>hebrew fixed>islamic d:fixed>islamic
Builtin  format d:format hanukkah d:hanukkah hebrew-epoch d:hebrew-epoch hebrew>fixed d:hebrew>fixed
Builtin  hebrewtoday d:hebrewtoday hmonth-name d:hmonth-name islamic.epoch d:islamic.epoch islamic>fixed d:islamic>fixed
Builtin  islamictoday d:islamictoday jdn> d:jdn> join d:join last-day-of-hebrew-month d:last-day-of-hebrew-month
Builtin  last-dow d:last-dow last-month d:last-month last-week d:last-week last-year d:last-year latitude d:latitude
Builtin  longitude d:longitude longitude d:longitude msec d:msec msec> d:msec> new d:new next-dow d:next-dow
Builtin  next-month d:next-month next-week d:next-week next-year d:next-year number>hebrew d:number>hebrew
Builtin  omer d:omer parse d:parse parse-approx d:parse-approx parse-range d:parse-range pesach d:pesach
Builtin  prev-dow d:prev-dow purim d:purim rosh-chodesh? d:rosh-chodesh? rosh-hashanah d:rosh-hashanah
Builtin  shavuot d:shavuot start-timer d:start-timer sunrise d:sunrise taanit-esther d:taanit-esther
Builtin  ticks d:ticks ticks/sec d:ticks/sec timer d:timer timer-ctrl d:timer-ctrl tisha-beav d:tisha-beav
Builtin  tzadjust d:tzadjust unix> d:unix> unknown d:unknown unknown? d:unknown? updatetz d:updatetz
Builtin  year@ d:year@ ymd d:ymd ymd> d:ymd> yom-haatsmaut d:yom-haatsmaut yom-kippur d:yom-kippur add-func db:add-func
Builtin  aes! db:aes! begin db:begin bind db:bind bind-exec db:bind-exec bind-exec[] db:bind-exec[]
Builtin  close db:close col db:col col[] db:col[] col{} db:col{} commit db:commit each db:each exec db:exec
Builtin  exec-cb db:exec-cb exec-name db:exec-name get db:get get-sub db:get-sub key db:key kind? db:kind?
Builtin  last-rowid db:last-rowid mysql? db:mysql? odbc? db:odbc? open db:open open? db:open? prep-name db:prep-name
Builtin  prepare db:prepare query db:query query-all db:query-all rekey db:rekey rollback db:rollback
Builtin  set db:set set-sub db:set-sub sql@ db:sql@ bp dbg:bp except-task@ dbg:except-task@ go dbg:go
Builtin  line-info dbg:line-info prompt dbg:prompt stop dbg:stop trace dbg:trace trace-enter dbg:trace-enter
Builtin  trace-leave dbg:trace-leave / f:/ abspath f:abspath absrel f:absrel append f:append associate f:associate
Builtin  atime f:atime canwrite? f:canwrite? chmod f:chmod close f:close copy f:copy copydir f:copydir
Builtin  create f:create ctime f:ctime dir? f:dir? dname f:dname eachbuf f:eachbuf eachline f:eachline
Builtin  enssep f:enssep eof? f:eof? exists? f:exists? flush f:flush fname f:fname getb f:getb getc f:getc
Builtin  getline f:getline getmod f:getmod glob f:glob glob-nocase f:glob-nocase homedir f:homedir homedir! f:homedir!
Builtin  include f:include ioctl f:ioctl join f:join launch f:launch link f:link link> f:link> link? f:link?
Builtin  mkdir f:mkdir mmap f:mmap mmap-range f:mmap-range mmap-range? f:mmap-range? mtime f:mtime mv f:mv
Builtin  name@ f:name@ open f:open open-ro f:open-ro popen f:popen print f:print read f:read read? f:read?
Builtin  relpath f:relpath rglob f:rglob rm f:rm rmdir f:rmdir seek f:seek sep f:sep size f:size slurp f:slurp
Builtin  sparse? f:sparse? spit f:spit stderr f:stderr stdin f:stdin stdout f:stdout tell f:tell times f:times
Builtin  tmpspit f:tmpspit trash f:trash truncate f:truncate ungetb f:ungetb ungetc f:ungetc unzip f:unzip
Builtin  unzip-entry f:unzip-entry watch f:watch write f:write writen f:writen zip+ f:zip+ zip@ f:zip@
Builtin  zipentry f:zipentry zipnew f:zipnew zipopen f:zipopen zipsave f:zipsave atlas! font:atlas!
Builtin  atlas@ font:atlas@ default-size font:default-size info font:info ls font:ls measure font:measure
Builtin  new font:new oversample font:oversample pixels font:pixels pixels? font:pixels? +edge gr:+edge
Builtin  +edge+w gr:+edge+w +node gr:+node connect gr:connect edges gr:edges edges! gr:edges! m! gr:m!
Builtin  m@ gr:m@ neighbors gr:neighbors new gr:new node-edges gr:node-edges nodes gr:nodes traverse gr:traverse
Builtin  weight! gr:weight! + h:+ clear h:clear cmp! h:cmp! len h:len max! h:max! new h:new peek h:peek
Builtin  pop h:pop push h:push unique h:unique arm? hw:arm? camera hw:camera camera-img hw:camera-img
Builtin  camera-limits hw:camera-limits camera? hw:camera? cpu? hw:cpu? device? hw:device? displays? hw:displays?
Builtin  displaysize? hw:displaysize? finger-match hw:finger-match finger-support hw:finger-support
Builtin  gpio hw:gpio gpio! hw:gpio! gpio-mmap hw:gpio-mmap gpio@ hw:gpio@ i2c hw:i2c i2c! hw:i2c! i2c!reg hw:i2c!reg
Builtin  i2c@ hw:i2c@ i2c@reg hw:i2c@reg isround? hw:isround? iswatch? hw:iswatch? mac? hw:mac? mem? hw:mem?
Builtin  model? hw:model? poll hw:poll sensor hw:sensor start hw:start stop hw:stop uid? hw:uid? fetch-full imap:fetch-full
Builtin  fetch-uid-mail imap:fetch-uid-mail login imap:login logout imap:logout new imap:new search imap:search
Builtin  select-inbox imap:select-inbox >file img:>file >fmt img:>fmt copy img:copy crop img:crop data img:data
Builtin  desat img:desat fill img:fill fillrect img:fillrect filter img:filter flip img:flip from-svg img:from-svg
Builtin  new img:new pix! img:pix! pix@ img:pix@ qr-gen img:qr-gen qr-parse img:qr-parse rotate img:rotate
Builtin  scale img:scale scroll img:scroll size img:size countries iso:countries find loc:find sort loc:sort
Builtin  ! m:! !? m:!? + m:+ +? m:+? - m:- >arr m:>arr @ m:@ @? m:@? _! m:_! _@ m:_@ arr> m:arr> bitmap m:bitmap
Builtin  clear m:clear data m:data each m:each exists? m:exists? filter m:filter iter m:iter iter-all m:iter-all
Builtin  keys m:keys len m:len map m:map merge m:merge new m:new op! m:op! open m:open slice m:slice
Builtin  vals m:vals xchg m:xchg zip m:zip ! mat:! * mat:* + mat:+ = mat:= @ mat:@ affine mat:affine
Builtin  col mat:col data mat:data det mat:det dim? mat:dim? get-n mat:get-n ident mat:ident inv mat:inv
Builtin  m. mat:m. minor mat:minor n* mat:n* new mat:new new-minor mat:new-minor rotate mat:rotate row mat:row
Builtin  same-size? mat:same-size? scale mat:scale shear mat:shear trans mat:trans translate mat:translate
Builtin  xform mat:xform 2console md:2console 2html md:2html 2nk md:2nk bounds meta:bounds color meta:color
Builtin  console meta:console end meta:end ffi meta:ffi ! n:! * n:* */ n:*/ + n:+ +! n:+! - n:- / n:/
Builtin  /mod n:/mod 1+ n:1+ 1- n:1- < n:< = n:= > n:> BIGE n:BIGE BIGPI n:BIGPI E n:E PI n:PI ^ n:^
Builtin  _mod n:_mod abs n:abs acos n:acos acos n:acos asin n:asin asin n:asin atan n:atan atan n:atan
Builtin  atan2 n:atan2 band n:band between n:between bfloat n:bfloat bic n:bic bint n:bint binv n:binv
Builtin  bnot n:bnot bor n:bor bxor n:bxor cast n:cast ceil n:ceil clamp n:clamp cmp n:cmp comb n:comb
Builtin  cos n:cos cosd n:cosd emod n:emod exp n:exp expm1 n:expm1 expmod n:expmod float n:float floor n:floor
Builtin  fmod n:fmod frac n:frac gcd n:gcd int n:int invmod n:invmod kind? n:kind? lcm n:lcm ln n:ln
Builtin  ln1p n:ln1p max n:max median n:median min n:min mod n:mod neg n:neg odd? n:odd? perm n:perm
Builtin  prime? n:prime? quantize n:quantize quantize! n:quantize! r+ n:r+ range n:range rot32l n:rot32l
Builtin  rot32r n:rot32r round n:round round2 n:round2 rounding n:rounding running-variance n:running-variance
Builtin  running-variance-finalize n:running-variance-finalize sgn n:sgn shl n:shl shr n:shr sin n:sin
Builtin  sind n:sind sqr n:sqr sqrt n:sqrt tan n:tan tand n:tand trunc n:trunc ~= n:~= ! net:! !? net:!?
Builtin  - net:- >url net:>url @ net:@ @? net:@? DGRAM net:DGRAM INET4 net:INET4 INET6 net:INET6 PROTO_TCP net:PROTO_TCP
Builtin  PROTO_UDP net:PROTO_UDP STREAM net:STREAM accept net:accept addrinfo>o net:addrinfo>o again? net:again?
Builtin  alloc-and-read net:alloc-and-read alloc-buf net:alloc-buf bind net:bind close net:close closed? net:closed?
Builtin  connect net:connect debug? net:debug? delete net:delete get net:get getaddrinfo net:getaddrinfo
Builtin  getpeername net:getpeername head net:head ifaces? net:ifaces? listen net:listen map>url net:map>url
Builtin  net-socket net:net-socket opts net:opts port-is-ssl? net:port-is-ssl? post net:post proxy! net:proxy!
Builtin  put net:put read net:read read-all net:read-all recvfrom net:recvfrom s>url net:s>url sendto net:sendto
Builtin  server net:server setsockopt net:setsockopt socket net:socket tlshello net:tlshello url> net:url>
Builtin  user-agent net:user-agent wait net:wait write net:write (begin) nk:(begin) (chart-begin) nk:(chart-begin)
Builtin  (chart-begin-colored) nk:(chart-begin-colored) (chart-end) nk:(chart-end) (end) nk:(end) (group-begin) nk:(group-begin)
Builtin  (group-end) nk:(group-end) (property) nk:(property) >img nk:>img addfont nk:addfont anti-alias nk:anti-alias
Builtin  any-clicked? nk:any-clicked? bounds nk:bounds bounds! nk:bounds! button nk:button button-color nk:button-color
Builtin  button-label nk:button-label button-set-behavior nk:button-set-behavior button-symbol  nk:button-symbol 
Builtin  button-symbol-label nk:button-symbol-label chart-add-slot nk:chart-add-slot chart-add-slot-colored nk:chart-add-slot-colored
Builtin  chart-push nk:chart-push chart-push-slot nk:chart-push-slot checkbox nk:checkbox clicked? nk:clicked?
Builtin  close-this! nk:close-this! close-this? nk:close-this? close? nk:close? color-picker nk:color-picker
Builtin  combo nk:combo combo-begin-color nk:combo-begin-color combo-begin-label nk:combo-begin-label
Builtin  combo-cb nk:combo-cb combo-end nk:combo-end contextual-begin nk:contextual-begin contextual-close nk:contextual-close
Builtin  contextual-end nk:contextual-end contextual-item-image-text nk:contextual-item-image-text contextual-item-symbol-text nk:contextual-item-symbol-text
Builtin  contextual-item-text nk:contextual-item-text cp! nk:cp! cp@ nk:cp@ display-info nk:display-info
Builtin  display@ nk:display@ do nk:do down? nk:down? draw-image nk:draw-image draw-image-at nk:draw-image-at
Builtin  draw-image-centered nk:draw-image-centered draw-sub-image nk:draw-sub-image draw-text nk:draw-text
Builtin  draw-text-high nk:draw-text-high draw-text-wrap nk:draw-text-wrap edit-focus nk:edit-focus
Builtin  edit-string nk:edit-string event nk:event event-boost nk:event-boost event-msec nk:event-msec
Builtin  event-wait nk:event-wait fill-arc nk:fill-arc fill-circle nk:fill-circle fill-poly nk:fill-poly
Builtin  fill-rect nk:fill-rect fill-rect-color nk:fill-rect-color fill-triangle nk:fill-triangle flags! nk:flags!
Builtin  flags@ nk:flags@ fullscreen nk:fullscreen get nk:get get-row-height nk:get-row-height getfont nk:getfont
Builtin  getmap nk:getmap gl? nk:gl? grid nk:grid grid-push nk:grid-push group-scroll-ofs nk:group-scroll-ofs
Builtin  group-scroll-ofs! nk:group-scroll-ofs! hovered? nk:hovered? image nk:image init nk:init input-button nk:input-button
Builtin  input-key nk:input-key input-motion nk:input-motion input-scroll nk:input-scroll input-string nk:input-string
Builtin  key-down? nk:key-down? key-pressed? nk:key-pressed? key-released? nk:key-released? label nk:label
Builtin  label-colored nk:label-colored label-wrap nk:label-wrap label-wrap-colored nk:label-wrap-colored
Builtin  layout-bounds nk:layout-bounds layout-grid-begin nk:layout-grid-begin layout-grid-end nk:layout-grid-end
Builtin  layout-push-dynamic nk:layout-push-dynamic layout-push-static nk:layout-push-static layout-push-variable nk:layout-push-variable
Builtin  layout-ratio-from-pixel nk:layout-ratio-from-pixel layout-reset-row-height nk:layout-reset-row-height
Builtin  layout-row nk:layout-row layout-row-begin nk:layout-row-begin layout-row-dynamic nk:layout-row-dynamic
Builtin  layout-row-end nk:layout-row-end layout-row-height nk:layout-row-height layout-row-push nk:layout-row-push
Builtin  layout-row-static nk:layout-row-static layout-row-template-begin nk:layout-row-template-begin
Builtin  layout-row-template-end nk:layout-row-template-end layout-space-begin nk:layout-space-begin
Builtin  layout-space-end nk:layout-space-end layout-space-push nk:layout-space-push layout-widget-bounds nk:layout-widget-bounds
Builtin  list-begin nk:list-begin list-end nk:list-end list-new nk:list-new list-range nk:list-range
Builtin  m! nk:m! m@ nk:m@ make-style nk:make-style max-vertex-element nk:max-vertex-element measure nk:measure
Builtin  measure-font nk:measure-font menu-begin nk:menu-begin menu-close nk:menu-close menu-end nk:menu-end
Builtin  menu-item-image nk:menu-item-image menu-item-label nk:menu-item-label menu-item-symbol nk:menu-item-symbol
Builtin  menubar-begin nk:menubar-begin menubar-end nk:menubar-end mouse-pos nk:mouse-pos msgdlg nk:msgdlg
Builtin  option nk:option plot nk:plot plot-fn nk:plot-fn pop-font nk:pop-font popup-begin nk:popup-begin
Builtin  popup-close nk:popup-close popup-end nk:popup-end popup-scroll-ofs nk:popup-scroll-ofs popup-scroll-ofs! nk:popup-scroll-ofs!
Builtin  progress nk:progress prop-int nk:prop-int pt>local nk:pt>local pt>screen nk:pt>screen pts>rect nk:pts>rect
Builtin  push-font nk:push-font rect-center nk:rect-center rect-intersect nk:rect-intersect rect-ofs nk:rect-ofs
Builtin  rect-pad nk:rect-pad rect-shrink nk:rect-shrink rect-union nk:rect-union rect/high nk:rect/high
Builtin  rect/wide nk:rect/wide rect>center nk:rect>center rect>local nk:rect>local rect>pos nk:rect>pos
Builtin  rect>pts nk:rect>pts rect>screen nk:rect>screen rect>size nk:rect>size released? nk:released?
Builtin  render nk:render restore nk:restore rotate nk:rotate save nk:save scale nk:scale scancode? nk:scancode?
Builtin  screen-saver nk:screen-saver screen-size nk:screen-size screen-win-close nk:screen-win-close
Builtin  selectable nk:selectable set nk:set set-font nk:set-font set-num-vertices nk:set-num-vertices
Builtin  setpos nk:setpos setwin nk:setwin slider nk:slider slider-int nk:slider-int space nk:space
Builtin  spacing nk:spacing stroke-arc nk:stroke-arc stroke-circle nk:stroke-circle stroke-curve nk:stroke-curve
Builtin  stroke-line nk:stroke-line stroke-polygon nk:stroke-polygon stroke-polyline nk:stroke-polyline
Builtin  stroke-rect nk:stroke-rect stroke-tri nk:stroke-tri style-from-table nk:style-from-table sw-gl nk:sw-gl
Builtin  text? nk:text? tooltip nk:tooltip translate nk:translate tree-pop nk:tree-pop tree-state-push nk:tree-state-push
Builtin  use-style nk:use-style vsync nk:vsync widget nk:widget widget-bounds nk:widget-bounds widget-fitting nk:widget-fitting
Builtin  widget-high nk:widget-high widget-hovered? nk:widget-hovered? widget-mouse-click-down? nk:widget-mouse-click-down?
Builtin  widget-mouse-clicked? nk:widget-mouse-clicked? widget-pos nk:widget-pos widget-size nk:widget-size
Builtin  widget-wide nk:widget-wide win nk:win win-bounds nk:win-bounds win-bounds! nk:win-bounds! win-close nk:win-close
Builtin  win-closed? nk:win-closed? win-collapse nk:win-collapse win-collapsed? nk:win-collapsed? win-content-bounds nk:win-content-bounds
Builtin  win-focus nk:win-focus win-focused? nk:win-focused? win-hidden? nk:win-hidden? win-high nk:win-high
Builtin  win-hovered? nk:win-hovered? win-pos nk:win-pos win-scroll-ofs nk:win-scroll-ofs win-scroll-ofs! nk:win-scroll-ofs!
Builtin  win-show nk:win-show win-size nk:win-size win-wide nk:win-wide win? nk:win? MAX ns:MAX ! o:!
Builtin  + o:+ +? o:+? ??? o:??? @ o:@ class o:class exec o:exec isa o:isa method o:method mutate o:mutate
Builtin  new o:new super o:super devname os:devname env os:env lang os:lang mem-arenas os:mem-arenas
Builtin  notify os:notify region os:region cast ptr:cast len ptr:len null? ptr:null? pack ptr:pack unpack ptr:unpack
Builtin  unpack_orig ptr:unpack_orig publish pubsub:publish qsize pubsub:qsize subscribe pubsub:subscribe
Builtin  + q:+ clear q:clear len q:len new q:new notify q:notify overwrite q:overwrite peek q:peek pick q:pick
Builtin  pop q:pop push q:push remove q:remove shift q:shift size q:size slide q:slide throwing q:throwing
Builtin  wait q:wait ++match r:++match +/ r:+/ +match r:+match / r:/ @ r:@ len r:len match r:match new r:new
Builtin  rx r:rx str r:str * rat:* + rat:+ - rat:- / rat:/ >n rat:>n >s rat:>s new rat:new proper rat:proper
Builtin  ! s:! * s:* + s:+ - s:- / s:/ /scripts s:/scripts <+ s:<+ = s:= =ic s:=ic >base64 s:>base64
Builtin  >ucs2 s:>ucs2 @ s:@ append s:append base64> s:base64> clear s:clear cmp s:cmp cmpi s:cmpi compress s:compress
Builtin  days! s:days! dist s:dist each s:each each! s:each! eachline s:eachline escape s:escape expand s:expand
Builtin  fill s:fill fmt s:fmt fold s:fold gershayim s:gershayim globmatch s:globmatch hexupr s:hexupr
Builtin  insert s:insert intl s:intl intl! s:intl! lang s:lang lc s:lc lc? s:lc? len s:len lsub s:lsub
Builtin  ltrim s:ltrim map s:map months! s:months! new s:new norm s:norm reduce s:reduce repinsert s:repinsert
Builtin  replace s:replace replace! s:replace! rev s:rev rsearch s:rsearch rsub s:rsub rtrim s:rtrim
Builtin  script? s:script? search s:search size s:size slice s:slice soundex s:soundex strfmap s:strfmap
Builtin  strfmt s:strfmt text-wrap s:text-wrap trim s:trim tsub s:tsub uc s:uc uc? s:uc? ucs2> s:ucs2>
Builtin  utf8? s:utf8? zt s:zt close sio:close enum sio:enum open sio:open opts! sio:opts! opts@ sio:opts@
Builtin  read sio:read write sio:write @ slv:@ auto slv:auto build slv:build constraint slv:constraint
Builtin  dump slv:dump edit slv:edit named-variable slv:named-variable new slv:new relation slv:relation
Builtin  reset slv:reset suggest slv:suggest term slv:term update slv:update v[] slv:v[] variable slv:variable
Builtin  v{} slv:v{} new smtp:new send smtp:send apply-filter snd:apply-filter devices? snd:devices?
Builtin  end-record snd:end-record filter snd:filter formats? snd:formats? freq snd:freq gain snd:gain
Builtin  gain? snd:gain? init snd:init len snd:len loop snd:loop loop? snd:loop? mix snd:mix new snd:new
Builtin  pause snd:pause play snd:play played snd:played rate snd:rate ready? snd:ready? record snd:record
Builtin  resume snd:resume seek snd:seek stop snd:stop stopall snd:stopall volume snd:volume volume? snd:volume?
Builtin  + st:+ . st:. clear st:clear len st:len ndrop st:ndrop new st:new op! st:op! peek st:peek pick st:pick
Builtin  pop st:pop push st:push roll st:roll shift st:shift size st:size slide st:slide swap st:swap
Builtin  throwing st:throwing >buf struct:>buf arr> struct:arr> buf struct:buf buf> struct:buf> byte struct:byte
Builtin  double struct:double field! struct:field! field@ struct:field@ float struct:float ignore struct:ignore
Builtin  int struct:int long struct:long struct; struct:struct; word struct:word ! t:! @ t:@ by-name t:by-name
Builtin  cor t:cor cor-drop t:cor-drop curtask t:curtask def-queue t:def-queue def-stack t:def-stack
Builtin  done? t:done? err! t:err! err? t:err? errno? t:errno? getq t:getq handler t:handler handler@ t:handler@
Builtin  kill t:kill list t:list main t:main max-exceptions t:max-exceptions name! t:name! name@ t:name@
Builtin  notify t:notify parent t:parent pop t:pop priority t:priority push t:push q-notify t:q-notify
Builtin  q-wait t:q-wait qlen t:qlen result t:result set-affinity t:set-affinity setq t:setq start t:start
Builtin  task t:task task-n t:task-n task-stop t:task-stop wait t:wait yield t:yield yield! t:yield!
Builtin  add tree:add binary tree:binary bk tree:bk btree tree:btree cmp! tree:cmp! data tree:data del tree:del
Builtin  find tree:find iter tree:iter next tree:next nodes tree:nodes parent tree:parent parse tree:parse
Builtin  prev tree:prev root tree:root search tree:search trie tree:trie ! w:! (is) w:(is) @ w:@ alias: w:alias:
Builtin  cb w:cb deprecate w:deprecate dlcall w:dlcall dlopen w:dlopen dlsym w:dlsym exec w:exec exec? w:exec?
Builtin  ffifail w:ffifail find w:find forget w:forget is w:is name w:name undo w:undo >s xml:>s >txt xml:>txt
Builtin  md-init xml:md-init md-parse xml:md-parse parse xml:parse parse-html xml:parse-html parse-stream xml:parse-stream
Builtin  getmsg[] zmq:getmsg[] sendmsg[] zmq:sendmsg[]

" numbers
syn keyword eighthMath decimal hex base@ base! 
syn match eighthInteger '\<-\=[0-9.]*[0-9.]\+\>'

=======
" Built in words
com! -nargs=+ Builtin syn keyword eighthBuiltin <args>
"Builtin ^ < <# <#> = > - -- ,# ; ;; !  ???  / .  .# ' () @ * */ \ 

Builtin  ! G:! #! G:#! ## G:## #> G:#> #if G:#if ' G:' ( G:( (* G:(* (:) G:(:) (code) G:(code) (getc) G:(getc)
Builtin  (gets) G:(gets) (interp) G:(interp) (needs) G:(needs) (putc) G:(putc) (puts) G:(puts) (putslim) G:(putslim)
Builtin  (say) G:(say) (stat) G:(stat) ) G:) +listener G:+listener +ref G:+ref ,# G:,# -- G:-- -----BEGIN G:-----BEGIN
Builtin  -Inf G:-Inf -Inf? G:-Inf? -listener G:-listener -ref G:-ref -rot G:-rot . G:. .# G:.# .needs G:.needs
Builtin  .r G:.r .s G:.s .stats G:.stats .ver G:.ver .with G:.with 0; G:0; 2dip G:2dip 2drop G:2drop
Builtin  2dup G:2dup 2over G:2over 2swap G:2swap 3drop G:3drop 4drop G:4drop 8thdt? G:8thdt? 8thver? G:8thver?
Builtin  : G:: ; G:; ;; G:;; ;;; G:;;; ;then G:;then ;with G:;with <# G:<# <#> G:<#> >clip G:>clip >json G:>json
Builtin  >kind G:>kind >n G:>n >r G:>r >s G:>s ?: G:?: ??? G:??? @ G:@ Inf G:Inf Inf? G:Inf? NaN G:NaN
Builtin  NaN? G:NaN? SED-CHECK G:SED-CHECK SED: G:SED: SED: G:SED: \ G:\ ` G:` `` G:`` actor: G:actor:
Builtin  again G:again ahead G:ahead and G:and appname G:appname apropos G:apropos argc G:argc args G:args
Builtin  array? G:array? assert G:assert base G:base bi G:bi bits G:bits break G:break break? G:break?
Builtin  build? G:build? buildver? G:buildver? bye G:bye c# G:c# c/does G:c/does case G:case caseof G:caseof
Builtin  chdir G:chdir clip> G:clip> clone G:clone clone-shallow G:clone-shallow cold G:cold compat-level G:compat-level
Builtin  compile G:compile compile? G:compile? conflict G:conflict const G:const container? G:container?
Builtin  cr G:cr curlang G:curlang curry G:curry curry: G:curry: decimal G:decimal defer: G:defer: deg>rad G:deg>rad
Builtin  depth G:depth die G:die dip G:dip drop G:drop dstack G:dstack dump G:dump dup G:dup dup? G:dup?
Builtin  else G:else enum: G:enum: eval G:eval eval! G:eval! eval0 G:eval0 execnull G:execnull expect G:expect
Builtin  extra! G:extra! extra@ G:extra@ false G:false fnv G:fnv fourth G:fourth free G:free func: G:func:
Builtin  getc G:getc getcwd G:getcwd getenv G:getenv gets G:gets handler G:handler header G:header help G:help
Builtin  hex G:hex i: G:i: i; G:i; if G:if if; G:if; isa? G:isa? items-used G:items-used jcall G:jcall
Builtin  jclass G:jclass jmethod G:jmethod json-nesting G:json-nesting json-pretty G:json-pretty json-throw G:json-throw
Builtin  json> G:json> k32 G:k32 keep G:keep l: G:l: last G:last lib G:lib libbin G:libbin libc G:libc
Builtin  listener@ G:listener@ literal G:literal locals: G:locals: lock G:lock lock-to G:lock-to locked? G:locked?
Builtin  log G:log log-async G:log-async log-task G:log-task log-time G:log-time log-time-local G:log-time-local
Builtin  long-days G:long-days long-months G:long-months loop G:loop loop- G:loop- map? G:map? mark G:mark
Builtin  mark? G:mark? memfree G:memfree mobile? G:mobile? n# G:n# name>os G:name>os name>sem G:name>sem
Builtin  ndrop G:ndrop needs G:needs new G:new next-arg G:next-arg nip G:nip noop G:noop not G:not ns G:ns
Builtin  ns: G:ns: ns>ls G:ns>ls ns>s G:ns>s ns? G:ns? null G:null null; G:null; null? G:null? number? G:number?
Builtin  off G:off on G:on onexit G:onexit only G:only op! G:op! or G:or os G:os os-names G:os-names
Builtin  os>long-name G:os>long-name os>name G:os>name over G:over p: G:p: pack G:pack parse G:parse
Builtin  parsech G:parsech parseln G:parseln parsews G:parsews pick G:pick poke G:poke pool-clear G:pool-clear
Builtin  prior G:prior private G:private process-args G:process-args prompt G:prompt public G:public
Builtin  putc G:putc puts G:puts putslim G:putslim quote G:quote r! G:r! r> G:r> r@ G:r@ rad>deg G:rad>deg
Builtin  rand G:rand rand-pcg G:rand-pcg rand-pcg-seed G:rand-pcg-seed randbuf G:randbuf randbuf-pcg G:randbuf-pcg
Builtin  rdrop G:rdrop recurse G:recurse recurse-stack G:recurse-stack ref@ G:ref@ reg! G:reg! reg@ G:reg@
Builtin  regbin@ G:regbin@ remaining-args G:remaining-args repeat G:repeat reset G:reset roll G:roll
Builtin  rop! G:rop! rot G:rot rpick G:rpick rroll G:rroll rstack G:rstack rswap G:rswap rusage G:rusage
Builtin  s>ns G:s>ns same? G:same? scriptdir G:scriptdir scriptfile G:scriptfile sem G:sem sem-post G:sem-post
Builtin  sem-rm G:sem-rm sem-wait G:sem-wait sem-wait? G:sem-wait? sem>name G:sem>name semi-throw G:semi-throw
Builtin  set-wipe G:set-wipe setenv G:setenv settings! G:settings! settings![] G:settings![] settings@ G:settings@
Builtin  settings@? G:settings@? settings@[] G:settings@[] sh G:sh sh$ G:sh$ short-days G:short-days
Builtin  short-months G:short-months sleep G:sleep space G:space stack-check G:stack-check stack-size G:stack-size
Builtin  step G:step string? G:string? struct: G:struct: swap G:swap syslang G:syslang sysregion G:sysregion
Builtin  tab-hook G:tab-hook tell-conflict G:tell-conflict tempdir G:tempdir tempfilename G:tempfilename
Builtin  then G:then third G:third throw G:throw thrownull G:thrownull times G:times tlog G:tlog tri G:tri
Builtin  true G:true tuck G:tuck type-check G:type-check typeassert G:typeassert unlock G:unlock unpack G:unpack
Builtin  until G:until until! G:until! var G:var var, G:var, while G:while while! G:while! with: G:with:
Builtin  words G:words words-like G:words-like words/ G:words/ xchg G:xchg xor G:xor >auth HTTP:>auth
Builtin  sh I:sh tpush I:tpush trace-word I:trace-word call JSONRPC:call auth-string OAuth:auth-string
Builtin  gen-nonce OAuth:gen-nonce params OAuth:params call SOAP:call ! a:! + a:+ - a:- 2each a:2each
Builtin  2map a:2map 2map+ a:2map+ 2map= a:2map= = a:= >map a:>map @ a:@ @@ a:@@ bsearch a:bsearch clear a:clear
Builtin  close a:close diff a:diff dot a:dot each a:each each-slice a:each-slice exists? a:exists? filter a:filter
Builtin  generate a:generate group a:group indexof a:indexof insert a:insert intersect a:intersect join a:join
Builtin  len a:len map a:map map+ a:map+ map= a:map= mean a:mean mean&variance a:mean&variance new a:new
Builtin  op a:op op! a:op! op= a:op= open a:open pop a:pop push a:push qsort a:qsort randeach a:randeach
Builtin  reduce a:reduce reduce+ a:reduce+ rev a:rev shift a:shift shuffle a:shuffle slice a:slice slice+ a:slice+
Builtin  slide a:slide sort a:sort union a:union when a:when when! a:when! x a:x x-each a:x-each xchg a:xchg
Builtin  y a:y zip a:zip 8thdir app:8thdir asset app:asset atrun app:atrun atrun app:atrun atrun app:atrun
Builtin  basedir app:basedir current app:current datadir app:datadir exename app:exename isgui app:isgui
Builtin  main app:main oncrash app:oncrash orientation app:orientation pid app:pid restart app:restart
Builtin  resumed app:resumed shared? app:shared? standalone app:standalone subdir app:subdir suspended app:suspended
Builtin  sysquit app:sysquit (here) asm:(here) >n asm:>n avail asm:avail c, asm:c, here! asm:here! n> asm:n>
Builtin  used asm:used w, asm:w, ! b:! + b:+ / b:/ = b:= >base64 b:>base64 >hex b:>hex >mpack b:>mpack
Builtin  @ b:@ append b:append base64> b:base64> bit! b:bit! bit@ b:bit@ clear b:clear compress b:compress
Builtin  conv b:conv each b:each each-slice b:each-slice expand b:expand fill b:fill getb b:getb hex> b:hex>
Builtin  len b:len mem> b:mem> move b:move mpack-date b:mpack-date mpack-ignore b:mpack-ignore mpack> b:mpack>
Builtin  new b:new op b:op rev b:rev search b:search shmem b:shmem slice b:slice splice b:splice ungetb b:ungetb
Builtin  writable b:writable xor b:xor +block bc:+block .blocks bc:.blocks add-block bc:add-block block-hash bc:block-hash
Builtin  block@ bc:block@ first-block bc:first-block hash bc:hash last-block bc:last-block load bc:load
Builtin  new bc:new save bc:save set-sql bc:set-sql validate bc:validate validate-block bc:validate-block
Builtin  add bloom:add filter bloom:filter in? bloom:in? accept bt:accept ch! bt:ch! ch@ bt:ch@ connect bt:connect
Builtin  disconnect bt:disconnect err? bt:err? leconnect bt:leconnect lescan bt:lescan listen bt:listen
Builtin  on? bt:on? read bt:read scan bt:scan service? bt:service? services? bt:services? write bt:write
Builtin  * c:* * c:* + c:+ + c:+ = c:= = c:= >ri c:>ri >ri c:>ri abs c:abs abs c:abs arg c:arg arg c:arg
Builtin  conj c:conj conj c:conj im c:im n> c:n> new c:new new c:new re c:re >aes128gcm cr:>aes128gcm
Builtin  >aes256gcm cr:>aes256gcm >cp cr:>cp >cpe cr:>cpe >decrypt cr:>decrypt >edbox cr:>edbox >encrypt cr:>encrypt
Builtin  >nbuf cr:>nbuf >rsabox cr:>rsabox >uuid cr:>uuid CBC cr:CBC CFB cr:CFB CTR cr:CTR ECB cr:ECB
Builtin  GCM cr:GCM OFB cr:OFB aad? cr:aad? aes128box-sig cr:aes128box-sig aes128gcm> cr:aes128gcm>
Builtin  aes256box-sig cr:aes256box-sig aes256gcm> cr:aes256gcm> aesgcm cr:aesgcm blakehash cr:blakehash
Builtin  chacha20box-sig cr:chacha20box-sig chachapoly cr:chachapoly cipher! cr:cipher! cipher@ cr:cipher@
Builtin  cp> cr:cp> cpe> cr:cpe> decrypt cr:decrypt decrypt+ cr:decrypt+ decrypt> cr:decrypt> dh-genkey cr:dh-genkey
Builtin  dh-secret cr:dh-secret dh-sign cr:dh-sign dh-verify cr:dh-verify ebox-sig cr:ebox-sig ecc-genkey cr:ecc-genkey
Builtin  ecc-secret cr:ecc-secret ecc-sign cr:ecc-sign ecc-verify cr:ecc-verify edbox-sig cr:edbox-sig
Builtin  edbox> cr:edbox> encrypt cr:encrypt encrypt+ cr:encrypt+ encrypt> cr:encrypt> ensurekey cr:ensurekey
Builtin  err? cr:err? gcm-tag-size cr:gcm-tag-size genkey cr:genkey hash cr:hash hash! cr:hash! hash+ cr:hash+
Builtin  hash>b cr:hash>b hash>s cr:hash>s hash@ cr:hash@ hmac cr:hmac hotp cr:hotp iv? cr:iv? mode cr:mode
Builtin  mode@ cr:mode@ randkey cr:randkey restore cr:restore root-certs cr:root-certs rsa_decrypt cr:rsa_decrypt
Builtin  rsa_encrypt cr:rsa_encrypt rsa_sign cr:rsa_sign rsa_verify cr:rsa_verify rsabox-sig cr:rsabox-sig
Builtin  rsabox> cr:rsabox> rsagenkey cr:rsagenkey save cr:save sbox-sig cr:sbox-sig sha1-hmac cr:sha1-hmac
Builtin  shard cr:shard tag? cr:tag? totp cr:totp totp-epoch cr:totp-epoch totp-time-step cr:totp-time-step
Builtin  unshard cr:unshard uuid cr:uuid uuid> cr:uuid> validate-pgp-sig cr:validate-pgp-sig (.hebrew) d:(.hebrew)
Builtin  (.islamic) d:(.islamic) + d:+ +day d:+day +hour d:+hour +min d:+min +msec d:+msec - d:- .hebrew d:.hebrew
Builtin  .islamic d:.islamic .time d:.time / d:/ = d:= >fixed d:>fixed >hebepoch d:>hebepoch >msec d:>msec
Builtin  >unix d:>unix >ymd d:>ymd Adar d:Adar Adar2 d:Adar2 Adar2 d:Adar2 Av d:Av Elul d:Elul Fri d:Fri
Builtin  Heshvan d:Heshvan Iyar d:Iyar Kislev d:Kislev Mon d:Mon Nissan d:Nissan Sat d:Sat Shevat d:Shevat
Builtin  Sivan d:Sivan Sun d:Sun Tammuz d:Tammuz Tevet d:Tevet Thu d:Thu Tishrei d:Tishrei Tue d:Tue
Builtin  Wed d:Wed adjust-dst d:adjust-dst between d:between d. d:d. dawn d:dawn days-in-hebrew-year d:days-in-hebrew-year
Builtin  displaying-hebrew d:displaying-hebrew do-dawn d:do-dawn do-dusk d:do-dusk do-rise d:do-rise
Builtin  doy d:doy dst? d:dst? dstquery d:dstquery dstzones? d:dstzones? dusk d:dusk elapsed-timer d:elapsed-timer
Builtin  elapsed-timer-seconds d:elapsed-timer-seconds first-dow d:first-dow fixed> d:fixed> fixed>dow d:fixed>dow
Builtin  fixed>hebrew d:fixed>hebrew fixed>islamic d:fixed>islamic format d:format hanukkah d:hanukkah
Builtin  hebrew-epoch d:hebrew-epoch hebrew>fixed d:hebrew>fixed hebrewtoday d:hebrewtoday hmonth-name d:hmonth-name
Builtin  islamic.epoch d:islamic.epoch islamic>fixed d:islamic>fixed islamictoday d:islamictoday join d:join
Builtin  last-day-of-hebrew-month d:last-day-of-hebrew-month last-dow d:last-dow last-month d:last-month
Builtin  last-week d:last-week last-year d:last-year latitude d:latitude longitude d:longitude longitude d:longitude
Builtin  msec d:msec msec> d:msec> new d:new next-dow d:next-dow next-month d:next-month next-week d:next-week
Builtin  next-year d:next-year number>hebrew d:number>hebrew omer d:omer parse d:parse pesach d:pesach
Builtin  prev-dow d:prev-dow purim d:purim rosh-chodesh? d:rosh-chodesh? rosh-hashanah d:rosh-hashanah
Builtin  shavuot d:shavuot start-timer d:start-timer sunrise d:sunrise taanit-esther d:taanit-esther
Builtin  ticks d:ticks ticks/sec d:ticks/sec timer d:timer tisha-beav d:tisha-beav tzadjust d:tzadjust
Builtin  unix> d:unix> updatetz d:updatetz year@ d:year@ ymd d:ymd ymd> d:ymd> yom-haatsmaut d:yom-haatsmaut
Builtin  yom-kippur d:yom-kippur add-func db:add-func bind db:bind close db:close col db:col col[] db:col[]
Builtin  col{} db:col{} err? db:err? errmsg db:errmsg exec db:exec exec-cb db:exec-cb key db:key mysql? db:mysql?
Builtin  odbc? db:odbc? open db:open open? db:open? prepare db:prepare query db:query query-all db:query-all
Builtin  rekey db:rekey sqlerrmsg db:sqlerrmsg bp dbg:bp except-task@ dbg:except-task@ go dbg:go line-info dbg:line-info
Builtin  prompt dbg:prompt stop dbg:stop trace dbg:trace trace-enter dbg:trace-enter trace-leave dbg:trace-leave
Builtin  abspath f:abspath append f:append associate f:associate atime f:atime canwrite? f:canwrite?
Builtin  chmod f:chmod close f:close copy f:copy copydir f:copydir create f:create ctime f:ctime dir? f:dir?
Builtin  dname f:dname eachbuf f:eachbuf eachline f:eachline enssep f:enssep eof? f:eof? err? f:err?
Builtin  exists? f:exists? flush f:flush fname f:fname getb f:getb getc f:getc getline f:getline getmod f:getmod
Builtin  glob f:glob glob-nocase f:glob-nocase include f:include launch f:launch link f:link link> f:link>
Builtin  link? f:link? mkdir f:mkdir mmap f:mmap mmap-range f:mmap-range mmap-range? f:mmap-range? mtime f:mtime
Builtin  mv f:mv open f:open open-ro f:open-ro popen f:popen print f:print read f:read relpath f:relpath
Builtin  rglob f:rglob rm f:rm rmdir f:rmdir seek f:seek sep f:sep show f:show size f:size slurp f:slurp
Builtin  stderr f:stderr stdin f:stdin stdout f:stdout tell f:tell times f:times trash f:trash ungetb f:ungetb
Builtin  ungetc f:ungetc unzip f:unzip unzip-entry f:unzip-entry watch f:watch write f:write writen f:writen
Builtin  zip+ f:zip+ zip@ f:zip@ zipentry f:zipentry zipnew f:zipnew zipopen f:zipopen zipsave f:zipsave
Builtin  bold font:bold face? font:face? glyph-path font:glyph-path glyph-pos font:glyph-pos info font:info
Builtin  italic font:italic ls font:ls measure font:measure new font:new pixels font:pixels pixels? font:pixels?
Builtin  points font:points points? font:points? styles font:styles styles? font:styles? underline font:underline
Builtin  +child g:+child +kind g:+kind +path g:+path -child g:-child /path g:/path >img g:>img >progress g:>progress
Builtin  add-items g:add-items adjustwidth g:adjustwidth allow-orient g:allow-orient arc g:arc arc2 g:arc2
Builtin  autohide g:autohide back g:back bezier g:bezier bg g:bg bg? g:bg? bounds g:bounds bounds? g:bounds?
Builtin  box-label g:box-label btn-font g:btn-font bubble g:bubble button-size g:button-size buttons-visible g:buttons-visible
Builtin  c-text g:c-text callout g:callout center g:center child g:child clear g:clear clearpath g:clearpath
Builtin  clr>n g:clr>n coleven g:coleven colordlg g:colordlg colwidth g:colwidth connectededges g:connectededges
Builtin  contrasting g:contrasting cp g:cp curmouse? g:curmouse? default-font g:default-font deselect-row g:deselect-row
Builtin  dismiss g:dismiss do g:do draw-fitted-text g:draw-fitted-text draw-text g:draw-text draw-text-at g:draw-text-at
Builtin  each g:each edit-on-double-click g:edit-on-double-click editable g:editable editdlg g:editdlg
Builtin  empty-text g:empty-text enable g:enable enabled? g:enabled? fade g:fade fb-files g:fb-files
Builtin  fcolor g:fcolor fg g:fg fg? g:fg? file-filter g:file-filter file-name g:file-name filedlg g:filedlg
Builtin  fill g:fill fillall g:fillall fit-text g:fit-text flex! g:flex! focus g:focus fontdlg g:fontdlg
Builtin  forward g:forward fullscreen g:fullscreen get-lasso-items g:get-lasso-items get-tab g:get-tab
Builtin  getclr g:getclr getfont g:getfont getimage g:getimage getpath g:getpath getroot g:getroot gradient g:gradient
Builtin  gui? g:gui? handle g:handle headerheight g:headerheight hide g:hide image g:image image-at g:image-at
Builtin  invalidate g:invalidate ix? g:ix? justify g:justify keyinfo g:keyinfo l-text g:l-text laf g:laf
Builtin  laf! g:laf! laf? g:laf? len g:len line-width g:line-width lineto g:lineto list+ g:list+ list- g:list-
Builtin  loadcontent g:loadcontent localize g:localize m! g:m! m@ g:m@ menu-font g:menu-font menu-update g:menu-update
Builtin  menuenabled g:menuenabled mouse? g:mouse? mousepos? g:mousepos? moveto g:moveto msgdlg g:msgdlg
Builtin  multi g:multi name g:name named-skin g:named-skin new g:new new-laf g:new-laf next g:next obj g:obj
Builtin  on g:on on? g:on? ontop g:ontop oshandle g:oshandle outlinethickness g:outlinethickness panel-size g:panel-size
Builtin  panel-size? g:panel-size? parent g:parent path g:path path>s g:path>s pie g:pie pix! g:pix!
Builtin  pop g:pop popmenu g:popmenu pos? g:pos? prev g:prev propval! g:propval! propval@ g:propval@
Builtin  push g:push qbezier g:qbezier quit g:quit r-text g:r-text readonly g:readonly rect g:rect refresh g:refresh
Builtin  restore g:restore root g:root root-item-visible g:root-item-visible rotate g:rotate rowheight g:rowheight
Builtin  rrect g:rrect s>path g:s>path save g:save say g:say scale g:scale scolor g:scolor scrollthickness g:scrollthickness
Builtin  sectionenable g:sectionenable select! g:select! select@ g:select@ selected-rows g:selected-rows
Builtin  set-lasso g:set-lasso set-long-press g:set-long-press set-popup-font g:set-popup-font set-range g:set-range
Builtin  set-swipe g:set-swipe set-value g:set-value setcursor g:setcursor setfont g:setfont setheader g:setheader
Builtin  sethtml g:sethtml setimage g:setimage setname g:setname setroot g:setroot settab g:settab show g:show
Builtin  show-line-numbers g:show-line-numbers show-pct g:show-pct showmenu g:showmenu showtooltip g:showtooltip
Builtin  size g:size size? g:size? skin g:skin skin-class g:skin-class stackix g:stackix state g:state
Builtin  state? g:state? stepsize g:stepsize stroke g:stroke stroke-fill g:stroke-fill style g:style
Builtin  tabname g:tabname text g:text text-box-style g:text-box-style text? g:text? textcolor g:textcolor
Builtin  textsize g:textsize timer! g:timer! timer@ g:timer@ toback g:toback tofront g:tofront toggle-row g:toggle-row
Builtin  tooltip g:tooltip top g:top transition g:transition translate g:translate tree-open g:tree-open
Builtin  triangle g:triangle update g:update updateitems g:updateitems url g:url user g:user user! g:user!
Builtin  vertical g:vertical view g:view visible? g:visible? vpos! g:vpos! vpos@ g:vpos@ waitcursor g:waitcursor
Builtin  winding g:winding xy g:xy xy? g:xy? +edge gr:+edge +edge+w gr:+edge+w +node gr:+node connect gr:connect
Builtin  edges gr:edges m! gr:m! m@ gr:m@ neighbors gr:neighbors new gr:new node-edges gr:node-edges
Builtin  nodes gr:nodes traverse gr:traverse + h:+ clear h:clear len h:len new h:new peek h:peek pop h:pop
Builtin  push h:push unique h:unique arm? hw:arm? camera hw:camera camera-fmt hw:camera-fmt camera-img hw:camera-img
Builtin  camera? hw:camera? cpu? hw:cpu? device? hw:device? displays? hw:displays? displaysize? hw:displaysize?
Builtin  err? hw:err? gpio hw:gpio gpio! hw:gpio! gpio-mmap hw:gpio-mmap gpio@ hw:gpio@ i2c hw:i2c i2c! hw:i2c!
Builtin  i2c!reg hw:i2c!reg i2c@ hw:i2c@ i2c@reg hw:i2c@reg isround? hw:isround? iswatch? hw:iswatch?
Builtin  mac? hw:mac? mem? hw:mem? poll hw:poll sensor hw:sensor start hw:start stop hw:stop fetch-full imap:fetch-full
Builtin  fetch-uid-mail imap:fetch-uid-mail login imap:login new imap:new select-inbox imap:select-inbox
Builtin  >file img:>file copy img:copy crop img:crop data img:data desat img:desat fill img:fill filter img:filter
Builtin  flip img:flip from-svg img:from-svg new img:new pix! img:pix! pix@ img:pix@ qr-gen img:qr-gen
Builtin  qr-parse img:qr-parse rotate img:rotate scale img:scale scroll img:scroll size img:size countries iso:countries
Builtin  find loc:find sort loc:sort ! m:! !? m:!? + m:+ +? m:+? - m:- @ m:@ @? m:@? @@ m:@@ clear m:clear
Builtin  data m:data each m:each exists? m:exists? iter m:iter iter-all m:iter-all keys m:keys len m:len
Builtin  map m:map new m:new op! m:op! open m:open vals m:vals xchg m:xchg ! mat:! * mat:* + mat:+ = mat:=
Builtin  @ mat:@ col mat:col data mat:data det mat:det dim? mat:dim? get-n mat:get-n ident mat:ident
Builtin  m. mat:m. minor mat:minor n* mat:n* new mat:new row mat:row same-size? mat:same-size? trans mat:trans
Builtin  ! n:! * n:* */ n:*/ + n:+ +! n:+! - n:- / n:/ /mod n:/mod 1+ n:1+ 1- n:1- < n:< = n:= > n:>
Builtin  BIGE n:BIGE BIGPI n:BIGPI E n:E PI n:PI ^ n:^ abs n:abs acos n:acos acos n:acos asin n:asin
Builtin  asin n:asin atan n:atan atan n:atan atan2 n:atan2 band n:band between n:between bfloat n:bfloat
Builtin  bic n:bic bint n:bint binv n:binv bnot n:bnot bor n:bor bxor n:bxor ceil n:ceil clamp n:clamp
Builtin  cmp n:cmp comb n:comb cos n:cos cosd n:cosd exp n:exp expmod n:expmod float n:float floor n:floor
Builtin  fmod n:fmod frac n:frac gcd n:gcd int n:int invmod n:invmod kind? n:kind? lcm n:lcm ln n:ln
Builtin  max n:max median n:median min n:min mod n:mod neg n:neg odd? n:odd? perm n:perm prime? n:prime?
Builtin  quantize n:quantize quantize! n:quantize! r+ n:r+ range n:range rot32l n:rot32l rot32r n:rot32r
Builtin  round n:round round2 n:round2 running-variance n:running-variance running-variance-finalize n:running-variance-finalize
Builtin  sgn n:sgn shl n:shl shr n:shr sin n:sin sind n:sind sqr n:sqr sqrt n:sqrt tan n:tan tand n:tand
Builtin  trunc n:trunc ~= n:~= ! net:! >url net:>url @ net:@ DGRAM net:DGRAM INET4 net:INET4 INET6 net:INET6
Builtin  PROTO_TCP net:PROTO_TCP PROTO_UDP net:PROTO_UDP STREAM net:STREAM accept net:accept addrinfo>o net:addrinfo>o
Builtin  again? net:again? alloc-and-read net:alloc-and-read alloc-buf net:alloc-buf bind net:bind browse net:browse
Builtin  close net:close connect net:connect err>s net:err>s err? net:err? get net:get getaddrinfo net:getaddrinfo
Builtin  getpeername net:getpeername head net:head ifaces? net:ifaces? listen net:listen net-socket net:net-socket
Builtin  opts net:opts port-is-ssl? net:port-is-ssl? post net:post proxy! net:proxy! read net:read recvfrom net:recvfrom
Builtin  s>url net:s>url sendto net:sendto server net:server setsockopt net:setsockopt socket net:socket
Builtin  tlshello net:tlshello url> net:url> user-agent net:user-agent wait net:wait write net:write
Builtin  MAX ns:MAX cast ptr:cast len ptr:len pack ptr:pack unpack ptr:unpack unpack_orig ptr:unpack_orig
Builtin  + q:+ clear q:clear len q:len new q:new notify q:notify overwrite q:overwrite peek q:peek pick q:pick
Builtin  pop q:pop push q:push shift q:shift size q:size slide q:slide throwing q:throwing wait q:wait
Builtin  ++match r:++match +/ r:+/ +match r:+match / r:/ @ r:@ err? r:err? len r:len match r:match new r:new
Builtin  rx r:rx str r:str ! s:! * s:* + s:+ - s:- / s:/ /scripts s:/scripts <+ s:<+ = s:= =ic s:=ic
Builtin  >base64 s:>base64 >ucs2 s:>ucs2 @ s:@ append s:append base64> s:base64> clear s:clear cmp s:cmp
Builtin  cmpi s:cmpi compress s:compress days! s:days! each s:each eachline s:eachline expand s:expand
Builtin  fill s:fill fmt s:fmt gershayim s:gershayim globmatch s:globmatch hexupr s:hexupr insert s:insert
Builtin  intl s:intl intl! s:intl! lang s:lang lc s:lc len s:len lsub s:lsub ltrim s:ltrim map s:map
Builtin  months! s:months! new s:new replace s:replace replace! s:replace! rev s:rev rsearch s:rsearch
Builtin  rsub s:rsub rtrim s:rtrim script? s:script? search s:search size s:size slice s:slice strfmap s:strfmap
Builtin  strfmt s:strfmt trim s:trim tsub s:tsub uc s:uc ucs2> s:ucs2> utf8? s:utf8? zt s:zt close sio:close
Builtin  enum sio:enum open sio:open opts! sio:opts! opts@ sio:opts@ read sio:read write sio:write new smtp:new
Builtin  send smtp:send apply-filter snd:apply-filter devices? snd:devices? end-record snd:end-record
Builtin  filter snd:filter formats? snd:formats? freq snd:freq gain snd:gain gain? snd:gain? len snd:len
Builtin  loop snd:loop mix snd:mix new snd:new pause snd:pause play snd:play played snd:played rate snd:rate
Builtin  record snd:record seek snd:seek stop snd:stop stopall snd:stopall unmix snd:unmix volume snd:volume
Builtin  volume? snd:volume? + st:+ . st:. clear st:clear len st:len ndrop st:ndrop new st:new op! st:op!
Builtin  peek st:peek pick st:pick pop st:pop push st:push roll st:roll shift st:shift size st:size
Builtin  slide st:slide swap st:swap throwing st:throwing >buf struct:>buf arr> struct:arr> buf struct:buf
Builtin  buf> struct:buf> byte struct:byte double struct:double field! struct:field! field@ struct:field@
Builtin  float struct:float ignore struct:ignore int struct:int long struct:long struct; struct:struct;
Builtin  word struct:word ! t:! @ t:@ assign t:assign curtask t:curtask def-queue t:def-queue def-stack t:def-stack
Builtin  done? t:done? err! t:err! err? t:err? getq t:getq guitask t:guitask handler t:handler kill t:kill
Builtin  list t:list main t:main name! t:name! name@ t:name@ notify t:notify pop t:pop priority t:priority
Builtin  push t:push push< t:push< q-notify t:q-notify q-wait t:q-wait qlen t:qlen result t:result task t:task
Builtin  task-n t:task-n task-stop t:task-stop wait t:wait ! w:! @ w:@ alias: w:alias: cb w:cb deprecate w:deprecate
Builtin  exec w:exec exec? w:exec? ffifail w:ffifail find w:find forget w:forget is w:is undo w:undo
Builtin  >s xml:>s >txt xml:>txt parse xml:parse parse-html xml:parse-html parse-stream xml:parse-stream
Builtin  getmsg[] zmq:getmsg[] sendmsg[] zmq:sendmsg[]
" numbers
syn keyword eighthMath decimal hex base@ base! 
syn match eighthInteger '\<-\=[0-9.]*[0-9.]\+\>'
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
" recognize hex and binary numbers, the '$' and '%' notation is for eighth
syn match eighthInteger '\<\$\x*\x\+\>' " *1* --- dont't mess
syn match eighthInteger '\<\x*\d\x*\>'  " *2* --- this order!
syn match eighthInteger '\<%[0-1]*[0-1]\+\>'
syn match eighthInteger "\<'.\>"

" Strings
syn region eighthString start=+\.\?\"+ skip=+"+ end=+$+
syn keyword jsonNull null
syn keyword jsonBool /\(true\|false\)/
<<<<<<< HEAD
syn region eighthString start=/\<"/ end=/"\>/ 
syn match jsonObjEntry /"\"[^"]\+\"\ze\s*:/

" Include files
=======
 syn region eighthString start=/\<"/ end=/"\>/ 
syn match jsonObjEntry /"\"[^"]\+\"\ze\s*:/

"syn region jsonObject start=/{/ end=/}/ contained contains=jsonObjEntry,jsonArray,jsonObject, jsonBool, eighthString
"syn region jsonArray start=/\[/ end=/\]/ contained contains=jsonArray,jsonObject, jsonBool, eighthString

" Include files
" syn match eighthInclude '\<\(libinclude\|include\|needs\)\s\+\S\+'
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
syn region eighthComment start="\zs\\" end="$" contains=eighthTodo

" Define the default highlighting.
if !exists("did_eighth_syntax_inits")
    let did_eighth_syntax_inits=1
<<<<<<< HEAD

    " The default methods for highlighting. Can be overriden later.
=======
    " The default methods for highlighting. Can be overridden later.
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
    hi def link eighthTodo Todo
    hi def link eighthOperators Operator
    hi def link eighthMath Number
    hi def link eighthInteger Number
    hi def link eighthStack Special
    hi def link eighthFStack Special
    hi def link eighthSP Special
    hi def link eighthColonDef Define
    hi def link eighthColonName Operator
    hi def link eighthEndOfColonDef Define
    hi def link eighthDefine Define
    hi def link eighthDebug Debug
    hi def link eighthCharOps Character
    hi def link eighthConversion String
    hi def link eighthForth Statement
    hi def link eighthVocs Statement
    hi def link eighthString String
    hi def link eighthComment Comment
    hi def link eighthClassDef Define
    hi def link eighthEndOfClassDef Define
    hi def link eighthObjectDef Define
    hi def link eighthEndOfObjectDef Define
    hi def link eighthInclude Include
    hi def link eighthBuiltin Define
    hi def link eighthClasses Define
    hi def link eighthClassWord Keyword
<<<<<<< HEAD
    hi def link jsonObject Delimiter
    hi def link jsonObjEntry Label
    hi def link jsonArray Special
    hi def link jsonNull Function
    hi def link jsonBool Boolean
=======

    hi def link jsonObject Delimiter
    hi def link jsonObjEntry Label
    hi def link jsonArray Special
  hi def link jsonNull            Function
  hi def link jsonBool         Boolean
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
endif

let b:current_syntax = "8th"
let &cpo = s:cpo_save
unlet s:cpo_save

<<<<<<< HEAD
" vim: ft=vim:ts=8:sw=4:nocindent:smartindent:
=======
" vim: ts=8:sw=4:nocindent:smartindent:
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c
