(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (type $f32_i32_=>_f32 (func (param f32 i32) (result f32)))
 (type $f32_=>_i32 (func (param f32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $f64_f64_i32_=>_f64 (func (param f64 f64 i32) (result f64)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_f64_=>_f64 (func (param i32 f64) (result f64)))
 (type $i32_f32_=>_f32 (func (param i32 f32) (result f32)))
 (type $f64_=>_f32 (func (param f64) (result f32)))
 (type $f64_i32_i32_=>_none (func (param f64 i32 i32)))
 (type $i32_i64_i64_i64_i64_=>_none (func (param i32 i64 i64 i64 i64)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_f64_f64_f64_=>_none (func (param i32 f64 f64 f64 f64)))
 (type $i32_f32_f32_f32_f32_=>_none (func (param i32 f32 f32 f32 f32)))
 (type $i32_i32_i32_i32_=>_f64 (func (param i32 i32 i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_f32 (func (param i32 i32 i32 i32) (result f32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $f64_i32_=>_i32 (func (param f64 i32) (result i32)))
 (type $f32_i32_=>_i32 (func (param f32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $f64_i32_=>_f32 (func (param f64 i32) (result f32)))
 (type $f32_f32_i32_=>_f32 (func (param f32 f32 i32) (result f32)))
 (type $f64_f64_i32_i32_i32_=>_none (func (param f64 f64 i32 i32 i32)))
 (type $f32_i32_i32_=>_none (func (param f32 i32 i32)))
 (type $i32_f64_f64_=>_none (func (param i32 f64 f64)))
 (type $i64_i64_=>_f64 (func (param i64 i64) (result f64)))
 (type $i64_i64_=>_f32 (func (param i64 i64) (result f32)))
 (import "env" "memory" (memory $mimport$0 2))
 (data $.rodata (i32.const 1024) "\00\00\e0\feB.\e6?\00\00\e0\feB.\e6\bfv<y5\ef9\ea=v<y5\ef9\ea\bd\00\00\00\00\00\00\e0?\00\00\00\00\00\00\e0\bf\00r1?\00r1\bf\8e\be\bf5\8e\be\bf\b5\00\00\00?\00\00\00\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\fd\ff\ff\ff\ff\b1\bfy\a7O\b4\d0) \c0c\e8\19{\02\11p\c0\fc\caM\cdnj\a3\c0=d\cc6\0b\85\b4\c0Qg\a9\073\"]@8iYP}\f3\ad@_\b0\b6n\bb\d2\e3@\bd\a9\9f\8f\0f\81\fc@\dcI,OwA\e7@\00\00\00\00\00\00\00\00\cc\95\e4G\b1\18\a9\bd\c6\fb\9a\e6\ff\ff\b1\bf\bfk\0c\f9p\a3\10\c0\83\17}Z/\ebP\c0c\ccBg\b3\b3t\c0\d7\8b\a3(\ef\a6u\c0\de\c5\98\0c\81`N@d(~\\\02m\90@`\1d\be\8f\f8Z\b7@8\fav\fa\b8\cc\c2@d\e8\0b\c7\1d\cc\a2@\00\00\00\00\00\00\00\00\86\aa\e1o\03\e1%\beK\e2\c0\f7\f6\ff\b1\bft\80\a4\ae\b2E\03\c0\14N\b9LJ\f75\c0E\1a\nB\"\nM\c0\0f\d8\92\a8\acr?\c0\d3}\07\84\92\edA@\0e|JF9\98v@\d6a\10mn\a6\92@~\9b\c3\b8\fc\9f\91@\81\907\fc\96\b2e@\00\00\00\00\00\00\00\00m\02\'\e9\16\d3w\beB\1e^Ib\ff\b1\bfC\a8$\8a96\f7\bf\f3\a7\af\ed\f3\8a\1e\c0\03c$\c5\e6b&\c0\0f\e7\8f\af\81\de\t\c0YY\8b\90e86@\8f\87\e8\0e\9e\06a@\9b\07\eaB\86\e7p@\ff\fa\b6:\03<c@\t\189D\b3P-@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00,\fe\ff\ff\ff\bf\b2?\d64\b3[R\89\'@%\180\15cm\81@m\f4\18>\99M\c1@f\15\90\0e\d4\12\e2@\bc9[6\d5xd@c\05kNX\a2\bf@?\8c\d3TRf\01AC+\a5\83\da\83(A=\0b\de(k\a6)A\c50\95,m\fd\14\c1\d9\8c\cc)\8f=\b4=L\b0r\d1\ff\bf\b2?\d3=\95\b9\b0W\17@\e9\88\87\n\92\e3`@\81\c4\c8\9d\f9\0c\90@\a6\e3\c6S\e9\17\9f@C\15^\fb\b3\b1T@\ce\c0!\da\a0;\a0@m\1eY{\d2g\d2@r#\e0\97\e3\b5\eb@\a0Tz\1f\18\91\e1@\t\c6\db\beW\ea\b4\c0\82\cb\dej\03\cd2>B\08\8d\0e\ee\bf\b2?\f5\9c\14a\fc\c0\n@\dd\ae-\96\98OE@\1f\fd^\e2\dbYe@\e0!\fa\81|\d7d@\a6C\e3\bf\"aH@\b3NT\86\83-\86@c\fcM\e4K\f0\ac@(j\c7\d7l<\b9@\c0\b1O\d9\aa\a8\a3@\0f\f4\1c \eb\a7b\c0\dbk\f7T;1\84>4>\88>\c5\be\b2?\9cw\'\e7\97\f8\ff?\e5o\f9\aa\bf\fd,@J\dc\fb)\8e\aa?@\b4K\81q\b1@0@\edz\c0\f7\96]>@@K\d1\e4\91\d5p@\"\bf\b3\"Ef\8a@\14\c2\\\9c|\97\8b@e\13\00\0eS\95j@1)\b3\f8j>\15\c0\00\00\00\00\00\00\90\bd\86N\01\c1\14\88\80\c3vS\1b\c5Z(\a4\c5\00\00\00\00\00\00\00\00\98\11\e9B\eb\9boE\db\95\1eG|\08\e4G\ba\0b:G\00\00\00\00\00\00\00\00\00\00\00\00\8a\c5H\ad\ff\ff\8f\bd\88\1b\85\c0{Y\87\c2\9b\9d\a5\c3y7\ad\c3\00\00\00\00\00\00\00\00\08\04sB\13h\83D\c4\d7\baE\c8e\16F\ee`\16E\00\00\00\00\00\00\00\00\00\00\00\00\1b\08/\b1\b8\ff\8f\bd\95-\1a\c0R\ba\af\c1\12Qh\c2e\95\fb\c1\00\00\00\00\00\00\00\00\94l\0fB\ca\c1\b4Cs3\95D\e6\ff\8cD\b8\94-C\00\00\00\00\00\00\00\00\00\00\00\00\b7\98\be\b3\12\fb\8f\bd\cc\b1\b9\bf\9fW\f4\c06\173\c1\0d\f4N\c0\00\00\00\00\00\00\00\00-\c3\b1A\f04\08C2<\87C\1a\e0\19C\9a\85jA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\96=\93J<A\19k\0bD\cal\nF\a0\96\10G\00\00\00\00\00\00\00\00\aa\c6#C\c2\12\fdE\932\0bH\d4\1eDIY3MIi\eb\a7\c8\00\00\00\00\00\00\00\00y\ec\a1-\ff\ff\95=\86\bd\ba@\90\1c\07C\cdg\80DK\bf\f8D\00\00\00\00\00\00\00\00\a0\8d\a5B\07\dd\01E\94>\93F\1d\af]G\c1\88\0cG\beR\a7\c5\00\00\00\00\00\00\00\00\1bh\961p\ff\95=\e3\07V@\c5|*B\df\ce*C\e4\bb&C\00\00\00\00\00\00\00\00\16\tCB\1cl1D_\82gEg\e3\c9EWE\1dEY?\15\c3\00\00\00\00\00\00\00\00\db\89!4*\f6\95=\bf\c4\ff?\fd\edgAqT\fdA\8c\05\82A\00\00\00\00\00\00\00\00\b8\ec\f2A\8f\ac\86C)2SD\e5\bb\\D\98\aaTCX\f3\a9\c0\00\00\00\00\00\00\00\00\8a\bc<\14f\18\c9\bf\d1,)v\c7\d3\a9?\0f\f5DH\e5U_\bf\8e\b8\a6\8f\03\ab\f8>\b8\05\91V\00\acx\be\00\00\00\00\00\00\00\00\f0\a9M?\0de\94?dw%l\89\8c*?\a6\8cN\89Z\c0\b6>\86\9a\a6[\1d\bf:>*w\ca\da9P\b2=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ce\fc\ff\ff\ff\ff\bd?\ce\7f\7f5\9dz*@\90\a5.e\d4\c0y@\cc2\a5\a3}E\ae@\dd\82\'\c3z\ea\be@\acle\8eE\8d\\@O\'M\96\dc\85\ac@\7f\bb\c5\97\86\0b\e2@\bb\17\8f\b2,\d4\f7@-\0bzi\11\15\de@\00\00\00\00\00\00\00\00}\ca\e1\dag\06\ad=C\00\c1\e2\ff\ff\bd?\e3\15cn\046\1b@\ed\02&E\b9\13[@I\d6R\d0\16-\80@\b7\0c~\bb\b8\85\80@=c\af\a8\ea\a3M@\01g\06\1b6\fb\8e@\fb\b6\06WD\e9\b4@\15\bb\a5\b8\b0\a4\be@Q^o\030\80\97@\00\00\00\00\00\00\00\00\dd\9e\ad\a7!\fc)>{\d1![\f5\ff\bd?\8a\ad^\e8\bcv\0f@)\d1\a6\9dH\8fA@7\18,M\85\c3V@\e5>\a8\8e\8fGH@\9c\064\a1IeA@_\a7\f1\073\0cu@#\d57P|[\90@\e91.\a3}\d6\8b@S\ed.|m\f2Y@\00\00\00\00\00\00\00\00\f4DU\f6\d4\e9|>\83\0dv\beB\ff\bd?\c0\ae\8f\f9\b7\f2\02@d\a9q\7f7|(@\e2\8e\7f\17\a8\b11@\fe\c1t\a5IK\14@\dc\ec\d5\8a\bdo5@\d5,\f9\14\93R_@\d9\db\a2\d5\d8\08m@\a9\84\18\dazk]@\92QN\f4\b1\ba @\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f3\fd\ff\ff\ff?\ba\bf\f7yg\a2\91E0\c0v\b5\e4S\d0\bc\87\c0\15t\f8@\e7$\c7\c0j\9c\d0e\d0\a6\e7\c0\e5\cd[\de\a6,d@\19\84\d8\d0b\91\be@\98^\b7\b0\9aW\00A\19\9c\86rS\f6%A\\\ad\19w\d2W$A\18\aa\a5\0ei\f9\11\c1\98\a0\a1\1aC\fa\b6\bd\ef\7fY\cb\ff?\ba\bfK\ad\03\ca\e6\1c \c0\b0\b9\a7lm\f5f\c0Os1i\c6t\95\c0\9d\a7\fd\88\e3h\a4\c0\b2\11Z\ff\b2QT@9\f8{\e71\1f\9f@)\ced\0d\1f\0f\d1@\97\d1\ba\aamW\e8@K6|\cf\04K\db@\04\a0\ff\fc.o\b2\c0O\c8\8f\d3\a9\cf5\beT\ed\aeQ\eb?\ba\bf\ff\d9\023\c2p\12\c0\da\16]\c2q\ecL\c0_\d5\18G\d3\87l\c0\f6\1b\\_\b9fk\c0\e4g\d3\cc#\d5G@>\ee1\c0\eb\0e\85@\9a|\8eDNh\aa@\a6T\1d\a6\ba\ab\b5@K\df\d4\0dz\bc\9d@\1f1\n)p\e6`\c0\d2&\c6D&\f1\87\be\10\b0H\91\8e>\ba\bf\daN\bbi\84\04\06\c0\7f\90h\c1\e2\a93\c0\aaJ\10\de\a3)E\c0Rn\cf96_5\c0\ffd\aex\8a\88=@\ba\1c\82\dbh\9fo@\f7\a0I\ce\05\ac\87@)\c0\d4H%\1b\87@\d4\d8><^~c@k\e8\1b\e7\86\d6\13\c01\c3H\be<\9eN=*\af\fa\ba\1cX\c57\03`\c5\b3\00\00\00\00\00\00\00\00\00\00\00\00j(\a3<KdT9\d4\02\b65\eb\f8\d51\cf\81\92-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0=\ea\d4SA\a3\06\ceC\ed+rE\d6S\f7E\00\00\00\00\00\00\00\00,j\e4B\e5.dE5\\\10Gf\a1\beG\8b\a8\f0F\00\00\00\00\00\00\00\00\00\00\00\00?3h-\ff\ff\ef=#\b0\d9@\ca\9d\d8B\b7h\01D\c6-\04D\00\00\00\00\00\00\00\00U\1fmB\b1\d9wD#J\a7E\86%\f5E\80\01\bcD\00\00\00\00\00\00\00\00\00\00\00\00\0d\e1O1\ab\ff\ef=\e7\b5{@Ez\0cB*\1c\b6B|<BB\00\00\00\00\00\00\00\00M*\0bB\98a\a8C\e3\db\82D\ed\b3^Dl\93\cfB\00\00\00\00\00\00\00\00\00\00\00\00\a8N\e73\16\fa\ef=\c0\95\17@\bc\e1CAA\8d\8dAMZ\a2@\00\00\00\00\00\00\00\00\ec}\abA\99\94\faB\c7FhC\d7[\ebB\90\d5\05A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d2\bd\8d,\82\c1\83\e6=\c4:\'9\c6\836=\c7\00\00\00\00\00\00\00\007e!C\17\8b\f4E\d6\bc\02H\9c\b2/I\94\be\"IH\cb\8f\c8\00\00\00\00\00\00\00\00\19\d2\b7\ad\fe\ff\d1\bd6\e7\00\c1k\ab7\c33\a6\ab\c4\1cG#\c5\00\00\00\00\00\00\00\00\98\8d\a2B\8f\f9\f8D\f8x\88Fm\bbBG&X\daFxy\93\c5\00\00\00\00\00\00\00\00O}\ae\b1[\ff\d1\bd\12\86\93\c0\8ecg\c2\9a>d\c3\cb5[\c3\00\00\00\00\00\00\00\00\1e\a9>B^w(DrBSE\d5]\adE\d0\e3\edD\813\07\c3\00\00\00\00\00\00\00\002\89?\b4u\f4\d1\bd#$0\c0\16O\9d\c1\1fM)\c2\b2\f9\aa\c1\00\00\00\00\00\00\00\00TD\ecAG\fb|C.`=D*\d98D\f2\f2\1bC7\b4\9e\c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8?\00\00\00\00\00\00\00\00\06\d0\cfC\eb\fdL>\00\00\00\00\00\00\00\00\00\00\00@\03\b8\e2?\00\00\80?\00\00\c0?\00\00\00\00\dc\cf\d15\00\00\00\00\00\c0\15?\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\83\f9\a2\00DNn\00\fc)\15\00\d1W\'\00\dd4\f5\00b\db\c0\00<\99\95\00A\90C\00cQ\fe\00\bb\de\ab\00\b7a\c5\00:n$\00\d2MB\00I\06\e0\00\t\ea.\00\1c\92\d1\00\eb\1d\fe\00)\b1\1c\00\e8>\a7\00\f55\82\00D\bb.\00\9c\e9\84\00\b4&p\00A~_\00\d6\919\00S\839\00\9c\f49\00\8b_\84\00(\f9\bd\00\f8\1f;\00\de\ff\97\00\0f\98\05\00\11/\ef\00\nZ\8b\00m\1fm\00\cf~6\00\t\cb\'\00FO\b7\00\9ef?\00-\ea_\00\ba\'u\00\e5\eb\c7\00={\f1\00\f79\07\00\92R\8a\00\fbk\ea\00\1f\b1_\00\08]\8d\000\03V\00{\fcF\00\f0\abk\00 \bc\cf\006\f4\9a\00\e3\a9\1d\00^a\91\00\08\1b\e6\00\85\99e\00\a0\14_\00\8d@h\00\80\d8\ff\00\'sM\00\06\061\00\caV\15\00\c9\a8s\00{\e2`\00k\8c\c0\00\00\00\00\00\00\00\00\00\00\00\00@\fb!\f9?\00\00\00\00-Dt>\00\00\00\80\98F\f8<\00\00\00`Q\ccx;\00\00\00\80\83\1b\f09\00\00\00@ %z8\00\00\00\80\"\82\e36\00\00\00\00\1d\f3i5cUUUUU\d5?z\fe\10\11\11\11\c1?\feA\b3\1b\ba\a1\ab?7\d6\06\84\f4d\96?\93\84n\e9\e3&\82?(\03V\c9\"mm?\15\83\e0\fe\c8\dbW?\01e\f2\f2\d8DC?h\10\8d\1a\f7&0?\a6\927\a0\88~\14?\e9\a7\f02\0f\b8\12?sS`\db\cbu\f3\be\d4z\bftp*\fb>\00\00\00\00\00\00\f0?\18-DT\fb!\e9?\07\\\143&\a6\81<\9f\c9\184MU\d5?r\9f\998\fd\12\c1?\feZ\86\1d\c9T\ab?\ce3\8c\90\f3\1d\99?N\f4\ec\fc\ad]h?\cd\1b\97\bf\b9b\83?O\bba\05g\ac\dd?\18-DT\fb!\e9?\9b\f6\81\d2\0bs\ef?\18-DT\fb!\f9?\e2e/\"\7f+z<\07\\\143&\a6\81<\bd\cb\f0z\88\07p<\07\\\143&\a6\91<\0dUUUUU\d5?\c4\eb\98\99\99\99\c9\bf\ff\83\00\92$I\c2?q\16#\fe\c6q\bc\bfn L\c5\cdE\b7?m\9at\af\f2\b0\b3\bfQ=\d0\a0f\0d\b1?\9a\fd\deR-\de\ad\bf\eb\0dv$K{\a9?/lj,D\b4\a2\bf\11\da\"\e3:\ad\90?\00\00\00\00\00\00\00\008c\ed>\da\0fI?^\98{?\da\0f\c9?i7\ac1h!\"3\b4\0f\143h!\a23\a9\aa\aa>\98\caL\be\0d\f5\11>G\12\da\bd%\ac|=\00\00\00\00\00\00\00\00\00\00\00\00]=\7ff\9e\a0\e6?\00\00\00\00\00\889=D\17u\faR\b0\e6?\00\00\00\00\00\00\d8<\fe\d9\0bu\12\c0\e6?\00\00\00\00\00x(\bd\bfv\d4\dd\dc\cf\e6?\00\00\00\00\00\c0\1e=)\1ae<\b2\df\e6?\00\00\00\00\00\00\d8\bc\e3:Y\98\92\ef\e6?\00\00\00\00\00\00\bc\bc\86\93Q\f9}\ff\e6?\00\00\00\00\00\d8/\bd\a3-\f4ft\0f\e7?\00\00\00\00\00\88,\bd\c3_\ec\e8u\1f\e7?\00\00\00\00\00\c0\13=\05\cf\ea\86\82/\e7?\00\00\00\00\0008\bdR\81\a5H\9a?\e7?\00\00\00\00\00\c0\00\bd\fc\cc\d75\bdO\e7?\00\00\00\00\00\88/=\f1gBV\eb_\e7?\00\00\00\00\00\e0\03=Hm\ab\b1$p\e7?\00\00\00\00\00\d0\'\bd8]\deOi\80\e7?\00\00\00\00\00\00\dd\bc\00\1d\ac8\b9\90\e7?\00\00\00\00\00\00\e3<x\01\ebs\14\a1\e7?\00\00\00\00\00\00\ed\bc`\d0v\t{\b1\e7?\00\00\00\00\00@ =3\c10\01\ed\c1\e7?\00\00\00\00\00\00\a0<6\86\ffbj\d2\e7?\00\00\00\00\00\90&\bd;N\cf6\f3\e2\e7?\00\00\00\00\00\e0\02\bd\e8\c3\91\84\87\f3\e7?\00\00\00\00\00X$\bdN\1b>T\'\04\e8?\00\00\00\00\00\003=\1a\07\d1\ad\d2\14\e8?\00\00\00\00\00\00\0f=~\cdL\99\89%\e8?\00\00\00\00\00\c0!\bd\d0B\b9\1eL6\e8?\00\00\00\00\00\d0)=\b5\ca#F\1aG\e8?\00\00\00\00\00\10G=\bc[\9f\17\f4W\e8?\00\00\00\00\00`\"=\af\91D\9b\d9h\e8?\00\00\00\00\00\c42\bd\95\a31\d9\cay\e8?\00\00\00\00\00\00#\bd\b8e\8a\d9\c7\8a\e8?\00\00\00\00\00\80*\bd\00Xx\a4\d0\9b\e8?\00\00\00\00\00\00\ed\bc#\a2*B\e5\ac\e8?\00\00\00\00\00(3=\fa\19\d6\ba\05\be\e8?\00\00\00\00\00\b4B=\83C\b5\162\cf\e8?\00\00\00\00\00\d0.\bdLf\08^j\e0\e8?\00\00\00\00\00P \bd\07x\15\99\ae\f1\e8?\00\00\00\00\00((=\0e,(\d0\fe\02\e9?\00\00\00\00\00\b0\1c\bd\96\ff\91\0b[\14\e9?\00\00\00\00\00\e0\05\bd\f9/\aaS\c3%\e9?\00\00\00\00\00@\f5<J\c6\cd\b077\e9?\00\00\00\00\00 \17=\ae\98_+\b8H\e9?\00\00\00\00\00\00\t\bd\cbR\c8\cbDZ\e9?\00\00\00\00\00h%=!ov\9a\ddk\e9?\00\00\00\00\00\d06\bd*N\de\9f\82}\e9?\00\00\00\00\00\00\01\bd\a3#z\e43\8f\e9?\00\00\00\00\00\00-=\04\06\cap\f1\a0\e9?\00\00\00\00\00\a48\bd\89\ffSM\bb\b2\e9?\00\00\00\00\00\\5=[\f1\a3\82\91\c4\e9?\00\00\00\00\00\b8&=\c5\b8K\19t\d6\e9?\00\00\00\00\00\00\ec\bc\8e#\e3\19c\e8\e9?\00\00\00\00\00\d0\17=\02\f3\07\8d^\fa\e9?\00\00\00\00\00@\16=M\e5]{f\0c\ea?\00\00\00\00\00\00\f5\bc\f6\b8\8e\edz\1e\ea?\00\00\00\00\00\e0\t=\'.J\ec\9b0\ea?\00\00\00\00\00\d8*=]\nF\80\c9B\ea?\00\00\00\00\00\f0\1a\bd\9b%>\b2\03U\ea?\00\00\00\00\00`\0b=\13b\f4\8aJg\ea?\00\00\00\00\00\888=\a7\b30\13\9ey\ea?\00\00\00\00\00 \11=\8d.\c1S\fe\8b\ea?\00\00\00\00\00\c0\06=\d2\fcyUk\9e\ea?\00\00\00\00\00\b8)\bd\b8o5!\e5\b0\ea?\00\00\00\00\00p+=\81\f3\d3\bfk\c3\ea?\00\00\00\00\00\00\d9<\80\'<:\ff\d5\ea?\00\00\00\00\00\00\e4<\a3\d2Z\99\9f\e8\ea?\00\00\00\00\00\90,\bdg\f3\"\e6L\fb\ea?\00\00\00\00\00P\16=\90\b7\8d)\07\0e\eb?\00\00\00\00\00\d4/=\a9\89\9al\ce \eb?\00\00\00\00\00p\12=K\1aO\b8\a23\eb?\00\00\00\00\00GM=\e7G\b7\15\84F\eb?\00\00\00\00\0088\bd:Y\e5\8drY\eb?\00\00\00\00\00\00\98<j\c5\f1)nl\eb?\00\00\00\00\00\d0\n=P^\fb\f2v\7f\eb?\00\00\00\00\00\80\de<\b2I\'\f2\8c\92\eb?\00\00\00\00\00\c0\04\bd\03\06\a10\b0\a5\eb?\00\00\00\00\00p\0d\bdfo\9a\b7\e0\b8\eb?\00\00\00\00\00\90\0d=\ff\c1K\90\1e\cc\eb?\00\00\00\00\00\a0\02=o\a1\f3\c3i\df\eb?\00\00\00\00\00x\1f\bd\b8\1d\d7[\c2\f2\eb?\00\00\00\00\00\a0\10\bd\e9\b2Aa(\06\ec?\00\00\00\00\00@\11\bd\e0R\85\dd\9b\19\ec?\00\00\00\00\00\e0\0b=\eed\fa\d9\1c-\ec?\00\00\00\00\00@\t\bd/\d0\ff_\ab@\ec?\00\00\00\00\00\d0\0e\bd\15\fd\faxGT\ec?\00\00\00\00\00f9=\cb\d0W.\f1g\ec?\00\00\00\00\00\10\1a\bd\b6\c1\88\89\a8{\ec?\00\00\00\00\80EX\bd3\e7\06\94m\8f\ec?\00\00\00\00\00H\1a\bd\df\c4QW@\a3\ec?\00\00\00\00\00\00\cb<\94\90\ef\dc \b7\ec?\00\00\00\00\00@\01=\89\16m.\0f\cb\ec?\00\00\00\00\00 \f0<\12\c4]U\0b\df\ec?\00\00\00\00\00`\f3<;\ab[[\15\f3\ec?\00\00\00\00\00\90\06\bd\bc\89\07J-\07\ed?\00\00\00\00\00\a0\t=\fa\c8\08+S\1b\ed?\00\00\00\00\00\e0\15\bd\85\8a\0d\08\87/\ed?\00\00\00\00\00(\1d=\03\a2\ca\ea\c8C\ed?\00\00\00\00\00\a0\01=\91\a4\fb\dc\18X\ed?\00\00\00\00\00\00\df<\a1\e6b\e8vl\ed?\00\00\00\00\00\a0\03\bdN\83\c9\16\e3\80\ed?\00\00\00\00\00\d8\0c\bd\90`\ffq]\95\ed?\00\00\00\00\00\c0\f4<\ae2\db\03\e6\a9\ed?\00\00\00\00\00\90\ff<%\83:\d6|\be\ed?\00\00\00\00\00\80\e9<E\b4\01\f3!\d3\ed?\00\00\00\00\00 \f5\bc\bf\05\1cd\d5\e7\ed?\00\00\00\00\00p\1d\bd\ec\9a{3\97\fc\ed?\00\00\00\00\00\14\16\bd^}\19kg\11\ee?\00\00\00\00\00H\0b=\e7\a3\f5\14F&\ee?\00\00\00\00\00\ce@=\\\ee\16;3;\ee?\00\00\00\00\00h\0c=\b4?\8b\e7.P\ee?\00\00\00\00\000\t\bdhmg$9e\ee?\00\00\00\00\00\00\e5\bcDL\c7\fbQz\ee?\00\00\00\00\00\f8\07\bd&\b7\cdwy\8f\ee?\00\00\00\00\00p\f3\bc\e8\90\a4\a2\af\a4\ee?\00\00\00\00\00\d0\e5<\e4\ca|\86\f4\b9\ee?\00\00\00\00\00\1a\16=\0dh\8e-H\cf\ee?\00\00\00\00\00P\f5<\14\85\18\a2\aa\e4\ee?\00\00\00\00\00@\c6<\13Za\ee\1b\fa\ee?\00\00\00\00\00\80\ee\bc\06A\b6\1c\9c\0f\ef?\00\00\00\00\00\88\fa\bcc\b9k7+%\ef?\00\00\00\00\00\90,\bdur\ddH\c9:\ef?\00\00\00\00\00\00\aa<$En[vP\ef?\00\00\00\00\00\f0\f4\bc\fdD\88y2f\ef?\00\00\00\00\00\80\ca<8\be\9c\ad\fd{\ef?\00\00\00\00\00\bc\fa<\82<$\02\d8\91\ef?\00\00\00\00\00`\d4\bc\8e\90\9e\81\c1\a7\ef?\00\00\00\00\00\0c\0b\bd\11\d5\926\ba\bd\ef?\00\00\00\00\00\e0\c0\bc\94q\8f+\c2\d3\ef?\00\00\00\00\80\de\10\bd\ee#*k\d9\e9\ef?\00\00\00\00\00C\ee<\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\be\bcZ\fa\1a\0b\f0?\00\00\00\00\00@\b3\bc\033\fb\a9=\16\f0?\00\00\00\00\00\17\12\bd\82\02;\14h!\f0?\00\00\00\00\00@\ba<l\80w>\9a,\f0?\00\00\00\00\00\98\ef<\ca\bb\11.\d47\f0?\00\00\00\00\00@\c7\bc\89\7fn\e8\15C\f0?\00\00\00\00\000\d8<gT\f6r_N\f0?\00\00\00\00\00?\1a\bdZ\85\15\d3\b0Y\f0?\00\00\00\00\00\84\02\bd\95\1f<\0e\ne\f0?\00\00\00\00\00`\f1<\1a\f7\dd)kp\f0?\00\00\00\00\00$\15=-\a8r+\d4{\f0?\00\00\00\00\00\a0\e9\bc\d0\9bu\18E\87\f0?\00\00\00\00\00@\e6<\c8\07f\f6\bd\92\f0?\00\00\00\00\00x\00\bd\83\f3\c6\ca>\9e\f0?\00\00\00\00\00\00\98\bc09\1f\9b\c7\a9\f0?\00\00\00\00\00\a0\ff<\fc\88\f9lX\b5\f0?\00\00\00\00\00\c8\fa\bc\8al\e4E\f1\c0\f0?\00\00\00\00\00\c0\d9<\16Hr+\92\cc\f0?\00\00\00\00\00 \05=\d8]9#;\d8\f0?\00\00\00\00\00\d0\fa\bc\f3\d1\d32\ec\e3\f0?\00\00\00\00\00\ac\1b=\a6\a9\df_\a5\ef\f0?\00\00\00\00\00\e8\04\bd\f0\d2\fe\aff\fb\f0?\00\00\00\00\000\0d\bdK#\d7(0\07\f1?\00\00\00\00\00P\f1<[[\12\d0\01\13\f1?\00\00\00\00\00\00\ec<\f9*^\ab\db\1e\f1?\00\00\00\00\00\bc\16=\d51l\c0\bd*\f1?\00\00\00\00\00@\e8<}\04\f2\14\a86\f1?\00\00\00\00\00\d0\0e\bd\e9-\a9\ae\9aB\f1?\00\00\00\00\00\e0\e8<81O\93\95N\f1?\00\00\00\00\00@\eb<q\8e\a5\c8\98Z\f1?\00\00\00\00\000\05=\df\c3qT\a4f\f1?\00\00\00\00\008\03=\11R}<\b8r\f1?\00\00\00\00\00\d4(=\9f\bb\95\86\d4~\f1?\00\00\00\00\00\d0\05\bd\93\8d\8c8\f9\8a\f1?\00\00\00\00\00\88\1c\bdf]7X&\97\f1?\00\00\00\00\00\f0\11=\a7\cbo\eb[\a3\f1?\00\00\00\00\00H\10=\e3\87\13\f8\99\af\f1?\00\00\00\00\009G\bdT]\04\84\e0\bb\f1?\00\00\00\00\00\e4$=C\1c(\95/\c8\f1?\00\00\00\00\00 \n\bd\b2\b9h1\87\d4\f1?\00\00\00\00\00\80\e3<1@\b4^\e7\e0\f1?\00\00\00\00\00\c0\ea<8\d9\fc\"P\ed\f1?\00\00\00\00\00\90\01=\f7\cd8\84\c1\f9\f1?\00\00\00\00\00x\1b\bd\8f\8db\88;\06\f2?\00\00\00\00\00\94-=\1e\a8x5\be\12\f2?\00\00\00\00\00\00\d8<A\dd}\91I\1f\f2?\00\00\00\00\004+=#\13y\a2\dd+\f2?\00\00\00\00\00\f8\19=\e7aunz8\f2?\00\00\00\00\00\c8\19\bd\'\14\82\fb\1fE\f2?\00\00\00\00\000\02=\02\a6\b2O\ceQ\f2?\00\00\00\00\00H\13\bd\b0\ce\1eq\85^\f2?\00\00\00\00\00p\12=\16}\e2eEk\f2?\00\00\00\00\00\d0\11=\0f\e0\1d4\0ex\f2?\00\00\00\00\00\ee1=>c\f5\e1\df\84\f2?\00\00\00\00\00\c0\14\bd0\bb\91u\ba\91\f2?\00\00\00\00\00\d8\13\bd\t\df\1f\f5\9d\9e\f2?\00\00\00\00\00\b0\08=\9b\0e\d1f\8a\ab\f2?\00\00\00\00\00|\"\bd:\da\da\d0\7f\b8\f2?\00\00\00\00\004*=\f9\1aw9~\c5\f2?\00\00\00\00\00\80\10\bd\d9\02\e4\a6\85\d2\f2?\00\00\00\00\00\d0\0e\bdy\15d\1f\96\df\f2?\00\00\00\00\00 \f4\bc\cf.>\a9\af\ec\f2?\00\00\00\00\00\98$\bd\"\88\bdJ\d2\f9\f2?\00\00\00\00\000\16\bd%\b61\n\fe\06\f3?\00\00\00\00\0062\bd\0b\a5\ee\ed2\14\f3?\00\00\00\00\80\dfp\bd\b8\d7L\fcp!\f3?\00\00\00\00\00H\"\bd\a2\e9\a8;\b8.\f3?\00\00\00\00\00\98%\bdf\17d\b2\08<\f3?\00\00\00\00\00\d0\1e=\'\fa\e3fbI\f3?\00\00\00\00\00\00\dc\bc\0f\9f\92_\c5V\f3?\00\00\00\00\00\d80\bd\b9\88\de\a21d\f3?\00\00\00\00\00\c8\"=9\aa:7\a7q\f3?\00\00\00\00\00` =\fet\1e#&\7f\f3?\00\00\00\00\00`\16\bd8\d8\05m\ae\8c\f3?\00\00\00\00\00\e0\n\bd\c3>q\1b@\9a\f3?\00\00\00\00\00rD\bd \a0\e54\db\a7\f3?\00\00\00\00\00 \08=\95n\ec\bf\7f\b5\f3?\00\00\00\00\00\80>=\f2\a8\13\c3-\c3\f3?\00\00\00\00\00\80\ef<\"\e1\edD\e5\d0\f3?\00\00\00\00\00\a0\17\bd\bb4\12L\a6\de\f3?\00\00\00\00\000&=\ccN\1c\dfp\ec\f3?\00\00\00\00\00\a6H\bd\8c~\ac\04E\fa\f3?\00\00\00\00\00\dc<\bd\bb\a0g\c3\"\08\f4?\00\00\00\00\00\b8%=\95.\f7!\n\16\f4?\00\00\00\00\00\c0\1e=FF\t\'\fb#\f4?\00\00\00\00\00`\13\bd \a9P\d9\f51\f4?\00\00\00\00\00\98#=\eb\b9\84?\fa?\f4?\00\00\00\00\00\00\fa<\19\89a`\08N\f4?\00\00\00\00\00\c0\f6\bc\01\d2\a7B \\\f4?\00\00\00\00\00\c0\0b\bd\16\00\1d\edAj\f4?\00\00\00\00\00\80\12\bd&3\8bfmx\f4?\00\00\00\00\00\e00=\00<\c1\b5\a2\86\f4?\00\00\00\00\00@-\bd\04\af\92\e1\e1\94\f4?\00\00\00\00\00 \0c=r\d3\d7\f0*\a3\f4?\00\00\00\00\00P\1e\bd\01\b8m\ea}\b1\f4?\00\00\00\00\00\80\07=\e1)6\d5\da\bf\f4?\00\00\00\00\00\80\13\bd2\c1\17\b8A\ce\f4?\00\00\00\00\00\80\00=\db\dd\fd\99\b2\dc\f4?\00\00\00\00\00p,=\96\ab\d8\81-\eb\f4?\00\00\00\00\00\e0\1c\bd\02-\9dv\b2\f9\f4?\00\00\00\00\00 \19=\c11E\7fA\08\f5?\00\00\00\00\00\c0\08\bd*f\cf\a2\da\16\f5?\00\00\00\00\00\00\fa\bc\eaQ?\e8}%\f5?\00\00\00\00\00\08J=\daN\9dV+4\f5?\00\00\00\00\00\d8&\bd\1a\ac\f6\f4\e2B\f5?\00\00\00\00\00D2\bd\db\94]\ca\a4Q\f5?\00\00\00\00\00<H=k\11\e9\ddp`\f5?\00\00\00\00\00\b0$=\de)\b56Go\f5?\00\00\00\00\00ZA=\0e\c4\e2\db\'~\f5?\00\00\00\00\00\e0)\bdo\c7\97\d4\12\8d\f5?\00\00\00\00\00\08#\bdL\0b\ff\'\08\9c\f5?\00\00\00\00\00\ecM=\'TH\dd\07\ab\f5?\00\00\00\00\00\00\c4\bc\f4z\a8\fb\11\ba\f5?\00\00\00\00\00\080=\0bFY\8a&\c9\f5?\00\00\00\00\00\c8&\bd?\8e\99\90E\d8\f5?\00\00\00\00\00\9aF=\e1 \ad\15o\e7\f5?\00\00\00\00\00@\1b\bd\ca\eb\dc \a3\f6\f5?\00\00\00\00\00p\17=\b8\dcv\b9\e1\05\f6?\00\00\00\00\00\f8&=\15\f7\cd\e6*\15\f6?\00\00\00\00\00\00\01=1U:\b0~$\f6?\00\00\00\00\00\d0\15\bd\b5)\19\1d\dd3\f6?\00\00\00\00\00\d0\12\bd\13\c3\cc4FC\f6?\00\00\00\00\00\80\ea\bc\fa\8e\bc\fe\b9R\f6?\00\00\00\00\00`(\bd\973U\828b\f6?\00\00\00\00\00\feq=\8e2\08\c7\c1q\f6?\00\00\00\00\00 7\bd~\a9L\d4U\81\f6?\00\00\00\00\00\80\e6<q\94\9e\b1\f4\90\f6?\00\00\00\00\00x)\bd\cd;\7ff\9e\a0\e6?\87\01\ebs\14\a1\e7?\db\a0*B\e5\ac\e8?\90\f0\a3\82\91\c4\e9?\ad\d3Z\99\9f\e8\ea?\9cR\85\dd\9b\19\ec?\87\a4\fb\dc\18X\ed?\da\90\a4\a2\af\a4\ee?\00\00\00\00\00\00\f0?\0f\89\f9lX\b5\f0?{Q}<\b8r\f1?8bunz8\f2?\15\b71\n\fe\06\f3?\"4\12L\a6\de\f3?\'*6\d5\da\bf\f4?)TH\dd\07\ab\f5?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\000C\00\00\00\00\00\000\c3\00\00\00K\00\00\00\cb")
 (data $.data (i32.const 8976) "\07\\\143&\a6\91<h!\a23\00\00\00\00Y\f3\f8\c2\1fn\a5\01\07\\\143&\a6\a1<`B\a2\0d.\bd\bb\b3\00\00\00\00\00\00p\01\00\00\80\0d\00\00\00\00\00\00\00\00\00\00p\01\00\00\80\0d\00\00\00\00\e6TUUUU\b5?\d3\c6\ba\99\99\99\89?\9eQ\f1\07#Ib?\f0\ff]\c84\80<?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\10k*\e0\7f?\00\00\fc\b0\a8\c0\8f?\00\c0\d5\07\1b\b9\97?\00@x\0e\9b\82\9f?\00\c0\fe\b9\87\9e\a3?\00\c02\f6Xt\a7?\00\80\19q\ddB\ab?\00\80\11\c00\n\af?\00\80\a3\ee6e\b1?\00\c0\1b\96\d7A\b3?\00\00\06?\07\1b\b5?\00\80\e5\8a\d2\f0\b6?\00\801\d6E\c3\b8?\00\c0J:m\92\ba?\00\c0[\8fT^\bc?\00\00+n\07\'\be?\00\00\dc1\91\ec\bf?\00\80\d0|~\d7\c0?\00\80/\d5*\b7\c1?\00\00 \f8R\95\c2?\00\80\1e \fcq\c3?\00\80\cbl+M\c4?\00\c0\a1\e3\e5&\c5?\00\80\a7p0\ff\c5?\00\c0\19\e7\0f\d6\c6?\00\c0\10\02\89\ab\c7?\00\c0 e\a0\7f\c8?\00@\f4\9cZR\c9?\00\c0\e2\1f\bc#\ca?\00\c0\80N\c9\f3\ca?\00\80-t\86\c2\cb?\00\80\9a\c7\f7\8f\cc?\00\c0Ok!\\\cd?\00\00+n\07\'\ce?\00@\dc\cb\ad\f0\ce?\00@^m\18\b9\cf?\00\c0\b4\94%@\d0?\00\80s\e2$\a3\d0?\00@\ae\f9\8b\05\d1?\00\c0\ab\ab\\g\d1?\00\80i\c1\98\c8\d1?\00\80\cf\fbA)\d2?\00\80\de\13Z\89\d2?\00\00\e1\ba\e2\e8\d2?\00\80\98\9a\ddG\d3?\00@iUL\a6\d3?\00\c0\86\860\04\d4?\00@\1c\c2\8ba\d4?\00\80w\95_\be\d4?\00\00.\87\ad\1a\d5?\00@E\17wv\d5?\00\00X\bf\bd\d1\d5?\00\c0\b9\f2\82,\d6?\00\00\9b\1e\c8\86\d6?\00\c0+\aa\8e\e0\d6?\00\c0\bb\f6\d79\d7?\00@\dd_\a5\92\d7?\00\c0\82;\f8\ea\d7?\00\80\1e\da\d1B\d8?\00@\c1\863\9a\d8?\00\806\87\1e\f1\d8?\00\00!\1c\94G\d9?\00\00\18\81\95\9d\d9?\00\80\bf\ec#\f3\d9?\00\c0\e5\90@H\da?\00\00\9a\9a\ec\9c\da?\00\80G2)\f1\da?\00\80\cc{\f7D\db?\00\00\93\96X\98\db?\00\00\a7\9dM\eb\db?\00\c0\cd\a7\d7=\dc?\00\80\9a\c7\f7\8f\dc?\00\00\86\0b\af\e1\dc?\00\00\01~\fe2\dd?\00@\8a%\e7\83\dd?\00\c0\c1\04j\d4\dd?\00\80|\1a\88$\de?\00\80\d6aBt\de?\00\80F\d2\99\c3\de?\00\00\af_\8f\12\df?\00@p\fa#a\df?\00\00y\8fX\af\df?\00\00X\08.\fd\df?\00\c0\a5\a5R%\e0?\00@\a9\9d\dfK\e0?\00\c0\1c\\>r\e0?\00@WOo\98\e0?\00@%\e4r\be\e0?\00\c0\d1\85I\e4\e0?\00@-\9e\f3\t\e1?\00\00\94\95q/\e1?\00\c0\f4\d2\c3T\e1?\00\80\d8\bb\eay\e1?\00\c0g\b4\e6\9e\e1?\00@q\1f\b8\c3\e1?\00@p^_\e8\e1?\00\c0\92\d1\dc\0c\e2?\00\c0\be\d701\e2?\00\00\99\ce[U\e2?\00\c0\89\12^y\e2?\00\c0\c2\fe7\9d\e2?\00\80D\ed\e9\c0\e2?\00\00\e46t\e4\e2?\00\00O3\d7\07\e3?\00\00\129\13+\e3?\00\00\9d\9d(N\e3?\00@G\b5\17q\e3?\00@V\d3\e0\93\e3?\00\00\00J\84\b6\e3?\00@qj\02\d9\e3?\00\80\d1\84[\fb\e3?\00\80F\e8\8f\1d\e4?\00\c0\f9\e2\9f?\e4?\00@\1c\c2\8ba\e4?\00\80\ea\d1S\83\e4?\00@\b0]\f8\a4\e4?\00\00\cd\afy\c6\e4?\00@\b7\11\d8\e7\e4?\00\80\01\cc\13\t\e5?\00\c0[&-*\e5?\00\80\99g$K\e5?\00\00\b4\d5\f9k\e5?\00\80\cd\b5\ad\8c\e5?\00\805L@\ad\e5?\00\00l\dc\b1\cd\e5?\00\00$\a9\02\ee\e5?\00\80G\f42\0e\e6?\00@\fa\feB.\e6?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00h\fc\96\c8\03w\f8\bc\99\a6\d3\f6|\1e\df<\19g\15\b0\ad\ca\0d\bdl\d8\07\0ef\ff\t\bd\9f\fe&\f5\b7\02\f5\bc\ed\a1\f24F\fc,=Lp\d6\e5z\82\1c\bd\91\8e6\83\9eY-\bd\07\a3\8fv^|\14\bd\10v\83\99\92\d01=jh\8e\'i?8=\12Ff\1bd\b44\bdf*\b4\ac\f5 ;=\9c*\d2\0bec5=\05\be_XW\0c\1d=;\00\f0*,4*\bd\06f\ae\d1UE5\bd\81\f4\e2.\cd\b2<=\1a\97\fb\f9\d6_H\bd\fc\1dG\f4g\b95\bd\bc\8a-\9bw\e8>=:x5a\c1\0c\17\bd8R\fc7\ba\907\bd\07\n\e2s\c8\d3C=M\\vT\8d\1cB=j-k\e3\1b\tI=\fb\02\12@ !2=9u0Av\b4F=\n\9f\dc\91\cd95\bd\f1\8f\cd?cN\ba\bc\1c\12\9d\f3S\ac9=\f3\1e\d8%\ac!J=\1ah\ca\bb\91\ba!\bd<\00\f0*,4:\bd7T\de\18R6I=\85<\99\ab*W\0d\bd\b6\d0{\e2\da@P=\18\a0\f7s_\e3P=\99VA?1\aaE=\8f*8c\fc\f1Y\bd@u\8e\c6\fb\faY=b\t\eb\f5vi:\bd\f0\13L\d2z\8d:=\85\1a\c9,\9c0]=\91\80\c5\d4MY%\bd\d05\d7\bc\1c\a77=\0b\82\ed\f3B\1cX\bd\b37{\0b}\c2^=$\d8\9a\cd\92|=\bd\c1|\n\db\d8K?\bd\0d\ca\b6\9aTlZ=\e4\1e\1c\1b\a1\94C=\98\8a|\bd\bdT>=\15\10\beB\c4\aeT=)\e7l\ecs\1c^\bd\fbSL\e2\9c\06P=\ea\1fiW\f0\89>=K\18ZL\9b<P\bd\c2\cb(v\92.F=\81\08\c48\ad\d5\"=\96*\96\e8\818]\bd}\14\ddL\ba\faV=\b8\13\d1V4u_\bdov\8d\b6\f2KX=\c5#e\0dP\d73\bd^\ea\9f\90\1a\93@=\a8\d7\ee1\bbS>\bd\d3U\db}\19\c5N=\89O\b1\8fY\fbP=\ac7\1d\86\f7{[=\85\b4>L\8c\b2R\bd\f3\1e\d8%\ac!Z=\a6j\a8\05\t)H\bd\1447!\9e*T\bd\13]\a4\ae\af\c1P\bdt\92\9a\98\fb\822=k\bapB\e3\d9S\bd\f2\bc\8d\f6\8d\1f>=\e6\a7\dc\b9.\80I=L\c4\0er\cd\b2;=I\c3\93\ba\9eSW\bd+6\98\a0L\c2I\bdg\93_\d0T\cfF\bd\7f]i\9c\c6\fe`=u\ff>\03\9a-i\bd\918\96WN@o=\01\d6J\c0\8d\beU\bd\ccDhgI}e\bd-\bd\cb\d5\ed\17Y=\176\d9\c7\fb-Y=8\e6\dc\fe\acC`\bd\96\a33\8f\a9\e9e=\a0o\0e\c6\bf\a0i=\f0\ae{\b9\98\ddR=\02\998X\1b\da>\bdz\be4\8b\bd\07\1a=\8a\f0\c2\afl\92d\bd\a6\1b/9\a4\af\17\bd^J\8a\f7\87iP\bd\8d\84\81\0f)\ca]\bd\b4hRFo\ea^\bdtc8\f5r\17]=\914\0c\a1\02B3=\f5\a1\90\b5\1f\be`={\b6V\052qm=z\'m\14\e9,n\bd\13!\tt\17\d7N=\c9\9f\bd;V\e6e\bd\d3\f3\t\89\83\ea>\bd\0b=&\04\a4\faf=\a3\afb\b1\a4\bd`\bd\17z\8667\a3Z\bd\c26\f7\e4\f4\ce\\=\b37{\0b}\c2n=`v\d1\ab\e7\beQ=\90\85\0b\84\ddO$\bd\ce\"\13\97N\c6a\bdEV\98\b0\9c\b0k=\f5\a4\c54\b4\94g\bdW\bc\"\df\b9\abF=D\8bB\15\a9\97d=\93\d1;\c7}\cdX\bd\b4\896\b4=\dbI\bd\f0\a5\aa)\fb,o=\d7\c5\e3\f6\8cdg=\d2_\t\d6puf=\16\b4\12\f9\94\b1Q=4&\0e\1b*CH\bd")
 (data $.bss (i32.const 11160) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (import "env" "nan_mix" (func $nan_mix (param f64 f64) (result i32)))
 (import "env" "__extenddftf2" (func $__extenddftf2 (param i32 f64)))
 (import "env" "__extendsftf2" (func $__extendsftf2 (param i32 f32)))
 (import "env" "__isinfl" (func $__isinfl (param f64) (result i32)))
 (import "env" "__isnanl" (func $__isnanl (param f64) (result i32)))
 (import "env" "__signbitl" (func $__signbitl (param f64) (result i32)))
 (import "env" "__muldc3" (func $__muldc3 (param i32 f64 f64 f64 f64)))
 (import "env" "__isfinitel" (func $__isfinitel (param f64) (result i32)))
 (import "env" "ldexp" (func $ldexp (param f64 i32) (result f64)))
 (import "env" "TRUNC" (func $TRUNC (param f64) (result i32)))
 (import "env" "__mulsc3" (func $__mulsc3 (param i32 f32 f32 f32 f32)))
 (import "env" "__multf3" (func $legalimport$__multf3 (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "__divtf3" (func $legalimport$__divtf3 (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "__trunctfdf2" (func $legalimport$__trunctfdf2 (param i32 i32 i32 i32) (result f64)))
 (import "env" "__trunctfsf2" (func $legalimport$__trunctfsf2 (param i32 i32 i32 i32) (result f32)))
 (global $__stack_pointer (mut i32) (i32.const 76800))
 (global $global$1 i32 (i32.const 11160))
 (global $global$2 i32 (i32.const 1024))
 (global $global$3 i32 (i32.const 11264))
 (global $global$4 i32 (i32.const 1024))
 (global $global$5 i32 (i32.const 76800))
 (global $global$6 i32 (i32.const 0))
 (global $global$7 i32 (i32.const 1))
 (table $0 1 1 funcref)
 (export "__wasm_call_ctors" (func $__wasm_call_ctors))
 (export "isopenlibm" (func $isopenlibm))
 (export "acos" (func $acos))
 (export "sqrt" (func $sqrt))
 (export "acosf" (func $acosf))
 (export "sqrtf" (func $sqrtf))
 (export "acosh" (func $acosh))
 (export "log" (func $log))
 (export "log1p" (func $log1p))
 (export "acoshf" (func $acoshf))
 (export "logf" (func $logf))
 (export "log1pf" (func $log1pf))
 (export "asin" (func $asin))
 (export "fabs" (func $fabs))
 (export "asinf" (func $asinf))
 (export "fabsf" (func $fabsf))
 (export "atan2" (func $atan2))
 (export "atan" (func $atan))
 (export "atan2f" (func $atan2f))
 (export "atanf" (func $atanf))
 (export "atanh" (func $atanh))
 (export "atanhf" (func $atanhf))
 (export "cosh" (func $cosh))
 (export "expm1" (func $expm1))
 (export "exp" (func $exp))
 (export "__ldexp_exp" (func $__ldexp_exp))
 (export "coshf" (func $coshf))
 (export "expm1f" (func $expm1f))
 (export "expf" (func $expf))
 (export "__ldexp_expf" (func $__ldexp_expf))
 (export "fmod" (func $fmod))
 (export "fmodf" (func $fmodf))
 (export "hypot" (func $hypot))
 (export "hypotf" (func $hypotf))
 (export "j0" (func $j0))
 (export "sin" (func $sin))
 (export "cos" (func $cos))
 (export "y0" (func $y0))
 (export "j0f" (func $j0f))
 (export "sinf" (func $sinf))
 (export "cosf" (func $cosf))
 (export "y0f" (func $y0f))
 (export "j1" (func $j1))
 (export "y1" (func $y1))
 (export "j1f" (func $j1f))
 (export "y1f" (func $y1f))
 (export "jn" (func $jn))
 (export "yn" (func $yn))
 (export "jnf" (func $jnf))
 (export "ynf" (func $ynf))
 (export "lgamma" (func $lgamma))
 (export "signgam" (global $global$1))
 (export "lgamma_r" (func $lgamma_r))
 (export "__kernel_sin" (func $__kernel_sin))
 (export "floor" (func $floor))
 (export "__kernel_cos" (func $__kernel_cos))
 (export "lgammaf" (func $lgammaf))
 (export "lgammaf_r" (func $lgammaf_r))
 (export "__kernel_sindf" (func $__kernel_sindf))
 (export "floorf" (func $floorf))
 (export "__kernel_cosdf" (func $__kernel_cosdf))
 (export "log10" (func $log10))
 (export "log10f" (func $log10f))
 (export "log2" (func $log2))
 (export "log2f" (func $log2f))
 (export "pow" (func $pow))
 (export "scalbn" (func $scalbn))
 (export "powf" (func $powf))
 (export "scalbnf" (func $scalbnf))
 (export "__indirect_function_table" (table $0))
 (export "remainder" (func $remainder))
 (export "remainderf" (func $remainderf))
 (export "__ieee754_rem_pio2" (func $__ieee754_rem_pio2))
 (export "__kernel_rem_pio2" (func $__kernel_rem_pio2))
 (export "__ieee754_rem_pio2f" (func $__ieee754_rem_pio2f))
 (export "sinh" (func $sinh))
 (export "sinhf" (func $sinhf))
 (export "__ldexp_cexp" (func $__ldexp_cexp))
 (export "creal" (func $creal))
 (export "cimag" (func $cimag))
 (export "__ldexp_cexpf" (func $__ldexp_cexpf))
 (export "crealf" (func $crealf))
 (export "cimagf" (func $cimagf))
 (export "__kernel_tan" (func $__kernel_tan))
 (export "__kernel_tandf" (func $__kernel_tandf))
 (export "asinh" (func $asinh))
 (export "asinhf" (func $asinhf))
 (export "carg" (func $carg))
 (export "cargf" (func $cargf))
 (export "cbrt" (func $cbrt))
 (export "cbrtf" (func $cbrtf))
 (export "ceil" (func $ceil))
 (export "ceilf" (func $ceilf))
 (export "copysign" (func $copysign))
 (export "copysignf" (func $copysignf))
 (export "csqrt" (func $csqrt))
 (export "__isinff" (func $__isinff))
 (export "__isinf" (func $__isinf))
 (export "__isnanf" (func $__isnanf))
 (export "__isnan" (func $__isnan))
 (export "__signbitf" (func $__signbitf))
 (export "__signbit" (func $__signbit))
 (export "csqrtf" (func $csqrtf))
 (export "erf" (func $erf))
 (export "erfc" (func $erfc))
 (export "erff" (func $erff))
 (export "erfcf" (func $erfcf))
 (export "exp2" (func $exp2))
 (export "exp2f" (func $exp2f))
 (export "fdim" (func $fdim))
 (export "fdimf" (func $fdimf))
 (export "fmax" (func $fmax))
 (export "fmaxf" (func $fmaxf))
 (export "fmin" (func $fmin))
 (export "fminf" (func $fminf))
 (export "__fpclassifyd" (func $__fpclassifyd))
 (export "__fpclassifyf" (func $__fpclassifyf))
 (export "frexp" (func $frexp))
 (export "frexpf" (func $frexpf))
 (export "ilogb" (func $ilogb))
 (export "ilogbf" (func $ilogbf))
 (export "__isfinite" (func $__isfinite))
 (export "__isfinitef" (func $__isfinitef))
 (export "__isnormal" (func $__isnormal))
 (export "__isnormalf" (func $__isnormalf))
 (export "logb" (func $logb))
 (export "logbf" (func $logbf))
 (export "modf" (func $modf))
 (export "modff" (func $modff))
 (export "nextafter" (func $nextafter))
 (export "nextafterf" (func $nextafterf))
 (export "remquo" (func $remquo))
 (export "remquof" (func $remquof))
 (export "rint" (func $rint))
 (export "rintf" (func $rintf))
 (export "round" (func $round))
 (export "roundf" (func $roundf))
 (export "scalbln" (func $scalbln))
 (export "scalblnf" (func $scalblnf))
 (export "sincos" (func $sincos))
 (export "sincosf" (func $sincosf))
 (export "tan" (func $tan))
 (export "tanf" (func $tanf))
 (export "tanh" (func $tanh))
 (export "tanhf" (func $tanhf))
 (export "tgammaf" (func $tgammaf))
 (export "tgamma" (func $tgamma))
 (export "trunc" (func $trunc))
 (export "truncf" (func $truncf))
 (export "cpow" (func $cpow))
 (export "cabs" (func $cabs))
 (export "cpowf" (func $cpowf))
 (export "cabsf" (func $cabsf))
 (export "__exp__D" (func $__exp__D))
 (export "__log__D" (func $__log__D))
 (export "ccosh" (func $ccosh))
 (export "ccos" (func $ccos))
 (export "ccoshf" (func $ccoshf))
 (export "ccosf" (func $ccosf))
 (export "cexp" (func $cexp))
 (export "cexpf" (func $cexpf))
 (export "conj" (func $conj))
 (export "conjf" (func $conjf))
 (export "cproj" (func $cproj))
 (export "cprojf" (func $cprojf))
 (export "csinh" (func $csinh))
 (export "csin" (func $csin))
 (export "csinhf" (func $csinhf))
 (export "csinf" (func $csinf))
 (export "ctanh" (func $ctanh))
 (export "ctan" (func $ctan))
 (export "ctanhf" (func $ctanhf))
 (export "ctanf" (func $ctanf))
 (export "cacos" (func $cacos))
 (export "casin" (func $casin))
 (export "cacosf" (func $cacosf))
 (export "casinf" (func $casinf))
 (export "cacosh" (func $cacosh))
 (export "cacoshf" (func $cacoshf))
 (export "clog" (func $clog))
 (export "clogf" (func $clogf))
 (export "casinh" (func $casinh))
 (export "casinhf" (func $casinhf))
 (export "catan" (func $catan))
 (export "catanf" (func $catanf))
 (export "catanh" (func $catanh))
 (export "catanhf" (func $catanhf))
 (export "__dso_handle" (global $global$2))
 (export "__data_end" (global $global$3))
 (export "__global_base" (global $global$4))
 (export "__heap_base" (global $global$5))
 (export "__memory_base" (global $global$6))
 (export "__table_base" (global $global$7))
 (func $__wasm_call_ctors
 )
 (func $isopenlibm (result i32)
  (local $0 i32)
  (local.set $0
   (i32.const 1)
  )
  (return
   (local.get $0)
  )
 )
 (func $acos (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 f64)
  (local $32 i32)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 f64)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 i32)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 f64)
  (local $163 f64)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 i32)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 f64)
  (local $196 f64)
  (local $197 f64)
  (local $198 i32)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 f64)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 f64)
  (local $230 f64)
  (local $231 f64)
  (local $232 f64)
  (local $233 f64)
  (local $234 f64)
  (local $235 f64)
  (local $236 f64)
  (local $237 f64)
  (local $238 f64)
  (local $239 f64)
  (local $240 f64)
  (local $241 f64)
  (local $242 f64)
  (local $243 f64)
  (local $244 f64)
  (local $245 f64)
  (local $246 f64)
  (local $247 f64)
  (local $248 f64)
  (local $249 f64)
  (local $250 f64)
  (local $251 f64)
  (local $252 f64)
  (local $253 f64)
  (local $254 f64)
  (local $255 f64)
  (local $256 f64)
  (local $257 f64)
  (local $258 f64)
  (local $259 f64)
  (local $260 f64)
  (local $261 f64)
  (local $262 f64)
  (local $263 f64)
  (local $264 i32)
  (local $265 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 128)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=112
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=112
    (local.get $3)
   )
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=36
    (local.get $3)
   )
  )
  (i32.store offset=44
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=44
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=40
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=40
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1072693248)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f64.load offset=112
      (local.get $3)
     )
    )
    (f64.store offset=16
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.load offset=16
      (local.get $3)
     )
    )
    (i32.store offset=28
     (local.get $3)
     (local.get $17)
    )
    (local.set $18
     (i32.load offset=40
      (local.get $3)
     )
    )
    (local.set $19
     (i32.const 1072693248)
    )
    (local.set $20
     (i32.sub
      (local.get $18)
      (local.get $19)
     )
    )
    (local.set $21
     (i32.load offset=28
      (local.get $3)
     )
    )
    (local.set $22
     (i32.or
      (local.get $20)
      (local.get $21)
     )
    )
    (block $label$3
     (br_if $label$3
      (local.get $22)
     )
     (local.set $23
      (i32.load offset=44
       (local.get $3)
      )
     )
     (local.set $24
      (i32.const 0)
     )
     (local.set $25
      (local.get $23)
     )
     (local.set $26
      (local.get $24)
     )
     (local.set $27
      (i32.gt_s
       (local.get $25)
       (local.get $26)
      )
     )
     (local.set $28
      (i32.const 1)
     )
     (local.set $29
      (i32.and
       (local.get $27)
       (local.get $28)
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (local.get $29)
       )
      )
      (local.set $30
       (i32.const 0)
      )
      (local.set $31
       (f64.convert_i32_s
        (local.get $30)
       )
      )
      (f64.store offset=120
       (local.get $3)
       (local.get $31)
      )
      (br $label$1)
     )
     (local.set $32
      (i32.const 0)
     )
     (local.set $33
      (f64.load offset=8976
       (local.get $32)
      )
     )
     (local.set $34
      (f64.add
       (local.get $33)
       (local.get $33)
      )
     )
     (local.set $35
      (f64.const 3.141592653589793)
     )
     (local.set $36
      (f64.add
       (local.get $34)
       (local.get $35)
      )
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $36)
     )
     (br $label$1)
    )
    (local.set $37
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $38
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $39
     (f64.sub
      (local.get $37)
      (local.get $38)
     )
    )
    (local.set $40
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $41
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $42
     (f64.sub
      (local.get $40)
      (local.get $41)
     )
    )
    (local.set $43
     (f64.div
      (local.get $39)
      (local.get $42)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $43)
    )
    (br $label$1)
   )
   (local.set $44
    (i32.load offset=40
     (local.get $3)
    )
   )
   (local.set $45
    (i32.const 1071644672)
   )
   (local.set $46
    (local.get $44)
   )
   (local.set $47
    (local.get $45)
   )
   (local.set $48
    (i32.lt_s
     (local.get $46)
     (local.get $47)
    )
   )
   (local.set $49
    (i32.const 1)
   )
   (local.set $50
    (i32.and
     (local.get $48)
     (local.get $49)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $50)
     )
    )
    (local.set $51
     (i32.load offset=40
      (local.get $3)
     )
    )
    (local.set $52
     (i32.const 1012924416)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (local.get $52)
    )
    (local.set $55
     (i32.le_s
      (local.get $53)
      (local.get $54)
     )
    )
    (local.set $56
     (i32.const 1)
    )
    (local.set $57
     (i32.and
      (local.get $55)
      (local.get $56)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $57)
      )
     )
     (local.set $58
      (i32.const 0)
     )
     (local.set $59
      (f64.load offset=8976
       (local.get $58)
      )
     )
     (local.set $60
      (f64.const 1.5707963267948966)
     )
     (local.set $61
      (f64.add
       (local.get $60)
       (local.get $59)
      )
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $61)
     )
     (br $label$1)
    )
    (local.set $62
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $63
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $64
     (f64.mul
      (local.get $62)
      (local.get $63)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $64)
    )
    (local.set $65
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $66
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $67
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $68
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $69
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $70
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $71
     (f64.const 3.479331075960212e-05)
    )
    (local.set $72
     (f64.mul
      (local.get $70)
      (local.get $71)
     )
    )
    (local.set $73
     (f64.const 7.915349942898145e-04)
    )
    (local.set $74
     (f64.add
      (local.get $72)
      (local.get $73)
     )
    )
    (local.set $75
     (f64.mul
      (local.get $69)
      (local.get $74)
     )
    )
    (local.set $76
     (f64.const -0.04005553450067941)
    )
    (local.set $77
     (f64.add
      (local.get $75)
      (local.get $76)
     )
    )
    (local.set $78
     (f64.mul
      (local.get $68)
      (local.get $77)
     )
    )
    (local.set $79
     (f64.const 0.20121253213486293)
    )
    (local.set $80
     (f64.add
      (local.get $78)
      (local.get $79)
     )
    )
    (local.set $81
     (f64.mul
      (local.get $67)
      (local.get $80)
     )
    )
    (local.set $82
     (f64.const -0.3255658186224009)
    )
    (local.set $83
     (f64.add
      (local.get $81)
      (local.get $82)
     )
    )
    (local.set $84
     (f64.mul
      (local.get $66)
      (local.get $83)
     )
    )
    (local.set $85
     (f64.const 0.16666666666666666)
    )
    (local.set $86
     (f64.add
      (local.get $84)
      (local.get $85)
     )
    )
    (local.set $87
     (f64.mul
      (local.get $65)
      (local.get $86)
     )
    )
    (f64.store offset=96
     (local.get $3)
     (local.get $87)
    )
    (local.set $88
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $89
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $90
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $91
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $92
     (f64.const 0.07703815055590194)
    )
    (local.set $93
     (f64.mul
      (local.get $91)
      (local.get $92)
     )
    )
    (local.set $94
     (f64.const -0.6882839716054533)
    )
    (local.set $95
     (f64.add
      (local.get $93)
      (local.get $94)
     )
    )
    (local.set $96
     (f64.mul
      (local.get $90)
      (local.get $95)
     )
    )
    (local.set $97
     (f64.const 2.0209457602335057)
    )
    (local.set $98
     (f64.add
      (local.get $96)
      (local.get $97)
     )
    )
    (local.set $99
     (f64.mul
      (local.get $89)
      (local.get $98)
     )
    )
    (local.set $100
     (f64.const -2.403394911734414)
    )
    (local.set $101
     (f64.add
      (local.get $99)
      (local.get $100)
     )
    )
    (local.set $102
     (f64.mul
      (local.get $88)
      (local.get $101)
     )
    )
    (local.set $103
     (f64.const 1)
    )
    (local.set $104
     (f64.add
      (local.get $102)
      (local.get $103)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $104)
    )
    (local.set $105
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $106
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $107
     (f64.div
      (local.get $105)
      (local.get $106)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $107)
    )
    (local.set $108
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $109
     (i32.const 0)
    )
    (local.set $110
     (f64.load offset=8976
      (local.get $109)
     )
    )
    (local.set $111
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $112
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $113
     (f64.neg
      (local.get $111)
     )
    )
    (local.set $114
     (f64.mul
      (local.get $113)
      (local.get $112)
     )
    )
    (local.set $115
     (f64.add
      (local.get $114)
      (local.get $110)
     )
    )
    (local.set $116
     (f64.sub
      (local.get $108)
      (local.get $115)
     )
    )
    (local.set $117
     (f64.const 1.5707963267948966)
    )
    (local.set $118
     (f64.sub
      (local.get $117)
      (local.get $116)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $118)
    )
    (br $label$1)
   )
   (local.set $119
    (i32.load offset=44
     (local.get $3)
    )
   )
   (local.set $120
    (i32.const 0)
   )
   (local.set $121
    (local.get $119)
   )
   (local.set $122
    (local.get $120)
   )
   (local.set $123
    (i32.lt_s
     (local.get $121)
     (local.get $122)
    )
   )
   (local.set $124
    (i32.const 1)
   )
   (local.set $125
    (i32.and
     (local.get $123)
     (local.get $124)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $125)
     )
    )
    (local.set $126
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $127
     (f64.const 1)
    )
    (local.set $128
     (f64.add
      (local.get $127)
      (local.get $126)
     )
    )
    (local.set $129
     (f64.const 0.5)
    )
    (local.set $130
     (f64.mul
      (local.get $128)
      (local.get $129)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $130)
    )
    (local.set $131
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $132
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $133
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $134
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $135
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $136
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $137
     (f64.const 3.479331075960212e-05)
    )
    (local.set $138
     (f64.mul
      (local.get $136)
      (local.get $137)
     )
    )
    (local.set $139
     (f64.const 7.915349942898145e-04)
    )
    (local.set $140
     (f64.add
      (local.get $138)
      (local.get $139)
     )
    )
    (local.set $141
     (f64.mul
      (local.get $135)
      (local.get $140)
     )
    )
    (local.set $142
     (f64.const -0.04005553450067941)
    )
    (local.set $143
     (f64.add
      (local.get $141)
      (local.get $142)
     )
    )
    (local.set $144
     (f64.mul
      (local.get $134)
      (local.get $143)
     )
    )
    (local.set $145
     (f64.const 0.20121253213486293)
    )
    (local.set $146
     (f64.add
      (local.get $144)
      (local.get $145)
     )
    )
    (local.set $147
     (f64.mul
      (local.get $133)
      (local.get $146)
     )
    )
    (local.set $148
     (f64.const -0.3255658186224009)
    )
    (local.set $149
     (f64.add
      (local.get $147)
      (local.get $148)
     )
    )
    (local.set $150
     (f64.mul
      (local.get $132)
      (local.get $149)
     )
    )
    (local.set $151
     (f64.const 0.16666666666666666)
    )
    (local.set $152
     (f64.add
      (local.get $150)
      (local.get $151)
     )
    )
    (local.set $153
     (f64.mul
      (local.get $131)
      (local.get $152)
     )
    )
    (f64.store offset=96
     (local.get $3)
     (local.get $153)
    )
    (local.set $154
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $155
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $156
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $157
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $158
     (f64.const 0.07703815055590194)
    )
    (local.set $159
     (f64.mul
      (local.get $157)
      (local.get $158)
     )
    )
    (local.set $160
     (f64.const -0.6882839716054533)
    )
    (local.set $161
     (f64.add
      (local.get $159)
      (local.get $160)
     )
    )
    (local.set $162
     (f64.mul
      (local.get $156)
      (local.get $161)
     )
    )
    (local.set $163
     (f64.const 2.0209457602335057)
    )
    (local.set $164
     (f64.add
      (local.get $162)
      (local.get $163)
     )
    )
    (local.set $165
     (f64.mul
      (local.get $155)
      (local.get $164)
     )
    )
    (local.set $166
     (f64.const -2.403394911734414)
    )
    (local.set $167
     (f64.add
      (local.get $165)
      (local.get $166)
     )
    )
    (local.set $168
     (f64.mul
      (local.get $154)
      (local.get $167)
     )
    )
    (local.set $169
     (f64.const 1)
    )
    (local.set $170
     (f64.add
      (local.get $168)
      (local.get $169)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $170)
    )
    (local.set $171
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $172
     (call $sqrt
      (local.get $171)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $172)
    )
    (local.set $173
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $174
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $175
     (f64.div
      (local.get $173)
      (local.get $174)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $175)
    )
    (local.set $176
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $177
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $178
     (i32.const 0)
    )
    (local.set $179
     (f64.load offset=8976
      (local.get $178)
     )
    )
    (local.set $180
     (f64.neg
      (local.get $179)
     )
    )
    (local.set $181
     (f64.mul
      (local.get $176)
      (local.get $177)
     )
    )
    (local.set $182
     (f64.add
      (local.get $181)
      (local.get $180)
     )
    )
    (f64.store offset=72
     (local.get $3)
     (local.get $182)
    )
    (local.set $183
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $184
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $185
     (f64.add
      (local.get $183)
      (local.get $184)
     )
    )
    (local.set $186
     (f64.add
      (local.get $185)
      (local.get $185)
     )
    )
    (local.set $187
     (f64.const 3.141592653589793)
    )
    (local.set $188
     (f64.sub
      (local.get $187)
      (local.get $186)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $188)
    )
    (br $label$1)
   )
   (local.set $189
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $190
    (f64.const 1)
   )
   (local.set $191
    (f64.sub
     (local.get $190)
     (local.get $189)
    )
   )
   (local.set $192
    (f64.const 0.5)
   )
   (local.set $193
    (f64.mul
     (local.get $191)
     (local.get $192)
    )
   )
   (f64.store offset=104
    (local.get $3)
    (local.get $193)
   )
   (local.set $194
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $195
    (call $sqrt
     (local.get $194)
    )
   )
   (f64.store offset=64
    (local.get $3)
    (local.get $195)
   )
   (local.set $196
    (f64.load offset=64
     (local.get $3)
    )
   )
   (f64.store offset=48
    (local.get $3)
    (local.get $196)
   )
   (local.set $197
    (f64.load offset=48
     (local.get $3)
    )
   )
   (f64.store offset=8
    (local.get $3)
    (local.get $197)
   )
   (local.set $198
    (i32.const 0)
   )
   (i32.store offset=8
    (local.get $3)
    (local.get $198)
   )
   (local.set $199
    (f64.load offset=8
     (local.get $3)
    )
   )
   (f64.store offset=48
    (local.get $3)
    (local.get $199)
   )
   (local.set $200
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $201
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $202
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $203
    (f64.neg
     (local.get $201)
    )
   )
   (local.set $204
    (f64.mul
     (local.get $203)
     (local.get $202)
    )
   )
   (local.set $205
    (f64.add
     (local.get $204)
     (local.get $200)
    )
   )
   (local.set $206
    (f64.load offset=64
     (local.get $3)
    )
   )
   (local.set $207
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $208
    (f64.add
     (local.get $206)
     (local.get $207)
    )
   )
   (local.set $209
    (f64.div
     (local.get $205)
     (local.get $208)
    )
   )
   (f64.store offset=56
    (local.get $3)
    (local.get $209)
   )
   (local.set $210
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $211
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $212
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $213
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $214
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $215
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $216
    (f64.const 3.479331075960212e-05)
   )
   (local.set $217
    (f64.mul
     (local.get $215)
     (local.get $216)
    )
   )
   (local.set $218
    (f64.const 7.915349942898145e-04)
   )
   (local.set $219
    (f64.add
     (local.get $217)
     (local.get $218)
    )
   )
   (local.set $220
    (f64.mul
     (local.get $214)
     (local.get $219)
    )
   )
   (local.set $221
    (f64.const -0.04005553450067941)
   )
   (local.set $222
    (f64.add
     (local.get $220)
     (local.get $221)
    )
   )
   (local.set $223
    (f64.mul
     (local.get $213)
     (local.get $222)
    )
   )
   (local.set $224
    (f64.const 0.20121253213486293)
   )
   (local.set $225
    (f64.add
     (local.get $223)
     (local.get $224)
    )
   )
   (local.set $226
    (f64.mul
     (local.get $212)
     (local.get $225)
    )
   )
   (local.set $227
    (f64.const -0.3255658186224009)
   )
   (local.set $228
    (f64.add
     (local.get $226)
     (local.get $227)
    )
   )
   (local.set $229
    (f64.mul
     (local.get $211)
     (local.get $228)
    )
   )
   (local.set $230
    (f64.const 0.16666666666666666)
   )
   (local.set $231
    (f64.add
     (local.get $229)
     (local.get $230)
    )
   )
   (local.set $232
    (f64.mul
     (local.get $210)
     (local.get $231)
    )
   )
   (f64.store offset=96
    (local.get $3)
    (local.get $232)
   )
   (local.set $233
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $234
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $235
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $236
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $237
    (f64.const 0.07703815055590194)
   )
   (local.set $238
    (f64.mul
     (local.get $236)
     (local.get $237)
    )
   )
   (local.set $239
    (f64.const -0.6882839716054533)
   )
   (local.set $240
    (f64.add
     (local.get $238)
     (local.get $239)
    )
   )
   (local.set $241
    (f64.mul
     (local.get $235)
     (local.get $240)
    )
   )
   (local.set $242
    (f64.const 2.0209457602335057)
   )
   (local.set $243
    (f64.add
     (local.get $241)
     (local.get $242)
    )
   )
   (local.set $244
    (f64.mul
     (local.get $234)
     (local.get $243)
    )
   )
   (local.set $245
    (f64.const -2.403394911734414)
   )
   (local.set $246
    (f64.add
     (local.get $244)
     (local.get $245)
    )
   )
   (local.set $247
    (f64.mul
     (local.get $233)
     (local.get $246)
    )
   )
   (local.set $248
    (f64.const 1)
   )
   (local.set $249
    (f64.add
     (local.get $247)
     (local.get $248)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $249)
   )
   (local.set $250
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $251
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $252
    (f64.div
     (local.get $250)
     (local.get $251)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $252)
   )
   (local.set $253
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $254
    (f64.load offset=64
     (local.get $3)
    )
   )
   (local.set $255
    (f64.load offset=56
     (local.get $3)
    )
   )
   (local.set $256
    (f64.mul
     (local.get $253)
     (local.get $254)
    )
   )
   (local.set $257
    (f64.add
     (local.get $256)
     (local.get $255)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $257)
   )
   (local.set $258
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $259
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $260
    (f64.add
     (local.get $258)
     (local.get $259)
    )
   )
   (local.set $261
    (f64.const 2)
   )
   (local.set $262
    (f64.mul
     (local.get $261)
     (local.get $260)
    )
   )
   (f64.store offset=120
    (local.get $3)
    (local.get $262)
   )
  )
  (local.set $263
   (f64.load offset=120
    (local.get $3)
   )
  )
  (local.set $264
   (i32.const 128)
  )
  (local.set $265
   (i32.add
    (local.get $3)
    (local.get $264)
   )
  )
  (global.set $__stack_pointer
   (local.get $265)
  )
  (return
   (local.get $263)
  )
 )
 (func $acosf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 f32)
  (local $32 i32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 i32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f32)
  (local $107 f32)
  (local $108 f32)
  (local $109 f32)
  (local $110 f32)
  (local $111 f32)
  (local $112 f32)
  (local $113 f32)
  (local $114 f32)
  (local $115 f32)
  (local $116 f32)
  (local $117 f32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 f32)
  (local $128 f32)
  (local $129 f32)
  (local $130 i32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 f32)
  (local $137 f32)
  (local $138 f32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 f32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 f32)
  (local $162 f32)
  (local $163 f32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 f32)
  (local $184 f32)
  (local $185 f32)
  (local $186 f32)
  (local $187 f32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 f32)
  (local $194 f32)
  (local $195 i32)
  (local $196 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 80)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=72
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=72
    (local.get $3)
   )
  )
  (f32.store offset=24
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=24
    (local.get $3)
   )
  )
  (i32.store offset=36
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=36
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=32
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=32
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1065353216)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.load offset=32
      (local.get $3)
     )
    )
    (local.set $17
     (i32.const 1065353216)
    )
    (local.set $18
     (local.get $16)
    )
    (local.set $19
     (local.get $17)
    )
    (local.set $20
     (i32.eq
      (local.get $18)
      (local.get $19)
     )
    )
    (local.set $21
     (i32.const 1)
    )
    (local.set $22
     (i32.and
      (local.get $20)
      (local.get $21)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $22)
      )
     )
     (local.set $23
      (i32.load offset=36
       (local.get $3)
      )
     )
     (local.set $24
      (i32.const 0)
     )
     (local.set $25
      (local.get $23)
     )
     (local.set $26
      (local.get $24)
     )
     (local.set $27
      (i32.gt_s
       (local.get $25)
       (local.get $26)
      )
     )
     (local.set $28
      (i32.const 1)
     )
     (local.set $29
      (i32.and
       (local.get $27)
       (local.get $28)
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (local.get $29)
       )
      )
      (local.set $30
       (i32.const 0)
      )
      (local.set $31
       (f32.convert_i32_s
        (local.get $30)
       )
      )
      (f32.store offset=76
       (local.get $3)
       (local.get $31)
      )
      (br $label$1)
     )
     (local.set $32
      (i32.const 0)
     )
     (local.set $33
      (f32.load offset=8984
       (local.get $32)
      )
     )
     (local.set $34
      (f32.add
       (local.get $33)
       (local.get $33)
      )
     )
     (local.set $35
      (f32.const 3.141592502593994)
     )
     (local.set $36
      (f32.add
       (local.get $34)
       (local.get $35)
      )
     )
     (f32.store offset=76
      (local.get $3)
      (local.get $36)
     )
     (br $label$1)
    )
    (local.set $37
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $38
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $39
     (f32.sub
      (local.get $37)
      (local.get $38)
     )
    )
    (local.set $40
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $41
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $42
     (f32.sub
      (local.get $40)
      (local.get $41)
     )
    )
    (local.set $43
     (f32.div
      (local.get $39)
      (local.get $42)
     )
    )
    (f32.store offset=76
     (local.get $3)
     (local.get $43)
    )
    (br $label$1)
   )
   (local.set $44
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $45
    (i32.const 1056964608)
   )
   (local.set $46
    (local.get $44)
   )
   (local.set $47
    (local.get $45)
   )
   (local.set $48
    (i32.lt_s
     (local.get $46)
     (local.get $47)
    )
   )
   (local.set $49
    (i32.const 1)
   )
   (local.set $50
    (i32.and
     (local.get $48)
     (local.get $49)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $50)
     )
    )
    (local.set $51
     (i32.load offset=32
      (local.get $3)
     )
    )
    (local.set $52
     (i32.const 847249408)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (local.get $52)
    )
    (local.set $55
     (i32.le_s
      (local.get $53)
      (local.get $54)
     )
    )
    (local.set $56
     (i32.const 1)
    )
    (local.set $57
     (i32.and
      (local.get $55)
      (local.get $56)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $57)
      )
     )
     (local.set $58
      (i32.const 0)
     )
     (local.set $59
      (f32.load offset=8984
       (local.get $58)
      )
     )
     (local.set $60
      (f32.const 1.570796251296997)
     )
     (local.set $61
      (f32.add
       (local.get $60)
       (local.get $59)
      )
     )
     (f32.store offset=76
      (local.get $3)
      (local.get $61)
     )
     (br $label$1)
    )
    (local.set $62
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $63
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $64
     (f32.mul
      (local.get $62)
      (local.get $63)
     )
    )
    (f32.store offset=68
     (local.get $3)
     (local.get $64)
    )
    (local.set $65
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $66
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $67
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $68
     (f32.const -0.008656363002955914)
    )
    (local.set $69
     (f32.mul
      (local.get $67)
      (local.get $68)
     )
    )
    (local.set $70
     (f32.const -0.04274342209100723)
    )
    (local.set $71
     (f32.add
      (local.get $69)
      (local.get $70)
     )
    )
    (local.set $72
     (f32.mul
      (local.get $66)
      (local.get $71)
     )
    )
    (local.set $73
     (f32.const 0.16666586697101593)
    )
    (local.set $74
     (f32.add
      (local.get $72)
      (local.get $73)
     )
    )
    (local.set $75
     (f32.mul
      (local.get $65)
      (local.get $74)
     )
    )
    (f32.store offset=64
     (local.get $3)
     (local.get $75)
    )
    (local.set $76
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $77
     (f32.const -0.7066296339035034)
    )
    (local.set $78
     (f32.mul
      (local.get $76)
      (local.get $77)
     )
    )
    (local.set $79
     (f32.const 1)
    )
    (local.set $80
     (f32.add
      (local.get $78)
      (local.get $79)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $80)
    )
    (local.set $81
     (f32.load offset=64
      (local.get $3)
     )
    )
    (local.set $82
     (f32.load offset=60
      (local.get $3)
     )
    )
    (local.set $83
     (f32.div
      (local.get $81)
      (local.get $82)
     )
    )
    (f32.store offset=56
     (local.get $3)
     (local.get $83)
    )
    (local.set $84
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $85
     (i32.const 0)
    )
    (local.set $86
     (f32.load offset=8984
      (local.get $85)
     )
    )
    (local.set $87
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $88
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $89
     (f32.neg
      (local.get $87)
     )
    )
    (local.set $90
     (f32.mul
      (local.get $89)
      (local.get $88)
     )
    )
    (local.set $91
     (f32.add
      (local.get $90)
      (local.get $86)
     )
    )
    (local.set $92
     (f32.sub
      (local.get $84)
      (local.get $91)
     )
    )
    (local.set $93
     (f32.const 1.570796251296997)
    )
    (local.set $94
     (f32.sub
      (local.get $93)
      (local.get $92)
     )
    )
    (f32.store offset=76
     (local.get $3)
     (local.get $94)
    )
    (br $label$1)
   )
   (local.set $95
    (i32.load offset=36
     (local.get $3)
    )
   )
   (local.set $96
    (i32.const 0)
   )
   (local.set $97
    (local.get $95)
   )
   (local.set $98
    (local.get $96)
   )
   (local.set $99
    (i32.lt_s
     (local.get $97)
     (local.get $98)
    )
   )
   (local.set $100
    (i32.const 1)
   )
   (local.set $101
    (i32.and
     (local.get $99)
     (local.get $100)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $101)
     )
    )
    (local.set $102
     (f32.load offset=72
      (local.get $3)
     )
    )
    (local.set $103
     (f32.const 1)
    )
    (local.set $104
     (f32.add
      (local.get $103)
      (local.get $102)
     )
    )
    (local.set $105
     (f32.const 0.5)
    )
    (local.set $106
     (f32.mul
      (local.get $104)
      (local.get $105)
     )
    )
    (f32.store offset=68
     (local.get $3)
     (local.get $106)
    )
    (local.set $107
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $108
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $109
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $110
     (f32.const -0.008656363002955914)
    )
    (local.set $111
     (f32.mul
      (local.get $109)
      (local.get $110)
     )
    )
    (local.set $112
     (f32.const -0.04274342209100723)
    )
    (local.set $113
     (f32.add
      (local.get $111)
      (local.get $112)
     )
    )
    (local.set $114
     (f32.mul
      (local.get $108)
      (local.get $113)
     )
    )
    (local.set $115
     (f32.const 0.16666586697101593)
    )
    (local.set $116
     (f32.add
      (local.get $114)
      (local.get $115)
     )
    )
    (local.set $117
     (f32.mul
      (local.get $107)
      (local.get $116)
     )
    )
    (f32.store offset=64
     (local.get $3)
     (local.get $117)
    )
    (local.set $118
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $119
     (f32.const -0.7066296339035034)
    )
    (local.set $120
     (f32.mul
      (local.get $118)
      (local.get $119)
     )
    )
    (local.set $121
     (f32.const 1)
    )
    (local.set $122
     (f32.add
      (local.get $120)
      (local.get $121)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $122)
    )
    (local.set $123
     (f32.load offset=68
      (local.get $3)
     )
    )
    (local.set $124
     (call $sqrtf
      (local.get $123)
     )
    )
    (f32.store offset=48
     (local.get $3)
     (local.get $124)
    )
    (local.set $125
     (f32.load offset=64
      (local.get $3)
     )
    )
    (local.set $126
     (f32.load offset=60
      (local.get $3)
     )
    )
    (local.set $127
     (f32.div
      (local.get $125)
      (local.get $126)
     )
    )
    (f32.store offset=56
     (local.get $3)
     (local.get $127)
    )
    (local.set $128
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $129
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $130
     (i32.const 0)
    )
    (local.set $131
     (f32.load offset=8984
      (local.get $130)
     )
    )
    (local.set $132
     (f32.neg
      (local.get $131)
     )
    )
    (local.set $133
     (f32.mul
      (local.get $128)
      (local.get $129)
     )
    )
    (local.set $134
     (f32.add
      (local.get $133)
      (local.get $132)
     )
    )
    (f32.store offset=52
     (local.get $3)
     (local.get $134)
    )
    (local.set $135
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $136
     (f32.load offset=52
      (local.get $3)
     )
    )
    (local.set $137
     (f32.add
      (local.get $135)
      (local.get $136)
     )
    )
    (local.set $138
     (f32.add
      (local.get $137)
      (local.get $137)
     )
    )
    (local.set $139
     (f32.const 3.141592502593994)
    )
    (local.set $140
     (f32.sub
      (local.get $139)
      (local.get $138)
     )
    )
    (f32.store offset=76
     (local.get $3)
     (local.get $140)
    )
    (br $label$1)
   )
   (local.set $141
    (f32.load offset=72
     (local.get $3)
    )
   )
   (local.set $142
    (f32.const 1)
   )
   (local.set $143
    (f32.sub
     (local.get $142)
     (local.get $141)
    )
   )
   (local.set $144
    (f32.const 0.5)
   )
   (local.set $145
    (f32.mul
     (local.get $143)
     (local.get $144)
    )
   )
   (f32.store offset=68
    (local.get $3)
    (local.get $145)
   )
   (local.set $146
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $147
    (call $sqrtf
     (local.get $146)
    )
   )
   (f32.store offset=48
    (local.get $3)
    (local.get $147)
   )
   (local.set $148
    (f32.load offset=48
     (local.get $3)
    )
   )
   (f32.store offset=40
    (local.get $3)
    (local.get $148)
   )
   (local.set $149
    (f32.load offset=40
     (local.get $3)
    )
   )
   (f32.store offset=16
    (local.get $3)
    (local.get $149)
   )
   (local.set $150
    (i32.load offset=16
     (local.get $3)
    )
   )
   (i32.store offset=20
    (local.get $3)
    (local.get $150)
   )
   (local.set $151
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $152
    (i32.const -4096)
   )
   (local.set $153
    (i32.and
     (local.get $151)
     (local.get $152)
    )
   )
   (i32.store offset=8
    (local.get $3)
    (local.get $153)
   )
   (local.set $154
    (f32.load offset=8
     (local.get $3)
    )
   )
   (f32.store offset=40
    (local.get $3)
    (local.get $154)
   )
   (local.set $155
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $156
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $157
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $158
    (f32.neg
     (local.get $156)
    )
   )
   (local.set $159
    (f32.mul
     (local.get $158)
     (local.get $157)
    )
   )
   (local.set $160
    (f32.add
     (local.get $159)
     (local.get $155)
    )
   )
   (local.set $161
    (f32.load offset=48
     (local.get $3)
    )
   )
   (local.set $162
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $163
    (f32.add
     (local.get $161)
     (local.get $162)
    )
   )
   (local.set $164
    (f32.div
     (local.get $160)
     (local.get $163)
    )
   )
   (f32.store offset=44
    (local.get $3)
    (local.get $164)
   )
   (local.set $165
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $166
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $167
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $168
    (f32.const -0.008656363002955914)
   )
   (local.set $169
    (f32.mul
     (local.get $167)
     (local.get $168)
    )
   )
   (local.set $170
    (f32.const -0.04274342209100723)
   )
   (local.set $171
    (f32.add
     (local.get $169)
     (local.get $170)
    )
   )
   (local.set $172
    (f32.mul
     (local.get $166)
     (local.get $171)
    )
   )
   (local.set $173
    (f32.const 0.16666586697101593)
   )
   (local.set $174
    (f32.add
     (local.get $172)
     (local.get $173)
    )
   )
   (local.set $175
    (f32.mul
     (local.get $165)
     (local.get $174)
    )
   )
   (f32.store offset=64
    (local.get $3)
    (local.get $175)
   )
   (local.set $176
    (f32.load offset=68
     (local.get $3)
    )
   )
   (local.set $177
    (f32.const -0.7066296339035034)
   )
   (local.set $178
    (f32.mul
     (local.get $176)
     (local.get $177)
    )
   )
   (local.set $179
    (f32.const 1)
   )
   (local.set $180
    (f32.add
     (local.get $178)
     (local.get $179)
    )
   )
   (f32.store offset=60
    (local.get $3)
    (local.get $180)
   )
   (local.set $181
    (f32.load offset=64
     (local.get $3)
    )
   )
   (local.set $182
    (f32.load offset=60
     (local.get $3)
    )
   )
   (local.set $183
    (f32.div
     (local.get $181)
     (local.get $182)
    )
   )
   (f32.store offset=56
    (local.get $3)
    (local.get $183)
   )
   (local.set $184
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $185
    (f32.load offset=48
     (local.get $3)
    )
   )
   (local.set $186
    (f32.load offset=44
     (local.get $3)
    )
   )
   (local.set $187
    (f32.mul
     (local.get $184)
     (local.get $185)
    )
   )
   (local.set $188
    (f32.add
     (local.get $187)
     (local.get $186)
    )
   )
   (f32.store offset=52
    (local.get $3)
    (local.get $188)
   )
   (local.set $189
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $190
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $191
    (f32.add
     (local.get $189)
     (local.get $190)
    )
   )
   (local.set $192
    (f32.const 2)
   )
   (local.set $193
    (f32.mul
     (local.get $192)
     (local.get $191)
    )
   )
   (f32.store offset=76
    (local.get $3)
    (local.get $193)
   )
  )
  (local.set $194
   (f32.load offset=76
    (local.get $3)
   )
  )
  (local.set $195
   (i32.const 80)
  )
  (local.set $196
   (i32.add
    (local.get $3)
    (local.get $195)
   )
  )
  (global.set $__stack_pointer
   (local.get $196)
  )
  (return
   (local.get $194)
  )
 )
 (func $acosh (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 f64)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 f64)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 i32)
  (local $87 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=32
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $8
   (i32.const 1072693248)
  )
  (local.set $9
   (local.get $7)
  )
  (local.set $10
   (local.get $8)
  )
  (local.set $11
   (i32.lt_s
    (local.get $9)
    (local.get $10)
   )
  )
  (local.set $12
   (i32.const 1)
  )
  (local.set $13
   (i32.and
    (local.get $11)
    (local.get $12)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $13)
     )
    )
    (local.set $14
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $15
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $16
     (f64.sub
      (local.get $14)
      (local.get $15)
     )
    )
    (local.set $17
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $18
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $19
     (f64.sub
      (local.get $17)
      (local.get $18)
     )
    )
    (local.set $20
     (f64.div
      (local.get $16)
      (local.get $19)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $20)
    )
    (br $label$1)
   )
   (local.set $21
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $22
    (i32.const 1102053376)
   )
   (local.set $23
    (local.get $21)
   )
   (local.set $24
    (local.get $22)
   )
   (local.set $25
    (i32.ge_s
     (local.get $23)
     (local.get $24)
    )
   )
   (local.set $26
    (i32.const 1)
   )
   (local.set $27
    (i32.and
     (local.get $25)
     (local.get $26)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $27)
     )
    )
    (local.set $28
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $29
     (i32.const 2146435072)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (local.get $29)
    )
    (local.set $32
     (i32.ge_s
      (local.get $30)
      (local.get $31)
     )
    )
    (local.set $33
     (i32.const 1)
    )
    (local.set $34
     (i32.and
      (local.get $32)
      (local.get $33)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $34)
      )
     )
     (local.set $35
      (f64.load offset=32
       (local.get $3)
      )
     )
     (local.set $36
      (f64.load offset=32
       (local.get $3)
      )
     )
     (local.set $37
      (f64.add
       (local.get $35)
       (local.get $36)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $37)
     )
     (br $label$1)
    )
    (local.set $38
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $39
     (call $log
      (local.get $38)
     )
    )
    (local.set $40
     (f64.const 0.6931471805599453)
    )
    (local.set $41
     (f64.add
      (local.get $39)
      (local.get $40)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $41)
    )
    (br $label$1)
   )
   (local.set $42
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $43
    (i32.const 1072693248)
   )
   (local.set $44
    (i32.sub
     (local.get $42)
     (local.get $43)
    )
   )
   (local.set $45
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $46
    (i32.or
     (local.get $44)
     (local.get $45)
    )
   )
   (block $label$5
    (br_if $label$5
     (local.get $46)
    )
    (local.set $47
     (i32.const 0)
    )
    (local.set $48
     (f64.convert_i32_s
      (local.get $47)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $48)
    )
    (br $label$1)
   )
   (local.set $49
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $50
    (i32.const 1073741824)
   )
   (local.set $51
    (local.get $49)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (i32.gt_s
     (local.get $51)
     (local.get $52)
    )
   )
   (local.set $54
    (i32.const 1)
   )
   (local.set $55
    (i32.and
     (local.get $53)
     (local.get $54)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $55)
     )
    )
    (local.set $56
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $57
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $58
     (f64.mul
      (local.get $56)
      (local.get $57)
     )
    )
    (f64.store offset=24
     (local.get $3)
     (local.get $58)
    )
    (local.set $59
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $60
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $61
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $62
     (f64.const 1)
    )
    (local.set $63
     (f64.sub
      (local.get $61)
      (local.get $62)
     )
    )
    (local.set $64
     (call $sqrt
      (local.get $63)
     )
    )
    (local.set $65
     (f64.add
      (local.get $60)
      (local.get $64)
     )
    )
    (local.set $66
     (f64.const 1)
    )
    (local.set $67
     (f64.div
      (local.get $66)
      (local.get $65)
     )
    )
    (local.set $68
     (f64.neg
      (local.get $67)
     )
    )
    (local.set $69
     (f64.add
      (local.get $59)
      (local.get $59)
     )
    )
    (local.set $70
     (f64.add
      (local.get $69)
      (local.get $68)
     )
    )
    (local.set $71
     (call $log
      (local.get $70)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $71)
    )
    (br $label$1)
   )
   (local.set $72
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $73
    (f64.const 1)
   )
   (local.set $74
    (f64.sub
     (local.get $72)
     (local.get $73)
    )
   )
   (f64.store offset=24
    (local.get $3)
    (local.get $74)
   )
   (local.set $75
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $76
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $77
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $78
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $79
    (f64.mul
     (local.get $77)
     (local.get $78)
    )
   )
   (local.set $80
    (f64.add
     (local.get $76)
     (local.get $76)
    )
   )
   (local.set $81
    (f64.add
     (local.get $80)
     (local.get $79)
    )
   )
   (local.set $82
    (call $sqrt
     (local.get $81)
    )
   )
   (local.set $83
    (f64.add
     (local.get $75)
     (local.get $82)
    )
   )
   (local.set $84
    (call $log1p
     (local.get $83)
    )
   )
   (f64.store offset=40
    (local.get $3)
    (local.get $84)
   )
  )
  (local.set $85
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $86
   (i32.const 48)
  )
  (local.set $87
   (i32.add
    (local.get $3)
    (local.get $86)
   )
  )
  (global.set $__stack_pointer
   (local.get $87)
  )
  (return
   (local.get $85)
  )
 )
 (func $acoshf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 f32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 i32)
  (local $88 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=24
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=24
    (local.get $3)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 1065353216)
  )
  (local.set $8
   (local.get $6)
  )
  (local.set $9
   (local.get $7)
  )
  (local.set $10
   (i32.lt_s
    (local.get $8)
    (local.get $9)
   )
  )
  (local.set $11
   (i32.const 1)
  )
  (local.set $12
   (i32.and
    (local.get $10)
    (local.get $11)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $12)
     )
    )
    (local.set $13
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $14
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $15
     (f32.sub
      (local.get $13)
      (local.get $14)
     )
    )
    (local.set $16
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $18
     (f32.sub
      (local.get $16)
      (local.get $17)
     )
    )
    (local.set $19
     (f32.div
      (local.get $15)
      (local.get $18)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $19)
    )
    (br $label$1)
   )
   (local.set $20
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $21
    (i32.const 1300234240)
   )
   (local.set $22
    (local.get $20)
   )
   (local.set $23
    (local.get $21)
   )
   (local.set $24
    (i32.ge_s
     (local.get $22)
     (local.get $23)
    )
   )
   (local.set $25
    (i32.const 1)
   )
   (local.set $26
    (i32.and
     (local.get $24)
     (local.get $25)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $26)
     )
    )
    (local.set $27
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 2139095040)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $33)
      )
     )
     (local.set $34
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $35
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $36
      (f32.add
       (local.get $34)
       (local.get $35)
      )
     )
     (f32.store offset=28
      (local.get $3)
      (local.get $36)
     )
     (br $label$1)
    )
    (local.set $37
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $38
     (call $logf
      (local.get $37)
     )
    )
    (local.set $39
     (f32.const 0.6931471824645996)
    )
    (local.set $40
     (f32.add
      (local.get $38)
      (local.get $39)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $40)
    )
    (br $label$1)
   )
   (local.set $41
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $42
    (i32.const 1065353216)
   )
   (local.set $43
    (local.get $41)
   )
   (local.set $44
    (local.get $42)
   )
   (local.set $45
    (i32.eq
     (local.get $43)
     (local.get $44)
    )
   )
   (local.set $46
    (i32.const 1)
   )
   (local.set $47
    (i32.and
     (local.get $45)
     (local.get $46)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $47)
     )
    )
    (local.set $48
     (i32.const 0)
    )
    (local.set $49
     (f32.convert_i32_s
      (local.get $48)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $49)
    )
    (br $label$1)
   )
   (local.set $50
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $51
    (i32.const 1073741824)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (local.get $51)
   )
   (local.set $54
    (i32.gt_s
     (local.get $52)
     (local.get $53)
    )
   )
   (local.set $55
    (i32.const 1)
   )
   (local.set $56
    (i32.and
     (local.get $54)
     (local.get $55)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $56)
     )
    )
    (local.set $57
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $58
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $59
     (f32.mul
      (local.get $57)
      (local.get $58)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $59)
    )
    (local.set $60
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $61
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $62
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $63
     (f32.const 1)
    )
    (local.set $64
     (f32.sub
      (local.get $62)
      (local.get $63)
     )
    )
    (local.set $65
     (call $sqrtf
      (local.get $64)
     )
    )
    (local.set $66
     (f32.add
      (local.get $61)
      (local.get $65)
     )
    )
    (local.set $67
     (f32.const 1)
    )
    (local.set $68
     (f32.div
      (local.get $67)
      (local.get $66)
     )
    )
    (local.set $69
     (f32.neg
      (local.get $68)
     )
    )
    (local.set $70
     (f32.add
      (local.get $60)
      (local.get $60)
     )
    )
    (local.set $71
     (f32.add
      (local.get $70)
      (local.get $69)
     )
    )
    (local.set $72
     (call $logf
      (local.get $71)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $72)
    )
    (br $label$1)
   )
   (local.set $73
    (f32.load offset=24
     (local.get $3)
    )
   )
   (local.set $74
    (f32.const 1)
   )
   (local.set $75
    (f32.sub
     (local.get $73)
     (local.get $74)
    )
   )
   (f32.store offset=20
    (local.get $3)
    (local.get $75)
   )
   (local.set $76
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $77
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $78
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $79
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $80
    (f32.mul
     (local.get $78)
     (local.get $79)
    )
   )
   (local.set $81
    (f32.add
     (local.get $77)
     (local.get $77)
    )
   )
   (local.set $82
    (f32.add
     (local.get $81)
     (local.get $80)
    )
   )
   (local.set $83
    (call $sqrtf
     (local.get $82)
    )
   )
   (local.set $84
    (f32.add
     (local.get $76)
     (local.get $83)
    )
   )
   (local.set $85
    (call $log1pf
     (local.get $84)
    )
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $85)
   )
  )
  (local.set $86
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $87
   (i32.const 32)
  )
  (local.set $88
   (i32.add
    (local.get $3)
    (local.get $87)
   )
  )
  (global.set $__stack_pointer
   (local.get $88)
  )
  (return
   (local.get $86)
  )
 )
 (func $asin (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 f64)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 f64)
  (local $54 f64)
  (local $55 f64)
  (local $56 f64)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 f64)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 i32)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 f64)
  (local $196 f64)
  (local $197 f64)
  (local $198 f64)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 f64)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 i32)
  (local $219 i32)
  (local $220 i32)
  (local $221 i32)
  (local $222 i32)
  (local $223 i32)
  (local $224 i32)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 i32)
  (local $230 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 112)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=96
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $5
   (f64.convert_i32_s
    (local.get $4)
   )
  )
  (f64.store offset=88
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (f64.load offset=96
    (local.get $3)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=28
    (local.get $3)
   )
  )
  (i32.store offset=36
   (local.get $3)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=36
    (local.get $3)
   )
  )
  (local.set $9
   (i32.const 2147483647)
  )
  (local.set $10
   (i32.and
    (local.get $8)
    (local.get $9)
   )
  )
  (i32.store offset=32
   (local.get $3)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=32
    (local.get $3)
   )
  )
  (local.set $12
   (i32.const 1072693248)
  )
  (local.set $13
   (local.get $11)
  )
  (local.set $14
   (local.get $12)
  )
  (local.set $15
   (i32.ge_s
    (local.get $13)
    (local.get $14)
   )
  )
  (local.set $16
   (i32.const 1)
  )
  (local.set $17
   (i32.and
    (local.get $15)
    (local.get $16)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $17)
     )
    )
    (local.set $18
     (f64.load offset=96
      (local.get $3)
     )
    )
    (f64.store offset=8
     (local.get $3)
     (local.get $18)
    )
    (local.set $19
     (i32.load offset=8
      (local.get $3)
     )
    )
    (i32.store offset=20
     (local.get $3)
     (local.get $19)
    )
    (local.set $20
     (i32.load offset=32
      (local.get $3)
     )
    )
    (local.set $21
     (i32.const 1072693248)
    )
    (local.set $22
     (i32.sub
      (local.get $20)
      (local.get $21)
     )
    )
    (local.set $23
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $24
     (i32.or
      (local.get $22)
      (local.get $23)
     )
    )
    (block $label$3
     (br_if $label$3
      (local.get $24)
     )
     (local.set $25
      (f64.load offset=96
       (local.get $3)
      )
     )
     (local.set $26
      (f64.load offset=96
       (local.get $3)
      )
     )
     (local.set $27
      (f64.const 6.123233995736766e-17)
     )
     (local.set $28
      (f64.mul
       (local.get $26)
       (local.get $27)
      )
     )
     (local.set $29
      (f64.const 1.5707963267948966)
     )
     (local.set $30
      (f64.mul
       (local.get $25)
       (local.get $29)
      )
     )
     (local.set $31
      (f64.add
       (local.get $30)
       (local.get $28)
      )
     )
     (f64.store offset=104
      (local.get $3)
      (local.get $31)
     )
     (br $label$1)
    )
    (local.set $32
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $33
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $34
     (f64.sub
      (local.get $32)
      (local.get $33)
     )
    )
    (local.set $35
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $36
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $37
     (f64.sub
      (local.get $35)
      (local.get $36)
     )
    )
    (local.set $38
     (f64.div
      (local.get $34)
      (local.get $37)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $38)
    )
    (br $label$1)
   )
   (local.set $39
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $40
    (i32.const 1071644672)
   )
   (local.set $41
    (local.get $39)
   )
   (local.set $42
    (local.get $40)
   )
   (local.set $43
    (i32.lt_s
     (local.get $41)
     (local.get $42)
    )
   )
   (local.set $44
    (i32.const 1)
   )
   (local.set $45
    (i32.and
     (local.get $43)
     (local.get $44)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $45)
     )
    )
    (local.set $46
     (i32.load offset=32
      (local.get $3)
     )
    )
    (local.set $47
     (i32.const 1045430272)
    )
    (local.set $48
     (local.get $46)
    )
    (local.set $49
     (local.get $47)
    )
    (local.set $50
     (i32.lt_s
      (local.get $48)
      (local.get $49)
     )
    )
    (local.set $51
     (i32.const 1)
    )
    (local.set $52
     (i32.and
      (local.get $50)
      (local.get $51)
     )
    )
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (local.get $52)
      )
     )
     (local.set $53
      (f64.load offset=96
       (local.get $3)
      )
     )
     (local.set $54
      (f64.const 1.e+300)
     )
     (local.set $55
      (f64.add
       (local.get $54)
       (local.get $53)
      )
     )
     (local.set $56
      (f64.const 1)
     )
     (local.set $57
      (f64.gt
       (local.get $55)
       (local.get $56)
      )
     )
     (local.set $58
      (i32.const 1)
     )
     (local.set $59
      (i32.and
       (local.get $57)
       (local.get $58)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $59)
       )
      )
      (local.set $60
       (f64.load offset=96
        (local.get $3)
       )
      )
      (f64.store offset=104
       (local.get $3)
       (local.get $60)
      )
      (br $label$1)
     )
    )
    (local.set $61
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $62
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $63
     (f64.mul
      (local.get $61)
      (local.get $62)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $63)
    )
    (local.set $64
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $65
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $66
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $67
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $68
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $69
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $70
     (f64.const 3.479331075960212e-05)
    )
    (local.set $71
     (f64.mul
      (local.get $69)
      (local.get $70)
     )
    )
    (local.set $72
     (f64.const 7.915349942898145e-04)
    )
    (local.set $73
     (f64.add
      (local.get $71)
      (local.get $72)
     )
    )
    (local.set $74
     (f64.mul
      (local.get $68)
      (local.get $73)
     )
    )
    (local.set $75
     (f64.const -0.04005553450067941)
    )
    (local.set $76
     (f64.add
      (local.get $74)
      (local.get $75)
     )
    )
    (local.set $77
     (f64.mul
      (local.get $67)
      (local.get $76)
     )
    )
    (local.set $78
     (f64.const 0.20121253213486293)
    )
    (local.set $79
     (f64.add
      (local.get $77)
      (local.get $78)
     )
    )
    (local.set $80
     (f64.mul
      (local.get $66)
      (local.get $79)
     )
    )
    (local.set $81
     (f64.const -0.3255658186224009)
    )
    (local.set $82
     (f64.add
      (local.get $80)
      (local.get $81)
     )
    )
    (local.set $83
     (f64.mul
      (local.get $65)
      (local.get $82)
     )
    )
    (local.set $84
     (f64.const 0.16666666666666666)
    )
    (local.set $85
     (f64.add
      (local.get $83)
      (local.get $84)
     )
    )
    (local.set $86
     (f64.mul
      (local.get $64)
      (local.get $85)
     )
    )
    (f64.store offset=72
     (local.get $3)
     (local.get $86)
    )
    (local.set $87
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $88
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $89
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $90
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $91
     (f64.const 0.07703815055590194)
    )
    (local.set $92
     (f64.mul
      (local.get $90)
      (local.get $91)
     )
    )
    (local.set $93
     (f64.const -0.6882839716054533)
    )
    (local.set $94
     (f64.add
      (local.get $92)
      (local.get $93)
     )
    )
    (local.set $95
     (f64.mul
      (local.get $89)
      (local.get $94)
     )
    )
    (local.set $96
     (f64.const 2.0209457602335057)
    )
    (local.set $97
     (f64.add
      (local.get $95)
      (local.get $96)
     )
    )
    (local.set $98
     (f64.mul
      (local.get $88)
      (local.get $97)
     )
    )
    (local.set $99
     (f64.const -2.403394911734414)
    )
    (local.set $100
     (f64.add
      (local.get $98)
      (local.get $99)
     )
    )
    (local.set $101
     (f64.mul
      (local.get $87)
      (local.get $100)
     )
    )
    (local.set $102
     (f64.const 1)
    )
    (local.set $103
     (f64.add
      (local.get $101)
      (local.get $102)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $103)
    )
    (local.set $104
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $105
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $106
     (f64.div
      (local.get $104)
      (local.get $105)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $106)
    )
    (local.set $107
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $108
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $109
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $110
     (f64.mul
      (local.get $108)
      (local.get $109)
     )
    )
    (local.set $111
     (f64.add
      (local.get $110)
      (local.get $107)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $111)
    )
    (br $label$1)
   )
   (local.set $112
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $113
    (call $fabs
     (local.get $112)
    )
   )
   (local.set $114
    (f64.const 1)
   )
   (local.set $115
    (f64.sub
     (local.get $114)
     (local.get $113)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $115)
   )
   (local.set $116
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $117
    (f64.const 0.5)
   )
   (local.set $118
    (f64.mul
     (local.get $116)
     (local.get $117)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $118)
   )
   (local.set $119
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $120
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $121
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $122
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $123
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $124
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $125
    (f64.const 3.479331075960212e-05)
   )
   (local.set $126
    (f64.mul
     (local.get $124)
     (local.get $125)
    )
   )
   (local.set $127
    (f64.const 7.915349942898145e-04)
   )
   (local.set $128
    (f64.add
     (local.get $126)
     (local.get $127)
    )
   )
   (local.set $129
    (f64.mul
     (local.get $123)
     (local.get $128)
    )
   )
   (local.set $130
    (f64.const -0.04005553450067941)
   )
   (local.set $131
    (f64.add
     (local.get $129)
     (local.get $130)
    )
   )
   (local.set $132
    (f64.mul
     (local.get $122)
     (local.get $131)
    )
   )
   (local.set $133
    (f64.const 0.20121253213486293)
   )
   (local.set $134
    (f64.add
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f64.mul
     (local.get $121)
     (local.get $134)
    )
   )
   (local.set $136
    (f64.const -0.3255658186224009)
   )
   (local.set $137
    (f64.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f64.mul
     (local.get $120)
     (local.get $137)
    )
   )
   (local.set $139
    (f64.const 0.16666666666666666)
   )
   (local.set $140
    (f64.add
     (local.get $138)
     (local.get $139)
    )
   )
   (local.set $141
    (f64.mul
     (local.get $119)
     (local.get $140)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $141)
   )
   (local.set $142
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $143
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $144
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $145
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $146
    (f64.const 0.07703815055590194)
   )
   (local.set $147
    (f64.mul
     (local.get $145)
     (local.get $146)
    )
   )
   (local.set $148
    (f64.const -0.6882839716054533)
   )
   (local.set $149
    (f64.add
     (local.get $147)
     (local.get $148)
    )
   )
   (local.set $150
    (f64.mul
     (local.get $144)
     (local.get $149)
    )
   )
   (local.set $151
    (f64.const 2.0209457602335057)
   )
   (local.set $152
    (f64.add
     (local.get $150)
     (local.get $151)
    )
   )
   (local.set $153
    (f64.mul
     (local.get $143)
     (local.get $152)
    )
   )
   (local.set $154
    (f64.const -2.403394911734414)
   )
   (local.set $155
    (f64.add
     (local.get $153)
     (local.get $154)
    )
   )
   (local.set $156
    (f64.mul
     (local.get $142)
     (local.get $155)
    )
   )
   (local.set $157
    (f64.const 1)
   )
   (local.set $158
    (f64.add
     (local.get $156)
     (local.get $157)
    )
   )
   (f64.store offset=64
    (local.get $3)
    (local.get $158)
   )
   (local.set $159
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $160
    (call $sqrt
     (local.get $159)
    )
   )
   (f64.store offset=40
    (local.get $3)
    (local.get $160)
   )
   (local.set $161
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $162
    (i32.const 1072640819)
   )
   (local.set $163
    (local.get $161)
   )
   (local.set $164
    (local.get $162)
   )
   (local.set $165
    (i32.ge_s
     (local.get $163)
     (local.get $164)
    )
   )
   (local.set $166
    (i32.const 1)
   )
   (local.set $167
    (i32.and
     (local.get $165)
     (local.get $166)
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.get $167)
      )
     )
     (local.set $168
      (f64.load offset=72
       (local.get $3)
      )
     )
     (local.set $169
      (f64.load offset=64
       (local.get $3)
      )
     )
     (local.set $170
      (f64.div
       (local.get $168)
       (local.get $169)
      )
     )
     (f64.store offset=80
      (local.get $3)
      (local.get $170)
     )
     (local.set $171
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $172
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $173
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $174
      (f64.mul
       (local.get $172)
       (local.get $173)
      )
     )
     (local.set $175
      (f64.add
       (local.get $174)
       (local.get $171)
      )
     )
     (local.set $176
      (f64.add
       (local.get $175)
       (local.get $175)
      )
     )
     (local.set $177
      (f64.const -6.123233995736766e-17)
     )
     (local.set $178
      (f64.add
       (local.get $176)
       (local.get $177)
      )
     )
     (local.set $179
      (f64.const 1.5707963267948966)
     )
     (local.set $180
      (f64.sub
       (local.get $179)
       (local.get $178)
      )
     )
     (f64.store offset=88
      (local.get $3)
      (local.get $180)
     )
     (br $label$7)
    )
    (local.set $181
     (f64.load offset=40
      (local.get $3)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $181)
    )
    (local.set $182
     (f64.load offset=80
      (local.get $3)
     )
    )
    (f64.store
     (local.get $3)
     (local.get $182)
    )
    (local.set $183
     (i32.const 0)
    )
    (i32.store
     (local.get $3)
     (local.get $183)
    )
    (local.set $184
     (f64.load
      (local.get $3)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $184)
    )
    (local.set $185
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $186
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $187
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $188
     (f64.neg
      (local.get $186)
     )
    )
    (local.set $189
     (f64.mul
      (local.get $188)
      (local.get $187)
     )
    )
    (local.set $190
     (f64.add
      (local.get $189)
      (local.get $185)
     )
    )
    (local.set $191
     (f64.load offset=40
      (local.get $3)
     )
    )
    (local.set $192
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $193
     (f64.add
      (local.get $191)
      (local.get $192)
     )
    )
    (local.set $194
     (f64.div
      (local.get $190)
      (local.get $193)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $194)
    )
    (local.set $195
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $196
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $197
     (f64.div
      (local.get $195)
      (local.get $196)
     )
    )
    (f64.store offset=48
     (local.get $3)
     (local.get $197)
    )
    (local.set $198
     (f64.load offset=40
      (local.get $3)
     )
    )
    (local.set $199
     (f64.const 2)
    )
    (local.set $200
     (f64.mul
      (local.get $199)
      (local.get $198)
     )
    )
    (local.set $201
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $202
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $203
     (f64.add
      (local.get $202)
      (local.get $202)
     )
    )
    (local.set $204
     (f64.const 6.123233995736766e-17)
    )
    (local.set $205
     (f64.sub
      (local.get $204)
      (local.get $203)
     )
    )
    (local.set $206
     (f64.neg
      (local.get $205)
     )
    )
    (local.set $207
     (f64.mul
      (local.get $200)
      (local.get $201)
     )
    )
    (local.set $208
     (f64.add
      (local.get $207)
      (local.get $206)
     )
    )
    (f64.store offset=72
     (local.get $3)
     (local.get $208)
    )
    (local.set $209
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $210
     (f64.add
      (local.get $209)
      (local.get $209)
     )
    )
    (local.set $211
     (f64.const 0.7853981633974483)
    )
    (local.set $212
     (f64.sub
      (local.get $211)
      (local.get $210)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $212)
    )
    (local.set $213
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $214
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $215
     (f64.sub
      (local.get $213)
      (local.get $214)
     )
    )
    (local.set $216
     (f64.const 0.7853981633974483)
    )
    (local.set $217
     (f64.sub
      (local.get $216)
      (local.get $215)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $217)
    )
   )
   (local.set $218
    (i32.load offset=36
     (local.get $3)
    )
   )
   (local.set $219
    (i32.const 0)
   )
   (local.set $220
    (local.get $218)
   )
   (local.set $221
    (local.get $219)
   )
   (local.set $222
    (i32.gt_s
     (local.get $220)
     (local.get $221)
    )
   )
   (local.set $223
    (i32.const 1)
   )
   (local.set $224
    (i32.and
     (local.get $222)
     (local.get $223)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $224)
     )
    )
    (local.set $225
     (f64.load offset=88
      (local.get $3)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $225)
    )
    (br $label$1)
   )
   (local.set $226
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $227
    (f64.neg
     (local.get $226)
    )
   )
   (f64.store offset=104
    (local.get $3)
    (local.get $227)
   )
  )
  (local.set $228
   (f64.load offset=104
    (local.get $3)
   )
  )
  (local.set $229
   (i32.const 112)
  )
  (local.set $230
   (i32.add
    (local.get $3)
    (local.get $229)
   )
  )
  (global.set $__stack_pointer
   (local.get $230)
  )
  (return
   (local.get $228)
  )
 )
 (func $asinf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 f32)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f32)
  (local $50 f32)
  (local $51 f32)
  (local $52 f32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f64)
  (local $106 f64)
  (local $107 f32)
  (local $108 f32)
  (local $109 f32)
  (local $110 f64)
  (local $111 f32)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 f32)
  (local $127 f32)
  (local $128 f32)
  (local $129 f32)
  (local $130 i32)
  (local $131 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=40
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=40
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=8
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1065353216)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.set $17
     (i32.const 1065353216)
    )
    (local.set $18
     (local.get $16)
    )
    (local.set $19
     (local.get $17)
    )
    (local.set $20
     (i32.eq
      (local.get $18)
      (local.get $19)
     )
    )
    (local.set $21
     (i32.const 1)
    )
    (local.set $22
     (i32.and
      (local.get $20)
      (local.get $21)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $22)
      )
     )
     (local.set $23
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $24
      (f64.promote_f32
       (local.get $23)
      )
     )
     (local.set $25
      (f64.const 1.5707963267948966)
     )
     (local.set $26
      (f64.mul
       (local.get $24)
       (local.get $25)
      )
     )
     (local.set $27
      (f32.demote_f64
       (local.get $26)
      )
     )
     (f32.store offset=44
      (local.get $3)
      (local.get $27)
     )
     (br $label$1)
    )
    (local.set $28
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $29
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $30
     (f32.sub
      (local.get $28)
      (local.get $29)
     )
    )
    (local.set $31
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $32
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $33
     (f32.sub
      (local.get $31)
      (local.get $32)
     )
    )
    (local.set $34
     (f32.div
      (local.get $30)
      (local.get $33)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $34)
    )
    (br $label$1)
   )
   (local.set $35
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $36
    (i32.const 1056964608)
   )
   (local.set $37
    (local.get $35)
   )
   (local.set $38
    (local.get $36)
   )
   (local.set $39
    (i32.lt_s
     (local.get $37)
     (local.get $38)
    )
   )
   (local.set $40
    (i32.const 1)
   )
   (local.set $41
    (i32.and
     (local.get $39)
     (local.get $40)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $41)
     )
    )
    (local.set $42
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.set $43
     (i32.const 964689920)
    )
    (local.set $44
     (local.get $42)
    )
    (local.set $45
     (local.get $43)
    )
    (local.set $46
     (i32.lt_s
      (local.get $44)
      (local.get $45)
     )
    )
    (local.set $47
     (i32.const 1)
    )
    (local.set $48
     (i32.and
      (local.get $46)
      (local.get $47)
     )
    )
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (local.get $48)
      )
     )
     (local.set $49
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $50
      (f32.const 1000000015047466219876688e6)
     )
     (local.set $51
      (f32.add
       (local.get $50)
       (local.get $49)
      )
     )
     (local.set $52
      (f32.const 1)
     )
     (local.set $53
      (f32.gt
       (local.get $51)
       (local.get $52)
      )
     )
     (local.set $54
      (i32.const 1)
     )
     (local.set $55
      (i32.and
       (local.get $53)
       (local.get $54)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $55)
       )
      )
      (local.set $56
       (f32.load offset=40
        (local.get $3)
       )
      )
      (f32.store offset=44
       (local.get $3)
       (local.get $56)
      )
      (br $label$1)
     )
    )
    (local.set $57
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $58
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $59
     (f32.mul
      (local.get $57)
      (local.get $58)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $59)
    )
    (local.set $60
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $61
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $62
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $63
     (f32.const -0.008656363002955914)
    )
    (local.set $64
     (f32.mul
      (local.get $62)
      (local.get $63)
     )
    )
    (local.set $65
     (f32.const -0.04274342209100723)
    )
    (local.set $66
     (f32.add
      (local.get $64)
      (local.get $65)
     )
    )
    (local.set $67
     (f32.mul
      (local.get $61)
      (local.get $66)
     )
    )
    (local.set $68
     (f32.const 0.16666586697101593)
    )
    (local.set $69
     (f32.add
      (local.get $67)
      (local.get $68)
     )
    )
    (local.set $70
     (f32.mul
      (local.get $60)
      (local.get $69)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $70)
    )
    (local.set $71
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $72
     (f32.const -0.7066296339035034)
    )
    (local.set $73
     (f32.mul
      (local.get $71)
      (local.get $72)
     )
    )
    (local.set $74
     (f32.const 1)
    )
    (local.set $75
     (f32.add
      (local.get $73)
      (local.get $74)
     )
    )
    (f32.store offset=16
     (local.get $3)
     (local.get $75)
    )
    (local.set $76
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $77
     (f32.load offset=16
      (local.get $3)
     )
    )
    (local.set $78
     (f32.div
      (local.get $76)
      (local.get $77)
     )
    )
    (f32.store offset=24
     (local.get $3)
     (local.get $78)
    )
    (local.set $79
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $80
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $81
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $82
     (f32.mul
      (local.get $80)
      (local.get $81)
     )
    )
    (local.set $83
     (f32.add
      (local.get $82)
      (local.get $79)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $83)
    )
    (br $label$1)
   )
   (local.set $84
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $85
    (call $fabsf
     (local.get $84)
    )
   )
   (local.set $86
    (f32.const 1)
   )
   (local.set $87
    (f32.sub
     (local.get $86)
     (local.get $85)
    )
   )
   (f32.store offset=24
    (local.get $3)
    (local.get $87)
   )
   (local.set $88
    (f32.load offset=24
     (local.get $3)
    )
   )
   (local.set $89
    (f32.const 0.5)
   )
   (local.set $90
    (f32.mul
     (local.get $88)
     (local.get $89)
    )
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $90)
   )
   (local.set $91
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $92
    (f32.const -0.008656363002955914)
   )
   (local.set $93
    (f32.mul
     (local.get $91)
     (local.get $92)
    )
   )
   (local.set $94
    (f32.const -0.04274342209100723)
   )
   (local.set $95
    (f32.add
     (local.get $93)
     (local.get $94)
    )
   )
   (local.set $96
    (f32.mul
     (local.get $91)
     (local.get $95)
    )
   )
   (local.set $97
    (f32.const 0.16666586697101593)
   )
   (local.set $98
    (f32.add
     (local.get $96)
     (local.get $97)
    )
   )
   (local.set $99
    (f32.mul
     (local.get $91)
     (local.get $98)
    )
   )
   (f32.store offset=20
    (local.get $3)
    (local.get $99)
   )
   (local.set $100
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $101
    (f32.const -0.7066296339035034)
   )
   (local.set $102
    (f32.mul
     (local.get $100)
     (local.get $101)
    )
   )
   (local.set $103
    (f32.add
     (local.get $102)
     (local.get $86)
    )
   )
   (f32.store offset=16
    (local.get $3)
    (local.get $103)
   )
   (local.set $104
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $105
    (f64.promote_f32
     (local.get $104)
    )
   )
   (local.set $106
    (call $sqrt
     (local.get $105)
    )
   )
   (f64.store offset=32
    (local.get $3)
    (local.get $106)
   )
   (local.set $107
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $108
    (f32.load offset=16
     (local.get $3)
    )
   )
   (local.set $109
    (f32.div
     (local.get $107)
     (local.get $108)
    )
   )
   (f32.store offset=24
    (local.get $3)
    (local.get $109)
   )
   (local.set $110
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $111
    (f32.load offset=24
     (local.get $3)
    )
   )
   (local.set $112
    (f64.promote_f32
     (local.get $111)
    )
   )
   (local.set $113
    (f64.mul
     (local.get $110)
     (local.get $112)
    )
   )
   (local.set $114
    (f64.add
     (local.get $113)
     (local.get $110)
    )
   )
   (local.set $115
    (f64.add
     (local.get $114)
     (local.get $114)
    )
   )
   (local.set $116
    (f64.const 1.5707963267948966)
   )
   (local.set $117
    (f64.sub
     (local.get $116)
     (local.get $115)
    )
   )
   (local.set $118
    (f32.demote_f64
     (local.get $117)
    )
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $118)
   )
   (local.set $119
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $120
    (i32.const 0)
   )
   (local.set $121
    (local.get $119)
   )
   (local.set $122
    (local.get $120)
   )
   (local.set $123
    (i32.gt_s
     (local.get $121)
     (local.get $122)
    )
   )
   (local.set $124
    (i32.const 1)
   )
   (local.set $125
    (i32.and
     (local.get $123)
     (local.get $124)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $125)
     )
    )
    (local.set $126
     (f32.load offset=28
      (local.get $3)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $126)
    )
    (br $label$1)
   )
   (local.set $127
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $128
    (f32.neg
     (local.get $127)
    )
   )
   (f32.store offset=44
    (local.get $3)
    (local.get $128)
   )
  )
  (local.set $129
   (f32.load offset=44
    (local.get $3)
   )
  )
  (local.set $130
   (i32.const 48)
  )
  (local.set $131
   (i32.add
    (local.get $3)
    (local.get $130)
   )
  )
  (global.set $__stack_pointer
   (local.get $131)
  )
  (return
   (local.get $129)
  )
 )
 (func $atan2 (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f64)
  (local $59 f64)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 i32)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 i32)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 i32)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 i32)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 i32)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 f64)
  (local $141 f64)
  (local $142 i32)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 i32)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 i32)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 i32)
  (local $185 i32)
  (local $186 i32)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 i32)
  (local $193 i32)
  (local $194 i32)
  (local $195 i32)
  (local $196 i32)
  (local $197 i32)
  (local $198 i32)
  (local $199 i32)
  (local $200 i32)
  (local $201 i32)
  (local $202 i32)
  (local $203 i32)
  (local $204 i32)
  (local $205 i32)
  (local $206 i32)
  (local $207 i32)
  (local $208 i32)
  (local $209 i32)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 i32)
  (local $217 i32)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 i32)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 i32)
  (local $229 f64)
  (local $230 f64)
  (local $231 f64)
  (local $232 f64)
  (local $233 f64)
  (local $234 i32)
  (local $235 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 80)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f64.store offset=64
   (local.get $4)
   (local.get $0)
  )
  (f64.store offset=56
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=56
    (local.get $4)
   )
  )
  (f64.store offset=8
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $4)
   )
  )
  (i32.store offset=36
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=8
    (local.get $4)
   )
  )
  (i32.store offset=20
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=36
    (local.get $4)
   )
  )
  (local.set $9
   (i32.const 2147483647)
  )
  (local.set $10
   (i32.and
    (local.get $8)
    (local.get $9)
   )
  )
  (i32.store offset=28
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (f64.load offset=64
    (local.get $4)
   )
  )
  (f64.store
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=4
    (local.get $4)
   )
  )
  (i32.store offset=32
   (local.get $4)
   (local.get $12)
  )
  (local.set $13
   (i32.load
    (local.get $4)
   )
  )
  (i32.store offset=16
   (local.get $4)
   (local.get $13)
  )
  (local.set $14
   (i32.load offset=32
    (local.get $4)
   )
  )
  (local.set $15
   (i32.const 2147483647)
  )
  (local.set $16
   (i32.and
    (local.get $14)
    (local.get $15)
   )
  )
  (i32.store offset=24
   (local.get $4)
   (local.get $16)
  )
  (local.set $17
   (i32.load offset=28
    (local.get $4)
   )
  )
  (local.set $18
   (i32.load offset=20
    (local.get $4)
   )
  )
  (local.set $19
   (i32.load offset=20
    (local.get $4)
   )
  )
  (local.set $20
   (i32.const 0)
  )
  (local.set $21
   (i32.sub
    (local.get $20)
    (local.get $19)
   )
  )
  (local.set $22
   (i32.or
    (local.get $18)
    (local.get $21)
   )
  )
  (local.set $23
   (i32.const 31)
  )
  (local.set $24
   (i32.shr_u
    (local.get $22)
    (local.get $23)
   )
  )
  (local.set $25
   (i32.or
    (local.get $17)
    (local.get $24)
   )
  )
  (local.set $26
   (i32.const 2146435072)
  )
  (local.set $27
   (local.get $25)
  )
  (local.set $28
   (local.get $26)
  )
  (local.set $29
   (i32.gt_u
    (local.get $27)
    (local.get $28)
   )
  )
  (local.set $30
   (i32.const 1)
  )
  (local.set $31
   (i32.and
    (local.get $29)
    (local.get $30)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (local.get $31)
     )
     (local.set $32
      (i32.load offset=24
       (local.get $4)
      )
     )
     (local.set $33
      (i32.load offset=16
       (local.get $4)
      )
     )
     (local.set $34
      (i32.load offset=16
       (local.get $4)
      )
     )
     (local.set $35
      (i32.const 0)
     )
     (local.set $36
      (i32.sub
       (local.get $35)
       (local.get $34)
      )
     )
     (local.set $37
      (i32.or
       (local.get $33)
       (local.get $36)
      )
     )
     (local.set $38
      (i32.const 31)
     )
     (local.set $39
      (i32.shr_u
       (local.get $37)
       (local.get $38)
      )
     )
     (local.set $40
      (i32.or
       (local.get $32)
       (local.get $39)
      )
     )
     (local.set $41
      (i32.const 2146435072)
     )
     (local.set $42
      (local.get $40)
     )
     (local.set $43
      (local.get $41)
     )
     (local.set $44
      (i32.gt_u
       (local.get $42)
       (local.get $43)
      )
     )
     (local.set $45
      (i32.const 1)
     )
     (local.set $46
      (i32.and
       (local.get $44)
       (local.get $45)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $46)
      )
     )
    )
    (local.set $47
     (f64.load offset=56
      (local.get $4)
     )
    )
    (local.set $48
     (f64.load offset=64
      (local.get $4)
     )
    )
    (local.set $49
     (f64.add
      (local.get $47)
      (local.get $48)
     )
    )
    (f64.store offset=72
     (local.get $4)
     (local.get $49)
    )
    (br $label$1)
   )
   (local.set $50
    (i32.load offset=36
     (local.get $4)
    )
   )
   (local.set $51
    (i32.const 1072693248)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (local.get $51)
   )
   (local.set $54
    (i32.eq
     (local.get $52)
     (local.get $53)
    )
   )
   (local.set $55
    (i32.const 1)
   )
   (local.set $56
    (i32.and
     (local.get $54)
     (local.get $55)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $56)
     )
    )
    (local.set $57
     (i32.load offset=20
      (local.get $4)
     )
    )
    (br_if $label$4
     (local.get $57)
    )
    (local.set $58
     (f64.load offset=64
      (local.get $4)
     )
    )
    (local.set $59
     (call $atan
      (local.get $58)
     )
    )
    (f64.store offset=72
     (local.get $4)
     (local.get $59)
    )
    (br $label$1)
   )
   (local.set $60
    (i32.load offset=32
     (local.get $4)
    )
   )
   (local.set $61
    (i32.const 31)
   )
   (local.set $62
    (i32.shr_s
     (local.get $60)
     (local.get $61)
    )
   )
   (local.set $63
    (i32.const 1)
   )
   (local.set $64
    (i32.and
     (local.get $62)
     (local.get $63)
    )
   )
   (local.set $65
    (i32.load offset=36
     (local.get $4)
    )
   )
   (local.set $66
    (i32.const 30)
   )
   (local.set $67
    (i32.shr_s
     (local.get $65)
     (local.get $66)
    )
   )
   (local.set $68
    (i32.const 2)
   )
   (local.set $69
    (i32.and
     (local.get $67)
     (local.get $68)
    )
   )
   (local.set $70
    (i32.or
     (local.get $64)
     (local.get $69)
    )
   )
   (i32.store offset=40
    (local.get $4)
    (local.get $70)
   )
   (local.set $71
    (i32.load offset=24
     (local.get $4)
    )
   )
   (local.set $72
    (i32.load offset=16
     (local.get $4)
    )
   )
   (local.set $73
    (i32.or
     (local.get $71)
     (local.get $72)
    )
   )
   (block $label$5
    (br_if $label$5
     (local.get $73)
    )
    (local.set $74
     (i32.load offset=40
      (local.get $4)
     )
    )
    (local.set $75
     (i32.const 3)
    )
    (drop
     (i32.gt_u
      (local.get $74)
      (local.get $75)
     )
    )
    (block $label$6
     (block $label$7
      (block $label$8
       (block $label$9
        (br_table $label$9 $label$9 $label$8 $label$7 $label$6
         (local.get $74)
        )
       )
       (local.set $76
        (f64.load offset=64
         (local.get $4)
        )
       )
       (f64.store offset=72
        (local.get $4)
        (local.get $76)
       )
       (br $label$1)
      )
      (local.set $77
       (i32.const 0)
      )
      (local.set $78
       (f64.load offset=8992
        (local.get $77)
       )
      )
      (local.set $79
       (f64.const 3.141592653589793)
      )
      (local.set $80
       (f64.add
        (local.get $79)
        (local.get $78)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $80)
      )
      (br $label$1)
     )
     (local.set $81
      (i32.const 0)
     )
     (local.set $82
      (f64.load offset=8992
       (local.get $81)
      )
     )
     (local.set $83
      (f64.const -3.141592653589793)
     )
     (local.set $84
      (f64.sub
       (local.get $83)
       (local.get $82)
      )
     )
     (f64.store offset=72
      (local.get $4)
      (local.get $84)
     )
     (br $label$1)
    )
   )
   (local.set $85
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $86
    (i32.load offset=20
     (local.get $4)
    )
   )
   (local.set $87
    (i32.or
     (local.get $85)
     (local.get $86)
    )
   )
   (block $label$10
    (br_if $label$10
     (local.get $87)
    )
    (local.set $88
     (i32.load offset=32
      (local.get $4)
     )
    )
    (local.set $89
     (i32.const 0)
    )
    (local.set $90
     (local.get $88)
    )
    (local.set $91
     (local.get $89)
    )
    (local.set $92
     (i32.lt_s
      (local.get $90)
      (local.get $91)
     )
    )
    (local.set $93
     (i32.const 1)
    )
    (local.set $94
     (i32.and
      (local.get $92)
      (local.get $93)
     )
    )
    (block $label$11
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (local.get $94)
       )
      )
      (local.set $95
       (i32.const 0)
      )
      (local.set $96
       (f64.load offset=8992
        (local.get $95)
       )
      )
      (local.set $97
       (f64.const -1.5707963267948966)
      )
      (local.set $98
       (f64.sub
        (local.get $97)
        (local.get $96)
       )
      )
      (local.set $99
       (local.get $98)
      )
      (br $label$11)
     )
     (local.set $100
      (i32.const 0)
     )
     (local.set $101
      (f64.load offset=8992
       (local.get $100)
      )
     )
     (local.set $102
      (f64.const 1.5707963267948966)
     )
     (local.set $103
      (f64.add
       (local.get $102)
       (local.get $101)
      )
     )
     (local.set $99
      (local.get $103)
     )
    )
    (local.set $104
     (local.get $99)
    )
    (f64.store offset=72
     (local.get $4)
     (local.get $104)
    )
    (br $label$1)
   )
   (local.set $105
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $106
    (i32.const 2146435072)
   )
   (local.set $107
    (local.get $105)
   )
   (local.set $108
    (local.get $106)
   )
   (local.set $109
    (i32.eq
     (local.get $107)
     (local.get $108)
    )
   )
   (local.set $110
    (i32.const 1)
   )
   (local.set $111
    (i32.and
     (local.get $109)
     (local.get $110)
    )
   )
   (block $label$13
    (br_if $label$13
     (i32.eqz
      (local.get $111)
     )
    )
    (local.set $112
     (i32.load offset=24
      (local.get $4)
     )
    )
    (local.set $113
     (i32.const 2146435072)
    )
    (local.set $114
     (local.get $112)
    )
    (local.set $115
     (local.get $113)
    )
    (local.set $116
     (i32.eq
      (local.get $114)
      (local.get $115)
     )
    )
    (local.set $117
     (i32.const 1)
    )
    (local.set $118
     (i32.and
      (local.get $116)
      (local.get $117)
     )
    )
    (block $label$14
     (block $label$15
      (br_if $label$15
       (i32.eqz
        (local.get $118)
       )
      )
      (local.set $119
       (i32.load offset=40
        (local.get $4)
       )
      )
      (local.set $120
       (i32.const 3)
      )
      (drop
       (i32.gt_u
        (local.get $119)
        (local.get $120)
       )
      )
      (block $label$16
       (block $label$17
        (block $label$18
         (block $label$19
          (block $label$20
           (br_table $label$20 $label$19 $label$18 $label$17 $label$16
            (local.get $119)
           )
          )
          (local.set $121
           (i32.const 0)
          )
          (local.set $122
           (f64.load offset=8992
            (local.get $121)
           )
          )
          (local.set $123
           (f64.const 0.7853981633974483)
          )
          (local.set $124
           (f64.add
            (local.get $123)
            (local.get $122)
           )
          )
          (f64.store offset=72
           (local.get $4)
           (local.get $124)
          )
          (br $label$1)
         )
         (local.set $125
          (i32.const 0)
         )
         (local.set $126
          (f64.load offset=8992
           (local.get $125)
          )
         )
         (local.set $127
          (f64.const -0.7853981633974483)
         )
         (local.set $128
          (f64.sub
           (local.get $127)
           (local.get $126)
          )
         )
         (f64.store offset=72
          (local.get $4)
          (local.get $128)
         )
         (br $label$1)
        )
        (local.set $129
         (i32.const 0)
        )
        (local.set $130
         (f64.load offset=8992
          (local.get $129)
         )
        )
        (local.set $131
         (f64.const 2.356194490192345)
        )
        (local.set $132
         (f64.add
          (local.get $131)
          (local.get $130)
         )
        )
        (f64.store offset=72
         (local.get $4)
         (local.get $132)
        )
        (br $label$1)
       )
       (local.set $133
        (i32.const 0)
       )
       (local.set $134
        (f64.load offset=8992
         (local.get $133)
        )
       )
       (local.set $135
        (f64.const -2.356194490192345)
       )
       (local.set $136
        (f64.sub
         (local.get $135)
         (local.get $134)
        )
       )
       (f64.store offset=72
        (local.get $4)
        (local.get $136)
       )
       (br $label$1)
      )
      (br $label$14)
     )
     (local.set $137
      (i32.load offset=40
       (local.get $4)
      )
     )
     (local.set $138
      (i32.const 3)
     )
     (drop
      (i32.gt_u
       (local.get $137)
       (local.get $138)
      )
     )
     (block $label$21
      (block $label$22
       (block $label$23
        (block $label$24
         (block $label$25
          (br_table $label$25 $label$24 $label$23 $label$22 $label$21
           (local.get $137)
          )
         )
         (local.set $139
          (i32.const 0)
         )
         (local.set $140
          (f64.convert_i32_s
           (local.get $139)
          )
         )
         (f64.store offset=72
          (local.get $4)
          (local.get $140)
         )
         (br $label$1)
        )
        (local.set $141
         (f64.const -0)
        )
        (f64.store offset=72
         (local.get $4)
         (local.get $141)
        )
        (br $label$1)
       )
       (local.set $142
        (i32.const 0)
       )
       (local.set $143
        (f64.load offset=8992
         (local.get $142)
        )
       )
       (local.set $144
        (f64.const 3.141592653589793)
       )
       (local.set $145
        (f64.add
         (local.get $144)
         (local.get $143)
        )
       )
       (f64.store offset=72
        (local.get $4)
        (local.get $145)
       )
       (br $label$1)
      )
      (local.set $146
       (i32.const 0)
      )
      (local.set $147
       (f64.load offset=8992
        (local.get $146)
       )
      )
      (local.set $148
       (f64.const -3.141592653589793)
      )
      (local.set $149
       (f64.sub
        (local.get $148)
        (local.get $147)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $149)
      )
      (br $label$1)
     )
    )
   )
   (local.set $150
    (i32.load offset=24
     (local.get $4)
    )
   )
   (local.set $151
    (i32.const 2146435072)
   )
   (local.set $152
    (local.get $150)
   )
   (local.set $153
    (local.get $151)
   )
   (local.set $154
    (i32.eq
     (local.get $152)
     (local.get $153)
    )
   )
   (local.set $155
    (i32.const 1)
   )
   (local.set $156
    (i32.and
     (local.get $154)
     (local.get $155)
    )
   )
   (block $label$26
    (br_if $label$26
     (i32.eqz
      (local.get $156)
     )
    )
    (local.set $157
     (i32.load offset=32
      (local.get $4)
     )
    )
    (local.set $158
     (i32.const 0)
    )
    (local.set $159
     (local.get $157)
    )
    (local.set $160
     (local.get $158)
    )
    (local.set $161
     (i32.lt_s
      (local.get $159)
      (local.get $160)
     )
    )
    (local.set $162
     (i32.const 1)
    )
    (local.set $163
     (i32.and
      (local.get $161)
      (local.get $162)
     )
    )
    (block $label$27
     (block $label$28
      (br_if $label$28
       (i32.eqz
        (local.get $163)
       )
      )
      (local.set $164
       (i32.const 0)
      )
      (local.set $165
       (f64.load offset=8992
        (local.get $164)
       )
      )
      (local.set $166
       (f64.const -1.5707963267948966)
      )
      (local.set $167
       (f64.sub
        (local.get $166)
        (local.get $165)
       )
      )
      (local.set $168
       (local.get $167)
      )
      (br $label$27)
     )
     (local.set $169
      (i32.const 0)
     )
     (local.set $170
      (f64.load offset=8992
       (local.get $169)
      )
     )
     (local.set $171
      (f64.const 1.5707963267948966)
     )
     (local.set $172
      (f64.add
       (local.get $171)
       (local.get $170)
      )
     )
     (local.set $168
      (local.get $172)
     )
    )
    (local.set $173
     (local.get $168)
    )
    (f64.store offset=72
     (local.get $4)
     (local.get $173)
    )
    (br $label$1)
   )
   (local.set $174
    (i32.load offset=24
     (local.get $4)
    )
   )
   (local.set $175
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $176
    (i32.sub
     (local.get $174)
     (local.get $175)
    )
   )
   (local.set $177
    (i32.const 20)
   )
   (local.set $178
    (i32.shr_s
     (local.get $176)
     (local.get $177)
    )
   )
   (i32.store offset=44
    (local.get $4)
    (local.get $178)
   )
   (local.set $179
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $180
    (i32.const 60)
   )
   (local.set $181
    (local.get $179)
   )
   (local.set $182
    (local.get $180)
   )
   (local.set $183
    (i32.gt_s
     (local.get $181)
     (local.get $182)
    )
   )
   (local.set $184
    (i32.const 1)
   )
   (local.set $185
    (i32.and
     (local.get $183)
     (local.get $184)
    )
   )
   (block $label$29
    (block $label$30
     (br_if $label$30
      (i32.eqz
       (local.get $185)
      )
     )
     (local.set $186
      (i32.const 0)
     )
     (local.set $187
      (f64.load offset=9000
       (local.get $186)
      )
     )
     (local.set $188
      (f64.const 0.5)
     )
     (local.set $189
      (f64.mul
       (local.get $187)
       (local.get $188)
      )
     )
     (local.set $190
      (f64.const 1.5707963267948966)
     )
     (local.set $191
      (f64.add
       (local.get $189)
       (local.get $190)
      )
     )
     (f64.store offset=48
      (local.get $4)
      (local.get $191)
     )
     (local.set $192
      (i32.load offset=40
       (local.get $4)
      )
     )
     (local.set $193
      (i32.const 1)
     )
     (local.set $194
      (i32.and
       (local.get $192)
       (local.get $193)
      )
     )
     (i32.store offset=40
      (local.get $4)
      (local.get $194)
     )
     (br $label$29)
    )
    (local.set $195
     (i32.load offset=36
      (local.get $4)
     )
    )
    (local.set $196
     (i32.const 0)
    )
    (local.set $197
     (local.get $195)
    )
    (local.set $198
     (local.get $196)
    )
    (local.set $199
     (i32.lt_s
      (local.get $197)
      (local.get $198)
     )
    )
    (local.set $200
     (i32.const 1)
    )
    (local.set $201
     (i32.and
      (local.get $199)
      (local.get $200)
     )
    )
    (block $label$31
     (block $label$32
      (br_if $label$32
       (i32.eqz
        (local.get $201)
       )
      )
      (local.set $202
       (i32.load offset=44
        (local.get $4)
       )
      )
      (local.set $203
       (i32.const -60)
      )
      (local.set $204
       (local.get $202)
      )
      (local.set $205
       (local.get $203)
      )
      (local.set $206
       (i32.lt_s
        (local.get $204)
        (local.get $205)
       )
      )
      (local.set $207
       (i32.const 1)
      )
      (local.set $208
       (i32.and
        (local.get $206)
        (local.get $207)
       )
      )
      (br_if $label$32
       (i32.eqz
        (local.get $208)
       )
      )
      (local.set $209
       (i32.const 0)
      )
      (local.set $210
       (f64.convert_i32_s
        (local.get $209)
       )
      )
      (f64.store offset=48
       (local.get $4)
       (local.get $210)
      )
      (br $label$31)
     )
     (local.set $211
      (f64.load offset=64
       (local.get $4)
      )
     )
     (local.set $212
      (f64.load offset=56
       (local.get $4)
      )
     )
     (local.set $213
      (f64.div
       (local.get $211)
       (local.get $212)
      )
     )
     (local.set $214
      (call $fabs
       (local.get $213)
      )
     )
     (local.set $215
      (call $atan
       (local.get $214)
      )
     )
     (f64.store offset=48
      (local.get $4)
      (local.get $215)
     )
    )
   )
   (local.set $216
    (i32.load offset=40
     (local.get $4)
    )
   )
   (local.set $217
    (i32.const 2)
   )
   (drop
    (i32.gt_u
     (local.get $216)
     (local.get $217)
    )
   )
   (block $label$33
    (block $label$34
     (block $label$35
      (block $label$36
       (br_table $label$36 $label$35 $label$34 $label$33
        (local.get $216)
       )
      )
      (local.set $218
       (f64.load offset=48
        (local.get $4)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $218)
      )
      (br $label$1)
     )
     (local.set $219
      (f64.load offset=48
       (local.get $4)
      )
     )
     (local.set $220
      (f64.neg
       (local.get $219)
      )
     )
     (f64.store offset=72
      (local.get $4)
      (local.get $220)
     )
     (br $label$1)
    )
    (local.set $221
     (f64.load offset=48
      (local.get $4)
     )
    )
    (local.set $222
     (i32.const 0)
    )
    (local.set $223
     (f64.load offset=9000
      (local.get $222)
     )
    )
    (local.set $224
     (f64.sub
      (local.get $221)
      (local.get $223)
     )
    )
    (local.set $225
     (f64.const 3.141592653589793)
    )
    (local.set $226
     (f64.sub
      (local.get $225)
      (local.get $224)
     )
    )
    (f64.store offset=72
     (local.get $4)
     (local.get $226)
    )
    (br $label$1)
   )
   (local.set $227
    (f64.load offset=48
     (local.get $4)
    )
   )
   (local.set $228
    (i32.const 0)
   )
   (local.set $229
    (f64.load offset=9000
     (local.get $228)
    )
   )
   (local.set $230
    (f64.sub
     (local.get $227)
     (local.get $229)
    )
   )
   (local.set $231
    (f64.const 3.141592653589793)
   )
   (local.set $232
    (f64.sub
     (local.get $230)
     (local.get $231)
    )
   )
   (f64.store offset=72
    (local.get $4)
    (local.get $232)
   )
  )
  (local.set $233
   (f64.load offset=72
    (local.get $4)
   )
  )
  (local.set $234
   (i32.const 80)
  )
  (local.set $235
   (i32.add
    (local.get $4)
    (local.get $234)
   )
  )
  (global.set $__stack_pointer
   (local.get $235)
  )
  (return
   (local.get $233)
  )
 )
 (func $atan2f (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 f32)
  (local $40 f32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 f32)
  (local $56 i32)
  (local $57 f32)
  (local $58 f32)
  (local $59 f32)
  (local $60 i32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 i32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 i32)
  (local $107 f32)
  (local $108 f32)
  (local $109 f32)
  (local $110 i32)
  (local $111 f32)
  (local $112 f32)
  (local $113 f32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 f32)
  (local $118 f32)
  (local $119 i32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 i32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 i32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 i32)
  (local $185 i32)
  (local $186 i32)
  (local $187 f32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 i32)
  (local $194 i32)
  (local $195 f32)
  (local $196 f32)
  (local $197 f32)
  (local $198 f32)
  (local $199 i32)
  (local $200 f32)
  (local $201 f32)
  (local $202 f32)
  (local $203 f32)
  (local $204 f32)
  (local $205 i32)
  (local $206 f32)
  (local $207 f32)
  (local $208 f32)
  (local $209 f32)
  (local $210 f32)
  (local $211 i32)
  (local $212 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 64)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f32.store offset=56
   (local.get $4)
   (local.get $0)
  )
  (f32.store offset=52
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=52
    (local.get $4)
   )
  )
  (f32.store offset=16
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $4)
   )
  )
  (i32.store offset=36
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=36
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=28
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (f32.load offset=56
    (local.get $4)
   )
  )
  (f32.store offset=8
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=8
    (local.get $4)
   )
  )
  (i32.store offset=32
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=32
    (local.get $4)
   )
  )
  (local.set $13
   (i32.const 2147483647)
  )
  (local.set $14
   (i32.and
    (local.get $12)
    (local.get $13)
   )
  )
  (i32.store offset=24
   (local.get $4)
   (local.get $14)
  )
  (local.set $15
   (i32.load offset=28
    (local.get $4)
   )
  )
  (local.set $16
   (i32.const 2139095040)
  )
  (local.set $17
   (local.get $15)
  )
  (local.set $18
   (local.get $16)
  )
  (local.set $19
   (i32.gt_s
    (local.get $17)
    (local.get $18)
   )
  )
  (local.set $20
   (i32.const 1)
  )
  (local.set $21
   (i32.and
    (local.get $19)
    (local.get $20)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (local.get $21)
     )
     (local.set $22
      (i32.load offset=24
       (local.get $4)
      )
     )
     (local.set $23
      (i32.const 2139095040)
     )
     (local.set $24
      (local.get $22)
     )
     (local.set $25
      (local.get $23)
     )
     (local.set $26
      (i32.gt_s
       (local.get $24)
       (local.get $25)
      )
     )
     (local.set $27
      (i32.const 1)
     )
     (local.set $28
      (i32.and
       (local.get $26)
       (local.get $27)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $28)
      )
     )
    )
    (local.set $29
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $30
     (f32.load offset=56
      (local.get $4)
     )
    )
    (local.set $31
     (f32.add
      (local.get $29)
      (local.get $30)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $31)
    )
    (br $label$1)
   )
   (local.set $32
    (i32.load offset=36
     (local.get $4)
    )
   )
   (local.set $33
    (i32.const 1065353216)
   )
   (local.set $34
    (local.get $32)
   )
   (local.set $35
    (local.get $33)
   )
   (local.set $36
    (i32.eq
     (local.get $34)
     (local.get $35)
    )
   )
   (local.set $37
    (i32.const 1)
   )
   (local.set $38
    (i32.and
     (local.get $36)
     (local.get $37)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $38)
     )
    )
    (local.set $39
     (f32.load offset=56
      (local.get $4)
     )
    )
    (local.set $40
     (call $atanf
      (local.get $39)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $40)
    )
    (br $label$1)
   )
   (local.set $41
    (i32.load offset=32
     (local.get $4)
    )
   )
   (local.set $42
    (i32.const 31)
   )
   (local.set $43
    (i32.shr_s
     (local.get $41)
     (local.get $42)
    )
   )
   (local.set $44
    (i32.const 1)
   )
   (local.set $45
    (i32.and
     (local.get $43)
     (local.get $44)
    )
   )
   (local.set $46
    (i32.load offset=36
     (local.get $4)
    )
   )
   (local.set $47
    (i32.const 30)
   )
   (local.set $48
    (i32.shr_s
     (local.get $46)
     (local.get $47)
    )
   )
   (local.set $49
    (i32.const 2)
   )
   (local.set $50
    (i32.and
     (local.get $48)
     (local.get $49)
    )
   )
   (local.set $51
    (i32.or
     (local.get $45)
     (local.get $50)
    )
   )
   (i32.store offset=40
    (local.get $4)
    (local.get $51)
   )
   (local.set $52
    (i32.load offset=24
     (local.get $4)
    )
   )
   (block $label$5
    (br_if $label$5
     (local.get $52)
    )
    (local.set $53
     (i32.load offset=40
      (local.get $4)
     )
    )
    (local.set $54
     (i32.const 3)
    )
    (drop
     (i32.gt_u
      (local.get $53)
      (local.get $54)
     )
    )
    (block $label$6
     (block $label$7
      (block $label$8
       (block $label$9
        (br_table $label$9 $label$9 $label$8 $label$7 $label$6
         (local.get $53)
        )
       )
       (local.set $55
        (f32.load offset=56
         (local.get $4)
        )
       )
       (f32.store offset=60
        (local.get $4)
        (local.get $55)
       )
       (br $label$1)
      )
      (local.set $56
       (i32.const 0)
      )
      (local.set $57
       (f32.load offset=9008
        (local.get $56)
       )
      )
      (local.set $58
       (f32.const 3.1415927410125732)
      )
      (local.set $59
       (f32.add
        (local.get $58)
        (local.get $57)
       )
      )
      (f32.store offset=60
       (local.get $4)
       (local.get $59)
      )
      (br $label$1)
     )
     (local.set $60
      (i32.const 0)
     )
     (local.set $61
      (f32.load offset=9008
       (local.get $60)
      )
     )
     (local.set $62
      (f32.const -3.1415927410125732)
     )
     (local.set $63
      (f32.sub
       (local.get $62)
       (local.get $61)
      )
     )
     (f32.store offset=60
      (local.get $4)
      (local.get $63)
     )
     (br $label$1)
    )
   )
   (local.set $64
    (i32.load offset=28
     (local.get $4)
    )
   )
   (block $label$10
    (br_if $label$10
     (local.get $64)
    )
    (local.set $65
     (i32.load offset=32
      (local.get $4)
     )
    )
    (local.set $66
     (i32.const 0)
    )
    (local.set $67
     (local.get $65)
    )
    (local.set $68
     (local.get $66)
    )
    (local.set $69
     (i32.lt_s
      (local.get $67)
      (local.get $68)
     )
    )
    (local.set $70
     (i32.const 1)
    )
    (local.set $71
     (i32.and
      (local.get $69)
      (local.get $70)
     )
    )
    (block $label$11
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (local.get $71)
       )
      )
      (local.set $72
       (i32.const 0)
      )
      (local.set $73
       (f32.load offset=9008
        (local.get $72)
       )
      )
      (local.set $74
       (f32.const -1.5707963705062866)
      )
      (local.set $75
       (f32.sub
        (local.get $74)
        (local.get $73)
       )
      )
      (local.set $76
       (local.get $75)
      )
      (br $label$11)
     )
     (local.set $77
      (i32.const 0)
     )
     (local.set $78
      (f32.load offset=9008
       (local.get $77)
      )
     )
     (local.set $79
      (f32.const 1.5707963705062866)
     )
     (local.set $80
      (f32.add
       (local.get $79)
       (local.get $78)
      )
     )
     (local.set $76
      (local.get $80)
     )
    )
    (local.set $81
     (local.get $76)
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $81)
    )
    (br $label$1)
   )
   (local.set $82
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $83
    (i32.const 2139095040)
   )
   (local.set $84
    (local.get $82)
   )
   (local.set $85
    (local.get $83)
   )
   (local.set $86
    (i32.eq
     (local.get $84)
     (local.get $85)
    )
   )
   (local.set $87
    (i32.const 1)
   )
   (local.set $88
    (i32.and
     (local.get $86)
     (local.get $87)
    )
   )
   (block $label$13
    (br_if $label$13
     (i32.eqz
      (local.get $88)
     )
    )
    (local.set $89
     (i32.load offset=24
      (local.get $4)
     )
    )
    (local.set $90
     (i32.const 2139095040)
    )
    (local.set $91
     (local.get $89)
    )
    (local.set $92
     (local.get $90)
    )
    (local.set $93
     (i32.eq
      (local.get $91)
      (local.get $92)
     )
    )
    (local.set $94
     (i32.const 1)
    )
    (local.set $95
     (i32.and
      (local.get $93)
      (local.get $94)
     )
    )
    (block $label$14
     (block $label$15
      (br_if $label$15
       (i32.eqz
        (local.get $95)
       )
      )
      (local.set $96
       (i32.load offset=40
        (local.get $4)
       )
      )
      (local.set $97
       (i32.const 3)
      )
      (drop
       (i32.gt_u
        (local.get $96)
        (local.get $97)
       )
      )
      (block $label$16
       (block $label$17
        (block $label$18
         (block $label$19
          (block $label$20
           (br_table $label$20 $label$19 $label$18 $label$17 $label$16
            (local.get $96)
           )
          )
          (local.set $98
           (i32.const 0)
          )
          (local.set $99
           (f32.load offset=9008
            (local.get $98)
           )
          )
          (local.set $100
           (f32.const 0.7853981852531433)
          )
          (local.set $101
           (f32.add
            (local.get $100)
            (local.get $99)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $101)
          )
          (br $label$1)
         )
         (local.set $102
          (i32.const 0)
         )
         (local.set $103
          (f32.load offset=9008
           (local.get $102)
          )
         )
         (local.set $104
          (f32.const -0.7853981852531433)
         )
         (local.set $105
          (f32.sub
           (local.get $104)
           (local.get $103)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $105)
         )
         (br $label$1)
        )
        (local.set $106
         (i32.const 0)
        )
        (local.set $107
         (f32.load offset=9008
          (local.get $106)
         )
        )
        (local.set $108
         (f32.const 2.356194496154785)
        )
        (local.set $109
         (f32.add
          (local.get $108)
          (local.get $107)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $109)
        )
        (br $label$1)
       )
       (local.set $110
        (i32.const 0)
       )
       (local.set $111
        (f32.load offset=9008
         (local.get $110)
        )
       )
       (local.set $112
        (f32.const -2.356194496154785)
       )
       (local.set $113
        (f32.sub
         (local.get $112)
         (local.get $111)
        )
       )
       (f32.store offset=60
        (local.get $4)
        (local.get $113)
       )
       (br $label$1)
      )
      (br $label$14)
     )
     (local.set $114
      (i32.load offset=40
       (local.get $4)
      )
     )
     (local.set $115
      (i32.const 3)
     )
     (drop
      (i32.gt_u
       (local.get $114)
       (local.get $115)
      )
     )
     (block $label$21
      (block $label$22
       (block $label$23
        (block $label$24
         (block $label$25
          (br_table $label$25 $label$24 $label$23 $label$22 $label$21
           (local.get $114)
          )
         )
         (local.set $116
          (i32.const 0)
         )
         (local.set $117
          (f32.convert_i32_s
           (local.get $116)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $117)
         )
         (br $label$1)
        )
        (local.set $118
         (f32.const -0)
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $118)
        )
        (br $label$1)
       )
       (local.set $119
        (i32.const 0)
       )
       (local.set $120
        (f32.load offset=9008
         (local.get $119)
        )
       )
       (local.set $121
        (f32.const 3.1415927410125732)
       )
       (local.set $122
        (f32.add
         (local.get $121)
         (local.get $120)
        )
       )
       (f32.store offset=60
        (local.get $4)
        (local.get $122)
       )
       (br $label$1)
      )
      (local.set $123
       (i32.const 0)
      )
      (local.set $124
       (f32.load offset=9008
        (local.get $123)
       )
      )
      (local.set $125
       (f32.const -3.1415927410125732)
      )
      (local.set $126
       (f32.sub
        (local.get $125)
        (local.get $124)
       )
      )
      (f32.store offset=60
       (local.get $4)
       (local.get $126)
      )
      (br $label$1)
     )
    )
   )
   (local.set $127
    (i32.load offset=24
     (local.get $4)
    )
   )
   (local.set $128
    (i32.const 2139095040)
   )
   (local.set $129
    (local.get $127)
   )
   (local.set $130
    (local.get $128)
   )
   (local.set $131
    (i32.eq
     (local.get $129)
     (local.get $130)
    )
   )
   (local.set $132
    (i32.const 1)
   )
   (local.set $133
    (i32.and
     (local.get $131)
     (local.get $132)
    )
   )
   (block $label$26
    (br_if $label$26
     (i32.eqz
      (local.get $133)
     )
    )
    (local.set $134
     (i32.load offset=32
      (local.get $4)
     )
    )
    (local.set $135
     (i32.const 0)
    )
    (local.set $136
     (local.get $134)
    )
    (local.set $137
     (local.get $135)
    )
    (local.set $138
     (i32.lt_s
      (local.get $136)
      (local.get $137)
     )
    )
    (local.set $139
     (i32.const 1)
    )
    (local.set $140
     (i32.and
      (local.get $138)
      (local.get $139)
     )
    )
    (block $label$27
     (block $label$28
      (br_if $label$28
       (i32.eqz
        (local.get $140)
       )
      )
      (local.set $141
       (i32.const 0)
      )
      (local.set $142
       (f32.load offset=9008
        (local.get $141)
       )
      )
      (local.set $143
       (f32.const -1.5707963705062866)
      )
      (local.set $144
       (f32.sub
        (local.get $143)
        (local.get $142)
       )
      )
      (local.set $145
       (local.get $144)
      )
      (br $label$27)
     )
     (local.set $146
      (i32.const 0)
     )
     (local.set $147
      (f32.load offset=9008
       (local.get $146)
      )
     )
     (local.set $148
      (f32.const 1.5707963705062866)
     )
     (local.set $149
      (f32.add
       (local.get $148)
       (local.get $147)
      )
     )
     (local.set $145
      (local.get $149)
     )
    )
    (local.set $150
     (local.get $145)
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $150)
    )
    (br $label$1)
   )
   (local.set $151
    (i32.load offset=24
     (local.get $4)
    )
   )
   (local.set $152
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $153
    (i32.sub
     (local.get $151)
     (local.get $152)
    )
   )
   (local.set $154
    (i32.const 23)
   )
   (local.set $155
    (i32.shr_s
     (local.get $153)
     (local.get $154)
    )
   )
   (i32.store offset=44
    (local.get $4)
    (local.get $155)
   )
   (local.set $156
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $157
    (i32.const 26)
   )
   (local.set $158
    (local.get $156)
   )
   (local.set $159
    (local.get $157)
   )
   (local.set $160
    (i32.gt_s
     (local.get $158)
     (local.get $159)
    )
   )
   (local.set $161
    (i32.const 1)
   )
   (local.set $162
    (i32.and
     (local.get $160)
     (local.get $161)
    )
   )
   (block $label$29
    (block $label$30
     (br_if $label$30
      (i32.eqz
       (local.get $162)
      )
     )
     (local.set $163
      (i32.const 0)
     )
     (local.set $164
      (f32.load offset=9012
       (local.get $163)
      )
     )
     (local.set $165
      (f32.const 0.5)
     )
     (local.set $166
      (f32.mul
       (local.get $164)
       (local.get $165)
      )
     )
     (local.set $167
      (f32.const 1.5707963705062866)
     )
     (local.set $168
      (f32.add
       (local.get $166)
       (local.get $167)
      )
     )
     (f32.store offset=48
      (local.get $4)
      (local.get $168)
     )
     (local.set $169
      (i32.load offset=40
       (local.get $4)
      )
     )
     (local.set $170
      (i32.const 1)
     )
     (local.set $171
      (i32.and
       (local.get $169)
       (local.get $170)
      )
     )
     (i32.store offset=40
      (local.get $4)
      (local.get $171)
     )
     (br $label$29)
    )
    (local.set $172
     (i32.load offset=44
      (local.get $4)
     )
    )
    (local.set $173
     (i32.const -26)
    )
    (local.set $174
     (local.get $172)
    )
    (local.set $175
     (local.get $173)
    )
    (local.set $176
     (i32.lt_s
      (local.get $174)
      (local.get $175)
     )
    )
    (local.set $177
     (i32.const 1)
    )
    (local.set $178
     (i32.and
      (local.get $176)
      (local.get $177)
     )
    )
    (block $label$31
     (block $label$32
      (br_if $label$32
       (i32.eqz
        (local.get $178)
       )
      )
      (local.set $179
       (i32.load offset=36
        (local.get $4)
       )
      )
      (local.set $180
       (i32.const 0)
      )
      (local.set $181
       (local.get $179)
      )
      (local.set $182
       (local.get $180)
      )
      (local.set $183
       (i32.lt_s
        (local.get $181)
        (local.get $182)
       )
      )
      (local.set $184
       (i32.const 1)
      )
      (local.set $185
       (i32.and
        (local.get $183)
        (local.get $184)
       )
      )
      (br_if $label$32
       (i32.eqz
        (local.get $185)
       )
      )
      (local.set $186
       (i32.const 0)
      )
      (local.set $187
       (f32.convert_i32_s
        (local.get $186)
       )
      )
      (f32.store offset=48
       (local.get $4)
       (local.get $187)
      )
      (br $label$31)
     )
     (local.set $188
      (f32.load offset=56
       (local.get $4)
      )
     )
     (local.set $189
      (f32.load offset=52
       (local.get $4)
      )
     )
     (local.set $190
      (f32.div
       (local.get $188)
       (local.get $189)
      )
     )
     (local.set $191
      (call $fabsf
       (local.get $190)
      )
     )
     (local.set $192
      (call $atanf
       (local.get $191)
      )
     )
     (f32.store offset=48
      (local.get $4)
      (local.get $192)
     )
    )
   )
   (local.set $193
    (i32.load offset=40
     (local.get $4)
    )
   )
   (local.set $194
    (i32.const 2)
   )
   (drop
    (i32.gt_u
     (local.get $193)
     (local.get $194)
    )
   )
   (block $label$33
    (block $label$34
     (block $label$35
      (block $label$36
       (br_table $label$36 $label$35 $label$34 $label$33
        (local.get $193)
       )
      )
      (local.set $195
       (f32.load offset=48
        (local.get $4)
       )
      )
      (f32.store offset=60
       (local.get $4)
       (local.get $195)
      )
      (br $label$1)
     )
     (local.set $196
      (f32.load offset=48
       (local.get $4)
      )
     )
     (local.set $197
      (f32.neg
       (local.get $196)
      )
     )
     (f32.store offset=60
      (local.get $4)
      (local.get $197)
     )
     (br $label$1)
    )
    (local.set $198
     (f32.load offset=48
      (local.get $4)
     )
    )
    (local.set $199
     (i32.const 0)
    )
    (local.set $200
     (f32.load offset=9012
      (local.get $199)
     )
    )
    (local.set $201
     (f32.sub
      (local.get $198)
      (local.get $200)
     )
    )
    (local.set $202
     (f32.const 3.1415927410125732)
    )
    (local.set $203
     (f32.sub
      (local.get $202)
      (local.get $201)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $203)
    )
    (br $label$1)
   )
   (local.set $204
    (f32.load offset=48
     (local.get $4)
    )
   )
   (local.set $205
    (i32.const 0)
   )
   (local.set $206
    (f32.load offset=9012
     (local.get $205)
    )
   )
   (local.set $207
    (f32.sub
     (local.get $204)
     (local.get $206)
    )
   )
   (local.set $208
    (f32.const 3.1415927410125732)
   )
   (local.set $209
    (f32.sub
     (local.get $207)
     (local.get $208)
    )
   )
   (f32.store offset=60
    (local.get $4)
    (local.get $209)
   )
  )
  (local.set $210
   (f32.load offset=60
    (local.get $4)
   )
  )
  (local.set $211
   (i32.const 64)
  )
  (local.set $212
   (i32.add
    (local.get $4)
    (local.get $211)
   )
  )
  (global.set $__stack_pointer
   (local.get $212)
  )
  (return
   (local.get $210)
  )
 )
 (func $atanh (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 f64)
  (local $40 i32)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 f64)
  (local $51 f64)
  (local $52 f64)
  (local $53 i32)
  (local $54 f64)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f64)
  (local $59 f64)
  (local $60 i32)
  (local $61 f64)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 i32)
  (local $106 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=48
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=48
    (local.get $3)
   )
  )
  (f64.store offset=16
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=20
    (local.get $3)
   )
  )
  (i32.store offset=36
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $3)
   )
  )
  (i32.store offset=28
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=36
    (local.get $3)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=32
   (local.get $3)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=32
    (local.get $3)
   )
  )
  (local.set $11
   (i32.load offset=28
    (local.get $3)
   )
  )
  (local.set $12
   (i32.load offset=28
    (local.get $3)
   )
  )
  (local.set $13
   (i32.const 0)
  )
  (local.set $14
   (i32.sub
    (local.get $13)
    (local.get $12)
   )
  )
  (local.set $15
   (i32.or
    (local.get $11)
    (local.get $14)
   )
  )
  (local.set $16
   (i32.const 31)
  )
  (local.set $17
   (i32.shr_u
    (local.get $15)
    (local.get $16)
   )
  )
  (local.set $18
   (i32.or
    (local.get $10)
    (local.get $17)
   )
  )
  (local.set $19
   (i32.const 1072693248)
  )
  (local.set $20
   (local.get $18)
  )
  (local.set $21
   (local.get $19)
  )
  (local.set $22
   (i32.gt_u
    (local.get $20)
    (local.get $21)
   )
  )
  (local.set $23
   (i32.const 1)
  )
  (local.set $24
   (i32.and
    (local.get $22)
    (local.get $23)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $24)
     )
    )
    (local.set $25
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $26
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $27
     (f64.sub
      (local.get $25)
      (local.get $26)
     )
    )
    (local.set $28
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $29
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $30
     (f64.sub
      (local.get $28)
      (local.get $29)
     )
    )
    (local.set $31
     (f64.div
      (local.get $27)
      (local.get $30)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $31)
    )
    (br $label$1)
   )
   (local.set $32
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $33
    (i32.const 1072693248)
   )
   (local.set $34
    (local.get $32)
   )
   (local.set $35
    (local.get $33)
   )
   (local.set $36
    (i32.eq
     (local.get $34)
     (local.get $35)
    )
   )
   (local.set $37
    (i32.const 1)
   )
   (local.set $38
    (i32.and
     (local.get $36)
     (local.get $37)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $38)
     )
    )
    (local.set $39
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $40
     (i32.const 0)
    )
    (local.set $41
     (f64.convert_i32_s
      (local.get $40)
     )
    )
    (local.set $42
     (f64.div
      (local.get $39)
      (local.get $41)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $42)
    )
    (br $label$1)
   )
   (local.set $43
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $44
    (i32.const 1043333120)
   )
   (local.set $45
    (local.get $43)
   )
   (local.set $46
    (local.get $44)
   )
   (local.set $47
    (i32.lt_s
     (local.get $45)
     (local.get $46)
    )
   )
   (local.set $48
    (i32.const 1)
   )
   (local.set $49
    (i32.and
     (local.get $47)
     (local.get $48)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $49)
     )
    )
    (local.set $50
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $51
     (f64.const 1.e+300)
    )
    (local.set $52
     (f64.add
      (local.get $51)
      (local.get $50)
     )
    )
    (local.set $53
     (i32.const 0)
    )
    (local.set $54
     (f64.convert_i32_s
      (local.get $53)
     )
    )
    (local.set $55
     (f64.gt
      (local.get $52)
      (local.get $54)
     )
    )
    (local.set $56
     (i32.const 1)
    )
    (local.set $57
     (i32.and
      (local.get $55)
      (local.get $56)
     )
    )
    (br_if $label$4
     (i32.eqz
      (local.get $57)
     )
    )
    (local.set $58
     (f64.load offset=48
      (local.get $3)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $58)
    )
    (br $label$1)
   )
   (local.set $59
    (f64.load offset=48
     (local.get $3)
    )
   )
   (f64.store offset=8
    (local.get $3)
    (local.get $59)
   )
   (local.set $60
    (i32.load offset=32
     (local.get $3)
    )
   )
   (i32.store offset=12
    (local.get $3)
    (local.get $60)
   )
   (local.set $61
    (f64.load offset=8
     (local.get $3)
    )
   )
   (f64.store offset=48
    (local.get $3)
    (local.get $61)
   )
   (local.set $62
    (i32.load offset=32
     (local.get $3)
    )
   )
   (local.set $63
    (i32.const 1071644672)
   )
   (local.set $64
    (local.get $62)
   )
   (local.set $65
    (local.get $63)
   )
   (local.set $66
    (i32.lt_s
     (local.get $64)
     (local.get $65)
    )
   )
   (local.set $67
    (i32.const 1)
   )
   (local.set $68
    (i32.and
     (local.get $66)
     (local.get $67)
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $68)
      )
     )
     (local.set $69
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $70
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $71
      (f64.add
       (local.get $69)
       (local.get $70)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $71)
     )
     (local.set $72
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $73
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $74
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $75
      (f64.mul
       (local.get $73)
       (local.get $74)
      )
     )
     (local.set $76
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $77
      (f64.const 1)
     )
     (local.set $78
      (f64.sub
       (local.get $77)
       (local.get $76)
      )
     )
     (local.set $79
      (f64.div
       (local.get $75)
       (local.get $78)
      )
     )
     (local.set $80
      (f64.add
       (local.get $72)
       (local.get $79)
      )
     )
     (local.set $81
      (call $log1p
       (local.get $80)
      )
     )
     (local.set $82
      (f64.const 0.5)
     )
     (local.set $83
      (f64.mul
       (local.get $82)
       (local.get $81)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $83)
     )
     (br $label$5)
    )
    (local.set $84
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $85
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $86
     (f64.add
      (local.get $84)
      (local.get $85)
     )
    )
    (local.set $87
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $88
     (f64.const 1)
    )
    (local.set $89
     (f64.sub
      (local.get $88)
      (local.get $87)
     )
    )
    (local.set $90
     (f64.div
      (local.get $86)
      (local.get $89)
     )
    )
    (local.set $91
     (call $log1p
      (local.get $90)
     )
    )
    (local.set $92
     (f64.const 0.5)
    )
    (local.set $93
     (f64.mul
      (local.get $92)
      (local.get $91)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $93)
    )
   )
   (local.set $94
    (i32.load offset=36
     (local.get $3)
    )
   )
   (local.set $95
    (i32.const 0)
   )
   (local.set $96
    (local.get $94)
   )
   (local.set $97
    (local.get $95)
   )
   (local.set $98
    (i32.ge_s
     (local.get $96)
     (local.get $97)
    )
   )
   (local.set $99
    (i32.const 1)
   )
   (local.set $100
    (i32.and
     (local.get $98)
     (local.get $99)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $100)
     )
    )
    (local.set $101
     (f64.load offset=40
      (local.get $3)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $101)
    )
    (br $label$1)
   )
   (local.set $102
    (f64.load offset=40
     (local.get $3)
    )
   )
   (local.set $103
    (f64.neg
     (local.get $102)
    )
   )
   (f64.store offset=56
    (local.get $3)
    (local.get $103)
   )
  )
  (local.set $104
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $105
   (i32.const 64)
  )
  (local.set $106
   (i32.add
    (local.get $3)
    (local.get $105)
   )
  )
  (global.set $__stack_pointer
   (local.get $106)
  )
  (return
   (local.get $104)
  )
 )
 (func $atanhf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 f32)
  (local $31 i32)
  (local $32 f32)
  (local $33 f32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 i32)
  (local $45 f32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f32)
  (local $50 i32)
  (local $51 f32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 i32)
  (local $96 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=24
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=24
    (local.get $3)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1065353216)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.gt_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $18
     (f32.sub
      (local.get $16)
      (local.get $17)
     )
    )
    (local.set $19
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $20
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $21
     (f32.sub
      (local.get $19)
      (local.get $20)
     )
    )
    (local.set $22
     (f32.div
      (local.get $18)
      (local.get $21)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $22)
    )
    (br $label$1)
   )
   (local.set $23
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $24
    (i32.const 1065353216)
   )
   (local.set $25
    (local.get $23)
   )
   (local.set $26
    (local.get $24)
   )
   (local.set $27
    (i32.eq
     (local.get $25)
     (local.get $26)
    )
   )
   (local.set $28
    (i32.const 1)
   )
   (local.set $29
    (i32.and
     (local.get $27)
     (local.get $28)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $29)
     )
    )
    (local.set $30
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $31
     (i32.const 0)
    )
    (local.set $32
     (f32.convert_i32_s
      (local.get $31)
     )
    )
    (local.set $33
     (f32.div
      (local.get $30)
      (local.get $32)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $33)
    )
    (br $label$1)
   )
   (local.set $34
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $35
    (i32.const 830472192)
   )
   (local.set $36
    (local.get $34)
   )
   (local.set $37
    (local.get $35)
   )
   (local.set $38
    (i32.lt_s
     (local.get $36)
     (local.get $37)
    )
   )
   (local.set $39
    (i32.const 1)
   )
   (local.set $40
    (i32.and
     (local.get $38)
     (local.get $39)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $40)
     )
    )
    (local.set $41
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $42
     (f32.const 1000000015047466219876688e6)
    )
    (local.set $43
     (f32.add
      (local.get $42)
      (local.get $41)
     )
    )
    (local.set $44
     (i32.const 0)
    )
    (local.set $45
     (f32.convert_i32_s
      (local.get $44)
     )
    )
    (local.set $46
     (f32.gt
      (local.get $43)
      (local.get $45)
     )
    )
    (local.set $47
     (i32.const 1)
    )
    (local.set $48
     (i32.and
      (local.get $46)
      (local.get $47)
     )
    )
    (br_if $label$4
     (i32.eqz
      (local.get $48)
     )
    )
    (local.set $49
     (f32.load offset=24
      (local.get $3)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $49)
    )
    (br $label$1)
   )
   (local.set $50
    (i32.load offset=12
     (local.get $3)
    )
   )
   (i32.store
    (local.get $3)
    (local.get $50)
   )
   (local.set $51
    (f32.load
     (local.get $3)
    )
   )
   (f32.store offset=24
    (local.get $3)
    (local.get $51)
   )
   (local.set $52
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $53
    (i32.const 1056964608)
   )
   (local.set $54
    (local.get $52)
   )
   (local.set $55
    (local.get $53)
   )
   (local.set $56
    (i32.lt_s
     (local.get $54)
     (local.get $55)
    )
   )
   (local.set $57
    (i32.const 1)
   )
   (local.set $58
    (i32.and
     (local.get $56)
     (local.get $57)
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $58)
      )
     )
     (local.set $59
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $60
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $61
      (f32.add
       (local.get $59)
       (local.get $60)
      )
     )
     (f32.store offset=20
      (local.get $3)
      (local.get $61)
     )
     (local.set $62
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $63
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $64
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $65
      (f32.mul
       (local.get $63)
       (local.get $64)
      )
     )
     (local.set $66
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $67
      (f32.const 1)
     )
     (local.set $68
      (f32.sub
       (local.get $67)
       (local.get $66)
      )
     )
     (local.set $69
      (f32.div
       (local.get $65)
       (local.get $68)
      )
     )
     (local.set $70
      (f32.add
       (local.get $62)
       (local.get $69)
      )
     )
     (local.set $71
      (call $log1pf
       (local.get $70)
      )
     )
     (local.set $72
      (f32.const 0.5)
     )
     (local.set $73
      (f32.mul
       (local.get $72)
       (local.get $71)
      )
     )
     (f32.store offset=20
      (local.get $3)
      (local.get $73)
     )
     (br $label$5)
    )
    (local.set $74
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $75
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $76
     (f32.add
      (local.get $74)
      (local.get $75)
     )
    )
    (local.set $77
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $78
     (f32.const 1)
    )
    (local.set $79
     (f32.sub
      (local.get $78)
      (local.get $77)
     )
    )
    (local.set $80
     (f32.div
      (local.get $76)
      (local.get $79)
     )
    )
    (local.set $81
     (call $log1pf
      (local.get $80)
     )
    )
    (local.set $82
     (f32.const 0.5)
    )
    (local.set $83
     (f32.mul
      (local.get $82)
      (local.get $81)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $83)
    )
   )
   (local.set $84
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $85
    (i32.const 0)
   )
   (local.set $86
    (local.get $84)
   )
   (local.set $87
    (local.get $85)
   )
   (local.set $88
    (i32.ge_s
     (local.get $86)
     (local.get $87)
    )
   )
   (local.set $89
    (i32.const 1)
   )
   (local.set $90
    (i32.and
     (local.get $88)
     (local.get $89)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $90)
     )
    )
    (local.set $91
     (f32.load offset=20
      (local.get $3)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $91)
    )
    (br $label$1)
   )
   (local.set $92
    (f32.load offset=20
     (local.get $3)
    )
   )
   (local.set $93
    (f32.neg
     (local.get $92)
    )
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $93)
   )
  )
  (local.set $94
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $95
   (i32.const 32)
  )
  (local.set $96
   (i32.add
    (local.get $3)
    (local.get $95)
   )
  )
  (global.set $__stack_pointer
   (local.get $96)
  )
  (return
   (local.get $94)
  )
 )
 (func $cosh (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 f64)
  (local $44 f64)
  (local $45 f64)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 f64)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 f64)
  (local $86 f64)
  (local $87 i32)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 i32)
  (local $92 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=32
    (local.get $3)
   )
  )
  (f64.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=4
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2146435072)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $17
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $18
     (f64.mul
      (local.get $16)
      (local.get $17)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $18)
    )
    (br $label$1)
   )
   (local.set $19
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $20
    (i32.const 1071001155)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (local.get $20)
   )
   (local.set $23
    (i32.lt_s
     (local.get $21)
     (local.get $22)
    )
   )
   (local.set $24
    (i32.const 1)
   )
   (local.set $25
    (i32.and
     (local.get $23)
     (local.get $24)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $27
     (call $fabs
      (local.get $26)
     )
    )
    (local.set $28
     (call $expm1
      (local.get $27)
     )
    )
    (f64.store offset=24
     (local.get $3)
     (local.get $28)
    )
    (local.set $29
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $30
     (f64.const 1)
    )
    (local.set $31
     (f64.add
      (local.get $30)
      (local.get $29)
     )
    )
    (f64.store offset=16
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (i32.load offset=12
      (local.get $3)
     )
    )
    (local.set $33
     (i32.const 1015021568)
    )
    (local.set $34
     (local.get $32)
    )
    (local.set $35
     (local.get $33)
    )
    (local.set $36
     (i32.lt_s
      (local.get $34)
      (local.get $35)
     )
    )
    (local.set $37
     (i32.const 1)
    )
    (local.set $38
     (i32.and
      (local.get $36)
      (local.get $37)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $38)
      )
     )
     (local.set $39
      (f64.load offset=16
       (local.get $3)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $39)
     )
     (br $label$1)
    )
    (local.set $40
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $41
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $42
     (f64.mul
      (local.get $40)
      (local.get $41)
     )
    )
    (local.set $43
     (f64.load offset=16
      (local.get $3)
     )
    )
    (local.set $44
     (f64.load offset=16
      (local.get $3)
     )
    )
    (local.set $45
     (f64.add
      (local.get $43)
      (local.get $44)
     )
    )
    (local.set $46
     (f64.div
      (local.get $42)
      (local.get $45)
     )
    )
    (local.set $47
     (f64.const 1)
    )
    (local.set $48
     (f64.add
      (local.get $47)
      (local.get $46)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $48)
    )
    (br $label$1)
   )
   (local.set $49
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $50
    (i32.const 1077280768)
   )
   (local.set $51
    (local.get $49)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (i32.lt_s
     (local.get $51)
     (local.get $52)
    )
   )
   (local.set $54
    (i32.const 1)
   )
   (local.set $55
    (i32.and
     (local.get $53)
     (local.get $54)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $55)
     )
    )
    (local.set $56
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $57
     (call $fabs
      (local.get $56)
     )
    )
    (local.set $58
     (call $exp
      (local.get $57)
     )
    )
    (f64.store offset=24
     (local.get $3)
     (local.get $58)
    )
    (local.set $59
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $60
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $61
     (f64.const 0.5)
    )
    (local.set $62
     (f64.div
      (local.get $61)
      (local.get $60)
     )
    )
    (local.set $63
     (f64.const 0.5)
    )
    (local.set $64
     (f64.mul
      (local.get $59)
      (local.get $63)
     )
    )
    (local.set $65
     (f64.add
      (local.get $64)
      (local.get $62)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $65)
    )
    (br $label$1)
   )
   (local.set $66
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $67
    (i32.const 1082535490)
   )
   (local.set $68
    (local.get $66)
   )
   (local.set $69
    (local.get $67)
   )
   (local.set $70
    (i32.lt_s
     (local.get $68)
     (local.get $69)
    )
   )
   (local.set $71
    (i32.const 1)
   )
   (local.set $72
    (i32.and
     (local.get $70)
     (local.get $71)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $72)
     )
    )
    (local.set $73
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $74
     (call $fabs
      (local.get $73)
     )
    )
    (local.set $75
     (call $exp
      (local.get $74)
     )
    )
    (local.set $76
     (f64.const 0.5)
    )
    (local.set $77
     (f64.mul
      (local.get $76)
      (local.get $75)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $77)
    )
    (br $label$1)
   )
   (local.set $78
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $79
    (i32.const 1082536910)
   )
   (local.set $80
    (local.get $78)
   )
   (local.set $81
    (local.get $79)
   )
   (local.set $82
    (i32.le_s
     (local.get $80)
     (local.get $81)
    )
   )
   (local.set $83
    (i32.const 1)
   )
   (local.set $84
    (i32.and
     (local.get $82)
     (local.get $83)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $84)
     )
    )
    (local.set $85
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $86
     (call $fabs
      (local.get $85)
     )
    )
    (local.set $87
     (i32.const -1)
    )
    (local.set $88
     (call $__ldexp_exp
      (local.get $86)
      (local.get $87)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $88)
    )
    (br $label$1)
   )
   (local.set $89
    (f64.const inf)
   )
   (f64.store offset=40
    (local.get $3)
    (local.get $89)
   )
  )
  (local.set $90
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $91
   (i32.const 48)
  )
  (local.set $92
   (i32.add
    (local.get $3)
    (local.get $91)
   )
  )
  (global.set $__stack_pointer
   (local.get $92)
  )
  (return
   (local.get $90)
  )
 )
 (func $coshf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 f32)
  (local $45 f32)
  (local $46 f32)
  (local $47 f32)
  (local $48 f32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 f32)
  (local $86 f32)
  (local $87 i32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 i32)
  (local $92 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=24
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=24
    (local.get $3)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2139095040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $18
     (f32.mul
      (local.get $16)
      (local.get $17)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $18)
    )
    (br $label$1)
   )
   (local.set $19
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $20
    (i32.const 1051816472)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (local.get $20)
   )
   (local.set $23
    (i32.lt_s
     (local.get $21)
     (local.get $22)
    )
   )
   (local.set $24
    (i32.const 1)
   )
   (local.set $25
    (i32.and
     (local.get $23)
     (local.get $24)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $27
     (call $fabsf
      (local.get $26)
     )
    )
    (local.set $28
     (call $expm1f
      (local.get $27)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $28)
    )
    (local.set $29
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $30
     (f32.const 1)
    )
    (local.set $31
     (f32.add
      (local.get $30)
      (local.get $29)
     )
    )
    (f32.store offset=16
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (i32.load offset=12
      (local.get $3)
     )
    )
    (local.set $33
     (i32.const 964689920)
    )
    (local.set $34
     (local.get $32)
    )
    (local.set $35
     (local.get $33)
    )
    (local.set $36
     (i32.lt_s
      (local.get $34)
      (local.get $35)
     )
    )
    (local.set $37
     (i32.const 1)
    )
    (local.set $38
     (i32.and
      (local.get $36)
      (local.get $37)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $38)
      )
     )
     (local.set $39
      (f32.const 1)
     )
     (f32.store offset=28
      (local.get $3)
      (local.get $39)
     )
     (br $label$1)
    )
    (local.set $40
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $41
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $42
     (f32.mul
      (local.get $40)
      (local.get $41)
     )
    )
    (local.set $43
     (f32.load offset=16
      (local.get $3)
     )
    )
    (local.set $44
     (f32.load offset=16
      (local.get $3)
     )
    )
    (local.set $45
     (f32.add
      (local.get $43)
      (local.get $44)
     )
    )
    (local.set $46
     (f32.div
      (local.get $42)
      (local.get $45)
     )
    )
    (local.set $47
     (f32.const 1)
    )
    (local.set $48
     (f32.add
      (local.get $47)
      (local.get $46)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $48)
    )
    (br $label$1)
   )
   (local.set $49
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $50
    (i32.const 1091567616)
   )
   (local.set $51
    (local.get $49)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (i32.lt_s
     (local.get $51)
     (local.get $52)
    )
   )
   (local.set $54
    (i32.const 1)
   )
   (local.set $55
    (i32.and
     (local.get $53)
     (local.get $54)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $55)
     )
    )
    (local.set $56
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $57
     (call $fabsf
      (local.get $56)
     )
    )
    (local.set $58
     (call $expf
      (local.get $57)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $58)
    )
    (local.set $59
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $60
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $61
     (f32.const 0.5)
    )
    (local.set $62
     (f32.div
      (local.get $61)
      (local.get $60)
     )
    )
    (local.set $63
     (f32.const 0.5)
    )
    (local.set $64
     (f32.mul
      (local.get $59)
      (local.get $63)
     )
    )
    (local.set $65
     (f32.add
      (local.get $64)
      (local.get $62)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $65)
    )
    (br $label$1)
   )
   (local.set $66
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $67
    (i32.const 1118925335)
   )
   (local.set $68
    (local.get $66)
   )
   (local.set $69
    (local.get $67)
   )
   (local.set $70
    (i32.lt_s
     (local.get $68)
     (local.get $69)
    )
   )
   (local.set $71
    (i32.const 1)
   )
   (local.set $72
    (i32.and
     (local.get $70)
     (local.get $71)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $72)
     )
    )
    (local.set $73
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $74
     (call $fabsf
      (local.get $73)
     )
    )
    (local.set $75
     (call $expf
      (local.get $74)
     )
    )
    (local.set $76
     (f32.const 0.5)
    )
    (local.set $77
     (f32.mul
      (local.get $76)
      (local.get $75)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $77)
    )
    (br $label$1)
   )
   (local.set $78
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $79
    (i32.const 1119016188)
   )
   (local.set $80
    (local.get $78)
   )
   (local.set $81
    (local.get $79)
   )
   (local.set $82
    (i32.le_s
     (local.get $80)
     (local.get $81)
    )
   )
   (local.set $83
    (i32.const 1)
   )
   (local.set $84
    (i32.and
     (local.get $82)
     (local.get $83)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $84)
     )
    )
    (local.set $85
     (f32.load offset=24
      (local.get $3)
     )
    )
    (local.set $86
     (call $fabsf
      (local.get $85)
     )
    )
    (local.set $87
     (i32.const -1)
    )
    (local.set $88
     (call $__ldexp_expf
      (local.get $86)
      (local.get $87)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $88)
    )
    (br $label$1)
   )
   (local.set $89
    (f32.const inf)
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $89)
   )
  )
  (local.set $90
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $91
   (i32.const 32)
  )
  (local.set $92
   (i32.add
    (local.get $3)
    (local.get $91)
   )
  )
  (global.set $__stack_pointer
   (local.get $92)
  )
  (return
   (local.get $90)
  )
 )
 (func $exp (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 f64)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 f64)
  (local $45 f64)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 f64)
  (local $55 f64)
  (local $56 f64)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 f64)
  (local $62 i32)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 f64)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 f64)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 f64)
  (local $92 f64)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 f64)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 f64)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 i32)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 i32)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 i32)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 f64)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 f64)
  (local $196 f64)
  (local $197 f64)
  (local $198 f64)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 f64)
  (local $203 f64)
  (local $204 i32)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 i32)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 i32)
  (local $234 i32)
  (local $235 i32)
  (local $236 i32)
  (local $237 i32)
  (local $238 i32)
  (local $239 i32)
  (local $240 i32)
  (local $241 i32)
  (local $242 i32)
  (local $243 f64)
  (local $244 f64)
  (local $245 f64)
  (local $246 f64)
  (local $247 f64)
  (local $248 f64)
  (local $249 f64)
  (local $250 f64)
  (local $251 f64)
  (local $252 f64)
  (local $253 f64)
  (local $254 i32)
  (local $255 f64)
  (local $256 f64)
  (local $257 f64)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 128)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f64.store offset=112
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $5
   (f64.convert_i32_s
    (local.get $4)
   )
  )
  (f64.store offset=96
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.const 0)
  )
  (local.set $7
   (f64.convert_i32_s
    (local.get $6)
   )
  )
  (f64.store offset=88
   (local.get $3)
   (local.get $7)
  )
  (local.set $8
   (i32.const 0)
  )
  (i32.store offset=60
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (f64.load offset=112
    (local.get $3)
   )
  )
  (f64.store offset=40
   (local.get $3)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=44
    (local.get $3)
   )
  )
  (i32.store offset=52
   (local.get $3)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $12
   (i32.const 31)
  )
  (local.set $13
   (i32.shr_u
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (i32.store offset=56
   (local.get $3)
   (local.get $15)
  )
  (local.set $16
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $17
   (i32.const 2147483647)
  )
  (local.set $18
   (i32.and
    (local.get $16)
    (local.get $17)
   )
  )
  (i32.store offset=52
   (local.get $3)
   (local.get $18)
  )
  (local.set $19
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $20
   (i32.const 1082535490)
  )
  (local.set $21
   (local.get $19)
  )
  (local.set $22
   (local.get $20)
  )
  (local.set $23
   (i32.ge_u
    (local.get $21)
    (local.get $22)
   )
  )
  (local.set $24
   (i32.const 1)
  )
  (local.set $25
   (i32.and
    (local.get $23)
    (local.get $24)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (i32.load offset=52
      (local.get $3)
     )
    )
    (local.set $27
     (i32.const 2146435072)
    )
    (local.set $28
     (local.get $26)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (i32.ge_u
      (local.get $28)
      (local.get $29)
     )
    )
    (local.set $31
     (i32.const 1)
    )
    (local.set $32
     (i32.and
      (local.get $30)
      (local.get $31)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $32)
      )
     )
     (local.set $33
      (f64.load offset=112
       (local.get $3)
      )
     )
     (f64.store offset=24
      (local.get $3)
      (local.get $33)
     )
     (local.set $34
      (i32.load offset=24
       (local.get $3)
      )
     )
     (i32.store offset=36
      (local.get $3)
      (local.get $34)
     )
     (local.set $35
      (i32.load offset=52
       (local.get $3)
      )
     )
     (local.set $36
      (i32.const 1048575)
     )
     (local.set $37
      (i32.and
       (local.get $35)
       (local.get $36)
      )
     )
     (local.set $38
      (i32.load offset=36
       (local.get $3)
      )
     )
     (local.set $39
      (i32.or
       (local.get $37)
       (local.get $38)
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (local.get $39)
       )
      )
      (local.set $40
       (f64.load offset=112
        (local.get $3)
       )
      )
      (local.set $41
       (f64.load offset=112
        (local.get $3)
       )
      )
      (local.set $42
       (f64.add
        (local.get $40)
        (local.get $41)
       )
      )
      (f64.store offset=120
       (local.get $3)
       (local.get $42)
      )
      (br $label$1)
     )
     (local.set $43
      (i32.load offset=56
       (local.get $3)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (local.get $43)
       )
       (local.set $44
        (f64.load offset=112
         (local.get $3)
        )
       )
       (local.set $45
        (local.get $44)
       )
       (br $label$5)
      )
      (local.set $46
       (i32.const 0)
      )
      (local.set $47
       (f64.convert_i32_s
        (local.get $46)
       )
      )
      (local.set $45
       (local.get $47)
      )
     )
     (local.set $48
      (local.get $45)
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $48)
     )
     (br $label$1)
    )
    (local.set $49
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $50
     (f64.const 709.782712893384)
    )
    (local.set $51
     (f64.gt
      (local.get $49)
      (local.get $50)
     )
    )
    (local.set $52
     (i32.const 1)
    )
    (local.set $53
     (i32.and
      (local.get $51)
      (local.get $52)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $53)
      )
     )
     (local.set $54
      (f64.const inf)
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $54)
     )
     (br $label$1)
    )
    (local.set $55
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $56
     (f64.const -745.1332191019411)
    )
    (local.set $57
     (f64.lt
      (local.get $55)
      (local.get $56)
     )
    )
    (local.set $58
     (i32.const 1)
    )
    (local.set $59
     (i32.and
      (local.get $57)
      (local.get $58)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.get $59)
      )
     )
     (local.set $60
      (i32.const 0)
     )
     (local.set $61
      (f64.load offset=9016
       (local.get $60)
      )
     )
     (local.set $62
      (i32.const 0)
     )
     (local.set $63
      (f64.load offset=9016
       (local.get $62)
      )
     )
     (local.set $64
      (f64.mul
       (local.get $61)
       (local.get $63)
      )
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $64)
     )
     (br $label$1)
    )
   )
   (local.set $65
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $66
    (f64.const 1)
   )
   (local.set $67
    (f64.eq
     (local.get $65)
     (local.get $66)
    )
   )
   (local.set $68
    (i32.const 1)
   )
   (local.set $69
    (i32.and
     (local.get $67)
     (local.get $68)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $69)
     )
    )
    (local.set $70
     (f64.const 2.718281828459045)
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $70)
    )
    (br $label$1)
   )
   (local.set $71
    (i32.load offset=52
     (local.get $3)
    )
   )
   (local.set $72
    (i32.const 1071001154)
   )
   (local.set $73
    (local.get $71)
   )
   (local.set $74
    (local.get $72)
   )
   (local.set $75
    (i32.gt_u
     (local.get $73)
     (local.get $74)
    )
   )
   (local.set $76
    (i32.const 1)
   )
   (local.set $77
    (i32.and
     (local.get $75)
     (local.get $76)
    )
   )
   (block $label$10
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (local.get $77)
      )
     )
     (local.set $78
      (i32.load offset=52
       (local.get $3)
      )
     )
     (local.set $79
      (i32.const 1072734898)
     )
     (local.set $80
      (local.get $78)
     )
     (local.set $81
      (local.get $79)
     )
     (local.set $82
      (i32.lt_u
       (local.get $80)
       (local.get $81)
      )
     )
     (local.set $83
      (i32.const 1)
     )
     (local.set $84
      (i32.and
       (local.get $82)
       (local.get $83)
      )
     )
     (block $label$12
      (block $label$13
       (br_if $label$13
        (i32.eqz
         (local.get $84)
        )
       )
       (local.set $85
        (f64.load offset=112
         (local.get $3)
        )
       )
       (local.set $86
        (i32.load offset=56
         (local.get $3)
        )
       )
       (local.set $87
        (i32.const 1024)
       )
       (local.set $88
        (i32.const 3)
       )
       (local.set $89
        (i32.shl
         (local.get $86)
         (local.get $88)
        )
       )
       (local.set $90
        (i32.add
         (local.get $87)
         (local.get $89)
        )
       )
       (local.set $91
        (f64.load
         (local.get $90)
        )
       )
       (local.set $92
        (f64.sub
         (local.get $85)
         (local.get $91)
        )
       )
       (f64.store offset=96
        (local.get $3)
        (local.get $92)
       )
       (local.set $93
        (i32.load offset=56
         (local.get $3)
        )
       )
       (local.set $94
        (i32.const 1040)
       )
       (local.set $95
        (i32.const 3)
       )
       (local.set $96
        (i32.shl
         (local.get $93)
         (local.get $95)
        )
       )
       (local.set $97
        (i32.add
         (local.get $94)
         (local.get $96)
        )
       )
       (local.set $98
        (f64.load
         (local.get $97)
        )
       )
       (f64.store offset=88
        (local.get $3)
        (local.get $98)
       )
       (local.set $99
        (i32.load offset=56
         (local.get $3)
        )
       )
       (local.set $100
        (i32.const 1)
       )
       (local.set $101
        (i32.sub
         (local.get $100)
         (local.get $99)
        )
       )
       (local.set $102
        (i32.load offset=56
         (local.get $3)
        )
       )
       (local.set $103
        (i32.sub
         (local.get $101)
         (local.get $102)
        )
       )
       (i32.store offset=60
        (local.get $3)
        (local.get $103)
       )
       (br $label$12)
      )
      (local.set $104
       (f64.load offset=112
        (local.get $3)
       )
      )
      (local.set $105
       (i32.load offset=56
        (local.get $3)
       )
      )
      (local.set $106
       (i32.const 1056)
      )
      (local.set $107
       (i32.const 3)
      )
      (local.set $108
       (i32.shl
        (local.get $105)
        (local.get $107)
       )
      )
      (local.set $109
       (i32.add
        (local.get $106)
        (local.get $108)
       )
      )
      (local.set $110
       (f64.load
        (local.get $109)
       )
      )
      (local.set $111
       (f64.const 1.4426950408889634)
      )
      (local.set $112
       (f64.mul
        (local.get $104)
        (local.get $111)
       )
      )
      (local.set $113
       (f64.add
        (local.get $112)
        (local.get $110)
       )
      )
      (local.set $114
       (f64.abs
        (local.get $113)
       )
      )
      (local.set $115
       (f64.const 2147483648)
      )
      (local.set $116
       (f64.lt
        (local.get $114)
        (local.get $115)
       )
      )
      (local.set $117
       (i32.eqz
        (local.get $116)
       )
      )
      (block $label$14
       (block $label$15
        (br_if $label$15
         (local.get $117)
        )
        (local.set $118
         (i32.trunc_f64_s
          (local.get $113)
         )
        )
        (local.set $119
         (local.get $118)
        )
        (br $label$14)
       )
       (local.set $120
        (i32.const -2147483648)
       )
       (local.set $119
        (local.get $120)
       )
      )
      (local.set $121
       (local.get $119)
      )
      (i32.store offset=60
       (local.get $3)
       (local.get $121)
      )
      (local.set $122
       (i32.load offset=60
        (local.get $3)
       )
      )
      (local.set $123
       (f64.convert_i32_s
        (local.get $122)
       )
      )
      (f64.store offset=72
       (local.get $3)
       (local.get $123)
      )
      (local.set $124
       (f64.load offset=112
        (local.get $3)
       )
      )
      (local.set $125
       (f64.load offset=72
        (local.get $3)
       )
      )
      (local.set $126
       (i32.const 0)
      )
      (local.set $127
       (f64.load offset=1024
        (local.get $126)
       )
      )
      (local.set $128
       (f64.neg
        (local.get $125)
       )
      )
      (local.set $129
       (f64.mul
        (local.get $128)
        (local.get $127)
       )
      )
      (local.set $130
       (f64.add
        (local.get $129)
        (local.get $124)
       )
      )
      (f64.store offset=96
       (local.get $3)
       (local.get $130)
      )
      (local.set $131
       (f64.load offset=72
        (local.get $3)
       )
      )
      (local.set $132
       (i32.const 0)
      )
      (local.set $133
       (f64.load offset=1040
        (local.get $132)
       )
      )
      (local.set $134
       (f64.mul
        (local.get $131)
        (local.get $133)
       )
      )
      (f64.store offset=88
       (local.get $3)
       (local.get $134)
      )
     )
     (local.set $135
      (f64.load offset=96
       (local.get $3)
      )
     )
     (local.set $136
      (f64.load offset=88
       (local.get $3)
      )
     )
     (local.set $137
      (f64.sub
       (local.get $135)
       (local.get $136)
      )
     )
     (f64.store offset=112
      (local.get $3)
      (local.get $137)
     )
     (br $label$10)
    )
    (local.set $138
     (i32.load offset=52
      (local.get $3)
     )
    )
    (local.set $139
     (i32.const 1043333120)
    )
    (local.set $140
     (local.get $138)
    )
    (local.set $141
     (local.get $139)
    )
    (local.set $142
     (i32.lt_u
      (local.get $140)
      (local.get $141)
     )
    )
    (local.set $143
     (i32.const 1)
    )
    (local.set $144
     (i32.and
      (local.get $142)
      (local.get $143)
     )
    )
    (block $label$16
     (block $label$17
      (br_if $label$17
       (i32.eqz
        (local.get $144)
       )
      )
      (local.set $145
       (f64.load offset=112
        (local.get $3)
       )
      )
      (local.set $146
       (f64.const 1.e+300)
      )
      (local.set $147
       (f64.add
        (local.get $146)
        (local.get $145)
       )
      )
      (local.set $148
       (f64.const 1)
      )
      (local.set $149
       (f64.gt
        (local.get $147)
        (local.get $148)
       )
      )
      (local.set $150
       (i32.const 1)
      )
      (local.set $151
       (i32.and
        (local.get $149)
        (local.get $150)
       )
      )
      (block $label$18
       (br_if $label$18
        (i32.eqz
         (local.get $151)
        )
       )
       (local.set $152
        (f64.load offset=112
         (local.get $3)
        )
       )
       (local.set $153
        (f64.const 1)
       )
       (local.set $154
        (f64.add
         (local.get $153)
         (local.get $152)
        )
       )
       (f64.store offset=120
        (local.get $3)
        (local.get $154)
       )
       (br $label$1)
      )
      (br $label$16)
     )
     (local.set $155
      (i32.const 0)
     )
     (i32.store offset=60
      (local.get $3)
      (local.get $155)
     )
    )
   )
   (local.set $156
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $157
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $158
    (f64.mul
     (local.get $156)
     (local.get $157)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $158)
   )
   (local.set $159
    (i32.load offset=60
     (local.get $3)
    )
   )
   (local.set $160
    (i32.const -1021)
   )
   (local.set $161
    (local.get $159)
   )
   (local.set $162
    (local.get $160)
   )
   (local.set $163
    (i32.ge_s
     (local.get $161)
     (local.get $162)
    )
   )
   (local.set $164
    (i32.const 1)
   )
   (local.set $165
    (i32.and
     (local.get $163)
     (local.get $164)
    )
   )
   (block $label$19
    (block $label$20
     (br_if $label$20
      (i32.eqz
       (local.get $165)
      )
     )
     (local.set $166
      (i32.load offset=60
       (local.get $3)
      )
     )
     (local.set $167
      (i32.const 20)
     )
     (local.set $168
      (i32.shl
       (local.get $166)
       (local.get $167)
      )
     )
     (local.set $169
      (i32.const 1072693248)
     )
     (local.set $170
      (i32.add
       (local.get $168)
       (local.get $169)
      )
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $170)
     )
     (local.set $171
      (i32.const 0)
     )
     (i32.store offset=16
      (local.get $3)
      (local.get $171)
     )
     (local.set $172
      (f64.load offset=16
       (local.get $3)
      )
     )
     (f64.store offset=64
      (local.get $3)
      (local.get $172)
     )
     (br $label$19)
    )
    (local.set $173
     (i32.load offset=60
      (local.get $3)
     )
    )
    (local.set $174
     (i32.const 1000)
    )
    (local.set $175
     (i32.add
      (local.get $173)
      (local.get $174)
     )
    )
    (local.set $176
     (i32.const 20)
    )
    (local.set $177
     (i32.shl
      (local.get $175)
      (local.get $176)
     )
    )
    (local.set $178
     (i32.const 1072693248)
    )
    (local.set $179
     (i32.add
      (local.get $177)
      (local.get $178)
     )
    )
    (i32.store offset=12
     (local.get $3)
     (local.get $179)
    )
    (local.set $180
     (i32.const 0)
    )
    (i32.store offset=8
     (local.get $3)
     (local.get $180)
    )
    (local.set $181
     (f64.load offset=8
      (local.get $3)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $181)
    )
   )
   (local.set $182
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $183
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $184
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $185
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $186
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $187
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $188
    (f64.const 4.1381367970572385e-08)
   )
   (local.set $189
    (f64.mul
     (local.get $187)
     (local.get $188)
    )
   )
   (local.set $190
    (f64.const -1.6533902205465252e-06)
   )
   (local.set $191
    (f64.add
     (local.get $189)
     (local.get $190)
    )
   )
   (local.set $192
    (f64.mul
     (local.get $186)
     (local.get $191)
    )
   )
   (local.set $193
    (f64.const 6.613756321437934e-05)
   )
   (local.set $194
    (f64.add
     (local.get $192)
     (local.get $193)
    )
   )
   (local.set $195
    (f64.mul
     (local.get $185)
     (local.get $194)
    )
   )
   (local.set $196
    (f64.const -2.7777777777015593e-03)
   )
   (local.set $197
    (f64.add
     (local.get $195)
     (local.get $196)
    )
   )
   (local.set $198
    (f64.mul
     (local.get $184)
     (local.get $197)
    )
   )
   (local.set $199
    (f64.const 0.16666666666666602)
   )
   (local.set $200
    (f64.add
     (local.get $198)
     (local.get $199)
    )
   )
   (local.set $201
    (f64.neg
     (local.get $183)
    )
   )
   (local.set $202
    (f64.mul
     (local.get $201)
     (local.get $200)
    )
   )
   (local.set $203
    (f64.add
     (local.get $202)
     (local.get $182)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $203)
   )
   (local.set $204
    (i32.load offset=60
     (local.get $3)
    )
   )
   (block $label$21
    (br_if $label$21
     (local.get $204)
    )
    (local.set $205
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $206
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $207
     (f64.mul
      (local.get $205)
      (local.get $206)
     )
    )
    (local.set $208
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $209
     (f64.const 2)
    )
    (local.set $210
     (f64.sub
      (local.get $208)
      (local.get $209)
     )
    )
    (local.set $211
     (f64.div
      (local.get $207)
      (local.get $210)
     )
    )
    (local.set $212
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $213
     (f64.sub
      (local.get $211)
      (local.get $212)
     )
    )
    (local.set $214
     (f64.const 1)
    )
    (local.set $215
     (f64.sub
      (local.get $214)
      (local.get $213)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $215)
    )
    (br $label$1)
   )
   (local.set $216
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $217
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $218
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $219
    (f64.mul
     (local.get $217)
     (local.get $218)
    )
   )
   (local.set $220
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $221
    (f64.const 2)
   )
   (local.set $222
    (f64.sub
     (local.get $221)
     (local.get $220)
    )
   )
   (local.set $223
    (f64.div
     (local.get $219)
     (local.get $222)
    )
   )
   (local.set $224
    (f64.sub
     (local.get $216)
     (local.get $223)
    )
   )
   (local.set $225
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $226
    (f64.sub
     (local.get $224)
     (local.get $225)
    )
   )
   (local.set $227
    (f64.const 1)
   )
   (local.set $228
    (f64.sub
     (local.get $227)
     (local.get $226)
    )
   )
   (f64.store offset=104
    (local.get $3)
    (local.get $228)
   )
   (local.set $229
    (i32.load offset=60
     (local.get $3)
    )
   )
   (local.set $230
    (i32.const -1021)
   )
   (local.set $231
    (local.get $229)
   )
   (local.set $232
    (local.get $230)
   )
   (local.set $233
    (i32.ge_s
     (local.get $231)
     (local.get $232)
    )
   )
   (local.set $234
    (i32.const 1)
   )
   (local.set $235
    (i32.and
     (local.get $233)
     (local.get $234)
    )
   )
   (block $label$22
    (br_if $label$22
     (i32.eqz
      (local.get $235)
     )
    )
    (local.set $236
     (i32.load offset=60
      (local.get $3)
     )
    )
    (local.set $237
     (i32.const 1024)
    )
    (local.set $238
     (local.get $236)
    )
    (local.set $239
     (local.get $237)
    )
    (local.set $240
     (i32.eq
      (local.get $238)
      (local.get $239)
     )
    )
    (local.set $241
     (i32.const 1)
    )
    (local.set $242
     (i32.and
      (local.get $240)
      (local.get $241)
     )
    )
    (block $label$23
     (br_if $label$23
      (i32.eqz
       (local.get $242)
      )
     )
     (local.set $243
      (f64.load offset=104
       (local.get $3)
      )
     )
     (local.set $244
      (f64.const 2)
     )
     (local.set $245
      (f64.mul
       (local.get $243)
       (local.get $244)
      )
     )
     (local.set $246
      (f64.const 8988465674311579538646525e283)
     )
     (local.set $247
      (f64.mul
       (local.get $245)
       (local.get $246)
      )
     )
     (f64.store offset=120
      (local.get $3)
      (local.get $247)
     )
     (br $label$1)
    )
    (local.set $248
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $249
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $250
     (f64.mul
      (local.get $248)
      (local.get $249)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $250)
    )
    (br $label$1)
   )
   (local.set $251
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $252
    (f64.load offset=64
     (local.get $3)
    )
   )
   (local.set $253
    (f64.mul
     (local.get $251)
     (local.get $252)
    )
   )
   (local.set $254
    (i32.const 0)
   )
   (local.set $255
    (f64.load offset=9016
     (local.get $254)
    )
   )
   (local.set $256
    (f64.mul
     (local.get $253)
     (local.get $255)
    )
   )
   (f64.store offset=120
    (local.get $3)
    (local.get $256)
   )
  )
  (local.set $257
   (f64.load offset=120
    (local.get $3)
   )
  )
  (return
   (local.get $257)
  )
 )
 (func $expf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 f32)
  (local $45 f64)
  (local $46 f64)
  (local $47 i32)
  (local $48 f64)
  (local $49 f64)
  (local $50 f32)
  (local $51 f32)
  (local $52 f32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 f32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 f32)
  (local $64 i32)
  (local $65 f32)
  (local $66 f32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 f32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 f32)
  (local $88 f32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 f32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 f32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 f32)
  (local $107 f32)
  (local $108 f32)
  (local $109 f32)
  (local $110 f32)
  (local $111 f32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 i32)
  (local $123 f32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 f32)
  (local $128 i32)
  (local $129 f32)
  (local $130 f32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 i32)
  (local $146 i32)
  (local $147 i32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 i32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 f32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 f32)
  (local $184 f32)
  (local $185 f32)
  (local $186 i32)
  (local $187 f32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 f32)
  (local $194 f32)
  (local $195 f32)
  (local $196 f32)
  (local $197 f32)
  (local $198 f32)
  (local $199 f32)
  (local $200 f32)
  (local $201 f32)
  (local $202 f32)
  (local $203 f32)
  (local $204 f32)
  (local $205 f32)
  (local $206 f32)
  (local $207 f32)
  (local $208 f32)
  (local $209 f32)
  (local $210 f32)
  (local $211 i32)
  (local $212 i32)
  (local $213 i32)
  (local $214 i32)
  (local $215 i32)
  (local $216 i32)
  (local $217 i32)
  (local $218 i32)
  (local $219 i32)
  (local $220 i32)
  (local $221 i32)
  (local $222 i32)
  (local $223 i32)
  (local $224 i32)
  (local $225 f32)
  (local $226 f32)
  (local $227 f32)
  (local $228 f32)
  (local $229 f32)
  (local $230 f32)
  (local $231 f32)
  (local $232 f32)
  (local $233 f32)
  (local $234 f32)
  (local $235 f32)
  (local $236 i32)
  (local $237 f32)
  (local $238 f32)
  (local $239 f32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f32.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $5
   (f32.convert_i32_s
    (local.get $4)
   )
  )
  (f32.store offset=48
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.const 0)
  )
  (local.set $7
   (f32.convert_i32_s
    (local.get $6)
   )
  )
  (f32.store offset=44
   (local.get $3)
   (local.get $7)
  )
  (local.set $8
   (i32.const 0)
  )
  (i32.store offset=28
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (f32.load offset=56
    (local.get $3)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=16
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $12
   (i32.const 31)
  )
  (local.set $13
   (i32.shr_u
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $15)
  )
  (local.set $16
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $17
   (i32.const 2147483647)
  )
  (local.set $18
   (i32.and
    (local.get $16)
    (local.get $17)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $18)
  )
  (local.set $19
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $20
   (i32.const 1118925336)
  )
  (local.set $21
   (local.get $19)
  )
  (local.set $22
   (local.get $20)
  )
  (local.set $23
   (i32.ge_u
    (local.get $21)
    (local.get $22)
   )
  )
  (local.set $24
   (i32.const 1)
  )
  (local.set $25
   (i32.and
    (local.get $23)
    (local.get $24)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $27
     (i32.const 2139095040)
    )
    (local.set $28
     (local.get $26)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (i32.gt_u
      (local.get $28)
      (local.get $29)
     )
    )
    (local.set $31
     (i32.const 1)
    )
    (local.set $32
     (i32.and
      (local.get $30)
      (local.get $31)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $32)
      )
     )
     (local.set $33
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $34
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $35
      (f32.add
       (local.get $33)
       (local.get $34)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $35)
     )
     (br $label$1)
    )
    (local.set $36
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $37
     (i32.const 2139095040)
    )
    (local.set $38
     (local.get $36)
    )
    (local.set $39
     (local.get $37)
    )
    (local.set $40
     (i32.eq
      (local.get $38)
      (local.get $39)
     )
    )
    (local.set $41
     (i32.const 1)
    )
    (local.set $42
     (i32.and
      (local.get $40)
      (local.get $41)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $42)
      )
     )
     (local.set $43
      (i32.load offset=24
       (local.get $3)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (local.get $43)
       )
       (local.set $44
        (f32.load offset=56
         (local.get $3)
        )
       )
       (local.set $45
        (f64.promote_f32
         (local.get $44)
        )
       )
       (local.set $46
        (local.get $45)
       )
       (br $label$5)
      )
      (local.set $47
       (i32.const 0)
      )
      (local.set $48
       (f64.convert_i32_s
        (local.get $47)
       )
      )
      (local.set $46
       (local.get $48)
      )
     )
     (local.set $49
      (local.get $46)
     )
     (local.set $50
      (f32.demote_f64
       (local.get $49)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $50)
     )
     (br $label$1)
    )
    (local.set $51
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $52
     (f32.const 88.7216796875)
    )
    (local.set $53
     (f32.gt
      (local.get $51)
      (local.get $52)
     )
    )
    (local.set $54
     (i32.const 1)
    )
    (local.set $55
     (i32.and
      (local.get $53)
      (local.get $54)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $55)
      )
     )
     (local.set $56
      (f32.const inf)
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $56)
     )
     (br $label$1)
    )
    (local.set $57
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $58
     (f32.const -103.97208404541016)
    )
    (local.set $59
     (f32.lt
      (local.get $57)
      (local.get $58)
     )
    )
    (local.set $60
     (i32.const 1)
    )
    (local.set $61
     (i32.and
      (local.get $59)
      (local.get $60)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.get $61)
      )
     )
     (local.set $62
      (i32.const 0)
     )
     (local.set $63
      (f32.load offset=9024
       (local.get $62)
      )
     )
     (local.set $64
      (i32.const 0)
     )
     (local.set $65
      (f32.load offset=9024
       (local.get $64)
      )
     )
     (local.set $66
      (f32.mul
       (local.get $63)
       (local.get $65)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $66)
     )
     (br $label$1)
    )
   )
   (local.set $67
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $68
    (i32.const 1051816472)
   )
   (local.set $69
    (local.get $67)
   )
   (local.set $70
    (local.get $68)
   )
   (local.set $71
    (i32.gt_u
     (local.get $69)
     (local.get $70)
    )
   )
   (local.set $72
    (i32.const 1)
   )
   (local.set $73
    (i32.and
     (local.get $71)
     (local.get $72)
    )
   )
   (block $label$9
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $73)
      )
     )
     (local.set $74
      (i32.load offset=20
       (local.get $3)
      )
     )
     (local.set $75
      (i32.const 1065686418)
     )
     (local.set $76
      (local.get $74)
     )
     (local.set $77
      (local.get $75)
     )
     (local.set $78
      (i32.lt_u
       (local.get $76)
       (local.get $77)
      )
     )
     (local.set $79
      (i32.const 1)
     )
     (local.set $80
      (i32.and
       (local.get $78)
       (local.get $79)
      )
     )
     (block $label$11
      (block $label$12
       (br_if $label$12
        (i32.eqz
         (local.get $80)
        )
       )
       (local.set $81
        (f32.load offset=56
         (local.get $3)
        )
       )
       (local.set $82
        (i32.load offset=24
         (local.get $3)
        )
       )
       (local.set $83
        (i32.const 1072)
       )
       (local.set $84
        (i32.const 2)
       )
       (local.set $85
        (i32.shl
         (local.get $82)
         (local.get $84)
        )
       )
       (local.set $86
        (i32.add
         (local.get $83)
         (local.get $85)
        )
       )
       (local.set $87
        (f32.load
         (local.get $86)
        )
       )
       (local.set $88
        (f32.sub
         (local.get $81)
         (local.get $87)
        )
       )
       (f32.store offset=48
        (local.get $3)
        (local.get $88)
       )
       (local.set $89
        (i32.load offset=24
         (local.get $3)
        )
       )
       (local.set $90
        (i32.const 1080)
       )
       (local.set $91
        (i32.const 2)
       )
       (local.set $92
        (i32.shl
         (local.get $89)
         (local.get $91)
        )
       )
       (local.set $93
        (i32.add
         (local.get $90)
         (local.get $92)
        )
       )
       (local.set $94
        (f32.load
         (local.get $93)
        )
       )
       (f32.store offset=44
        (local.get $3)
        (local.get $94)
       )
       (local.set $95
        (i32.load offset=24
         (local.get $3)
        )
       )
       (local.set $96
        (i32.const 1)
       )
       (local.set $97
        (i32.sub
         (local.get $96)
         (local.get $95)
        )
       )
       (local.set $98
        (i32.load offset=24
         (local.get $3)
        )
       )
       (local.set $99
        (i32.sub
         (local.get $97)
         (local.get $98)
        )
       )
       (i32.store offset=28
        (local.get $3)
        (local.get $99)
       )
       (br $label$11)
      )
      (local.set $100
       (f32.load offset=56
        (local.get $3)
       )
      )
      (local.set $101
       (i32.load offset=24
        (local.get $3)
       )
      )
      (local.set $102
       (i32.const 1088)
      )
      (local.set $103
       (i32.const 2)
      )
      (local.set $104
       (i32.shl
        (local.get $101)
        (local.get $103)
       )
      )
      (local.set $105
       (i32.add
        (local.get $102)
        (local.get $104)
       )
      )
      (local.set $106
       (f32.load
        (local.get $105)
       )
      )
      (local.set $107
       (f32.const 1.4426950216293335)
      )
      (local.set $108
       (f32.mul
        (local.get $100)
        (local.get $107)
       )
      )
      (local.set $109
       (f32.add
        (local.get $108)
        (local.get $106)
       )
      )
      (local.set $110
       (f32.abs
        (local.get $109)
       )
      )
      (local.set $111
       (f32.const 2147483648)
      )
      (local.set $112
       (f32.lt
        (local.get $110)
        (local.get $111)
       )
      )
      (local.set $113
       (i32.eqz
        (local.get $112)
       )
      )
      (block $label$13
       (block $label$14
        (br_if $label$14
         (local.get $113)
        )
        (local.set $114
         (i32.trunc_f32_s
          (local.get $109)
         )
        )
        (local.set $115
         (local.get $114)
        )
        (br $label$13)
       )
       (local.set $116
        (i32.const -2147483648)
       )
       (local.set $115
        (local.get $116)
       )
      )
      (local.set $117
       (local.get $115)
      )
      (i32.store offset=28
       (local.get $3)
       (local.get $117)
      )
      (local.set $118
       (i32.load offset=28
        (local.get $3)
       )
      )
      (local.set $119
       (f32.convert_i32_s
        (local.get $118)
       )
      )
      (f32.store offset=36
       (local.get $3)
       (local.get $119)
      )
      (local.set $120
       (f32.load offset=56
        (local.get $3)
       )
      )
      (local.set $121
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $122
       (i32.const 0)
      )
      (local.set $123
       (f32.load offset=1072
        (local.get $122)
       )
      )
      (local.set $124
       (f32.neg
        (local.get $121)
       )
      )
      (local.set $125
       (f32.mul
        (local.get $124)
        (local.get $123)
       )
      )
      (local.set $126
       (f32.add
        (local.get $125)
        (local.get $120)
       )
      )
      (f32.store offset=48
       (local.get $3)
       (local.get $126)
      )
      (local.set $127
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $128
       (i32.const 0)
      )
      (local.set $129
       (f32.load offset=1080
        (local.get $128)
       )
      )
      (local.set $130
       (f32.mul
        (local.get $127)
        (local.get $129)
       )
      )
      (f32.store offset=44
       (local.get $3)
       (local.get $130)
      )
     )
     (local.set $131
      (f32.load offset=48
       (local.get $3)
      )
     )
     (local.set $132
      (f32.load offset=44
       (local.get $3)
      )
     )
     (local.set $133
      (f32.sub
       (local.get $131)
       (local.get $132)
      )
     )
     (f32.store offset=56
      (local.get $3)
      (local.get $133)
     )
     (br $label$9)
    )
    (local.set $134
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $135
     (i32.const 956301312)
    )
    (local.set $136
     (local.get $134)
    )
    (local.set $137
     (local.get $135)
    )
    (local.set $138
     (i32.lt_u
      (local.get $136)
      (local.get $137)
     )
    )
    (local.set $139
     (i32.const 1)
    )
    (local.set $140
     (i32.and
      (local.get $138)
      (local.get $139)
     )
    )
    (block $label$15
     (block $label$16
      (br_if $label$16
       (i32.eqz
        (local.get $140)
       )
      )
      (local.set $141
       (f32.load offset=56
        (local.get $3)
       )
      )
      (local.set $142
       (f32.const 1000000015047466219876688e6)
      )
      (local.set $143
       (f32.add
        (local.get $142)
        (local.get $141)
       )
      )
      (local.set $144
       (f32.const 1)
      )
      (local.set $145
       (f32.gt
        (local.get $143)
        (local.get $144)
       )
      )
      (local.set $146
       (i32.const 1)
      )
      (local.set $147
       (i32.and
        (local.get $145)
        (local.get $146)
       )
      )
      (block $label$17
       (br_if $label$17
        (i32.eqz
         (local.get $147)
        )
       )
       (local.set $148
        (f32.load offset=56
         (local.get $3)
        )
       )
       (local.set $149
        (f32.const 1)
       )
       (local.set $150
        (f32.add
         (local.get $149)
         (local.get $148)
        )
       )
       (f32.store offset=60
        (local.get $3)
        (local.get $150)
       )
       (br $label$1)
      )
      (br $label$15)
     )
     (local.set $151
      (i32.const 0)
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $151)
     )
    )
   )
   (local.set $152
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $153
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $154
    (f32.mul
     (local.get $152)
     (local.get $153)
    )
   )
   (f32.store offset=36
    (local.get $3)
    (local.get $154)
   )
   (local.set $155
    (i32.load offset=28
     (local.get $3)
    )
   )
   (local.set $156
    (i32.const -125)
   )
   (local.set $157
    (local.get $155)
   )
   (local.set $158
    (local.get $156)
   )
   (local.set $159
    (i32.ge_s
     (local.get $157)
     (local.get $158)
    )
   )
   (local.set $160
    (i32.const 1)
   )
   (local.set $161
    (i32.and
     (local.get $159)
     (local.get $160)
    )
   )
   (block $label$18
    (block $label$19
     (br_if $label$19
      (i32.eqz
       (local.get $161)
      )
     )
     (local.set $162
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $163
      (i32.const 23)
     )
     (local.set $164
      (i32.shl
       (local.get $162)
       (local.get $163)
      )
     )
     (local.set $165
      (i32.const 1065353216)
     )
     (local.set $166
      (i32.add
       (local.get $164)
       (local.get $165)
      )
     )
     (i32.store offset=8
      (local.get $3)
      (local.get $166)
     )
     (local.set $167
      (f32.load offset=8
       (local.get $3)
      )
     )
     (f32.store offset=32
      (local.get $3)
      (local.get $167)
     )
     (br $label$18)
    )
    (local.set $168
     (i32.load offset=28
      (local.get $3)
     )
    )
    (local.set $169
     (i32.const 100)
    )
    (local.set $170
     (i32.add
      (local.get $168)
      (local.get $169)
     )
    )
    (local.set $171
     (i32.const 23)
    )
    (local.set $172
     (i32.shl
      (local.get $170)
      (local.get $171)
     )
    )
    (local.set $173
     (i32.const 1065353216)
    )
    (local.set $174
     (i32.add
      (local.get $172)
      (local.get $173)
     )
    )
    (i32.store
     (local.get $3)
     (local.get $174)
    )
    (local.set $175
     (f32.load
      (local.get $3)
     )
    )
    (f32.store offset=32
     (local.get $3)
     (local.get $175)
    )
   )
   (local.set $176
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $177
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $178
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $179
    (f32.const -2.7667332906275988e-03)
   )
   (local.set $180
    (f32.mul
     (local.get $178)
     (local.get $179)
    )
   )
   (local.set $181
    (f32.const 0.16666625440120697)
   )
   (local.set $182
    (f32.add
     (local.get $180)
     (local.get $181)
    )
   )
   (local.set $183
    (f32.neg
     (local.get $177)
    )
   )
   (local.set $184
    (f32.mul
     (local.get $183)
     (local.get $182)
    )
   )
   (local.set $185
    (f32.add
     (local.get $184)
     (local.get $176)
    )
   )
   (f32.store offset=40
    (local.get $3)
    (local.get $185)
   )
   (local.set $186
    (i32.load offset=28
     (local.get $3)
    )
   )
   (block $label$20
    (br_if $label$20
     (local.get $186)
    )
    (local.set $187
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $188
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $189
     (f32.mul
      (local.get $187)
      (local.get $188)
     )
    )
    (local.set $190
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $191
     (f32.const 2)
    )
    (local.set $192
     (f32.sub
      (local.get $190)
      (local.get $191)
     )
    )
    (local.set $193
     (f32.div
      (local.get $189)
      (local.get $192)
     )
    )
    (local.set $194
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $195
     (f32.sub
      (local.get $193)
      (local.get $194)
     )
    )
    (local.set $196
     (f32.const 1)
    )
    (local.set $197
     (f32.sub
      (local.get $196)
      (local.get $195)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $197)
    )
    (br $label$1)
   )
   (local.set $198
    (f32.load offset=44
     (local.get $3)
    )
   )
   (local.set $199
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $200
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $201
    (f32.mul
     (local.get $199)
     (local.get $200)
    )
   )
   (local.set $202
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $203
    (f32.const 2)
   )
   (local.set $204
    (f32.sub
     (local.get $203)
     (local.get $202)
    )
   )
   (local.set $205
    (f32.div
     (local.get $201)
     (local.get $204)
    )
   )
   (local.set $206
    (f32.sub
     (local.get $198)
     (local.get $205)
    )
   )
   (local.set $207
    (f32.load offset=48
     (local.get $3)
    )
   )
   (local.set $208
    (f32.sub
     (local.get $206)
     (local.get $207)
    )
   )
   (local.set $209
    (f32.const 1)
   )
   (local.set $210
    (f32.sub
     (local.get $209)
     (local.get $208)
    )
   )
   (f32.store offset=52
    (local.get $3)
    (local.get $210)
   )
   (local.set $211
    (i32.load offset=28
     (local.get $3)
    )
   )
   (local.set $212
    (i32.const -125)
   )
   (local.set $213
    (local.get $211)
   )
   (local.set $214
    (local.get $212)
   )
   (local.set $215
    (i32.ge_s
     (local.get $213)
     (local.get $214)
    )
   )
   (local.set $216
    (i32.const 1)
   )
   (local.set $217
    (i32.and
     (local.get $215)
     (local.get $216)
    )
   )
   (block $label$21
    (br_if $label$21
     (i32.eqz
      (local.get $217)
     )
    )
    (local.set $218
     (i32.load offset=28
      (local.get $3)
     )
    )
    (local.set $219
     (i32.const 128)
    )
    (local.set $220
     (local.get $218)
    )
    (local.set $221
     (local.get $219)
    )
    (local.set $222
     (i32.eq
      (local.get $220)
      (local.get $221)
     )
    )
    (local.set $223
     (i32.const 1)
    )
    (local.set $224
     (i32.and
      (local.get $222)
      (local.get $223)
     )
    )
    (block $label$22
     (br_if $label$22
      (i32.eqz
       (local.get $224)
      )
     )
     (local.set $225
      (f32.load offset=52
       (local.get $3)
      )
     )
     (local.set $226
      (f32.const 2)
     )
     (local.set $227
      (f32.mul
       (local.get $225)
       (local.get $226)
      )
     )
     (local.set $228
      (f32.const 1701411834604692317316873e14)
     )
     (local.set $229
      (f32.mul
       (local.get $227)
       (local.get $228)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $229)
     )
     (br $label$1)
    )
    (local.set $230
     (f32.load offset=52
      (local.get $3)
     )
    )
    (local.set $231
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $232
     (f32.mul
      (local.get $230)
      (local.get $231)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $232)
    )
    (br $label$1)
   )
   (local.set $233
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $234
    (f32.load offset=32
     (local.get $3)
    )
   )
   (local.set $235
    (f32.mul
     (local.get $233)
     (local.get $234)
    )
   )
   (local.set $236
    (i32.const 0)
   )
   (local.set $237
    (f32.load offset=9024
     (local.get $236)
    )
   )
   (local.set $238
    (f32.mul
     (local.get $235)
     (local.get $237)
    )
   )
   (f32.store offset=60
    (local.get $3)
    (local.get $238)
   )
  )
  (local.set $239
   (f32.load offset=60
    (local.get $3)
   )
  )
  (return
   (local.get $239)
  )
 )
 (func $fmod (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 f64)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 f64)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 i32)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 i32)
  (local $185 i32)
  (local $186 i32)
  (local $187 i32)
  (local $188 i32)
  (local $189 i32)
  (local $190 i32)
  (local $191 i32)
  (local $192 i32)
  (local $193 i32)
  (local $194 i32)
  (local $195 i32)
  (local $196 i32)
  (local $197 i32)
  (local $198 i32)
  (local $199 i32)
  (local $200 i32)
  (local $201 i32)
  (local $202 i32)
  (local $203 i32)
  (local $204 i32)
  (local $205 i32)
  (local $206 i32)
  (local $207 i32)
  (local $208 i32)
  (local $209 i32)
  (local $210 i32)
  (local $211 i32)
  (local $212 i32)
  (local $213 i32)
  (local $214 i32)
  (local $215 i32)
  (local $216 i32)
  (local $217 i32)
  (local $218 i32)
  (local $219 i32)
  (local $220 i32)
  (local $221 i32)
  (local $222 i32)
  (local $223 i32)
  (local $224 i32)
  (local $225 i32)
  (local $226 i32)
  (local $227 i32)
  (local $228 i32)
  (local $229 i32)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 i32)
  (local $234 i32)
  (local $235 i32)
  (local $236 i32)
  (local $237 i32)
  (local $238 i32)
  (local $239 i32)
  (local $240 i32)
  (local $241 i32)
  (local $242 i32)
  (local $243 i32)
  (local $244 i32)
  (local $245 i32)
  (local $246 i32)
  (local $247 i32)
  (local $248 i32)
  (local $249 i32)
  (local $250 i32)
  (local $251 i32)
  (local $252 i32)
  (local $253 i32)
  (local $254 i32)
  (local $255 i32)
  (local $256 i32)
  (local $257 i32)
  (local $258 i32)
  (local $259 i32)
  (local $260 i32)
  (local $261 i32)
  (local $262 i32)
  (local $263 i32)
  (local $264 i32)
  (local $265 i32)
  (local $266 i32)
  (local $267 i32)
  (local $268 i32)
  (local $269 i32)
  (local $270 i32)
  (local $271 i32)
  (local $272 i32)
  (local $273 i32)
  (local $274 i32)
  (local $275 i32)
  (local $276 i32)
  (local $277 i32)
  (local $278 i32)
  (local $279 i32)
  (local $280 i32)
  (local $281 i32)
  (local $282 i32)
  (local $283 i32)
  (local $284 i32)
  (local $285 i32)
  (local $286 i32)
  (local $287 i32)
  (local $288 i32)
  (local $289 i32)
  (local $290 i32)
  (local $291 i32)
  (local $292 i32)
  (local $293 i32)
  (local $294 i32)
  (local $295 i32)
  (local $296 i32)
  (local $297 i32)
  (local $298 i32)
  (local $299 i32)
  (local $300 i32)
  (local $301 i32)
  (local $302 i32)
  (local $303 i32)
  (local $304 i32)
  (local $305 i32)
  (local $306 i32)
  (local $307 i32)
  (local $308 f64)
  (local $309 i32)
  (local $310 i32)
  (local $311 i32)
  (local $312 i32)
  (local $313 i32)
  (local $314 i32)
  (local $315 i32)
  (local $316 i32)
  (local $317 i32)
  (local $318 i32)
  (local $319 i32)
  (local $320 i32)
  (local $321 i32)
  (local $322 i32)
  (local $323 i32)
  (local $324 i32)
  (local $325 i32)
  (local $326 i32)
  (local $327 i32)
  (local $328 i32)
  (local $329 i32)
  (local $330 i32)
  (local $331 i32)
  (local $332 i32)
  (local $333 i32)
  (local $334 i32)
  (local $335 i32)
  (local $336 i32)
  (local $337 i32)
  (local $338 i32)
  (local $339 i32)
  (local $340 i32)
  (local $341 i32)
  (local $342 i32)
  (local $343 i32)
  (local $344 i32)
  (local $345 i32)
  (local $346 i32)
  (local $347 i32)
  (local $348 i32)
  (local $349 i32)
  (local $350 i32)
  (local $351 i32)
  (local $352 i32)
  (local $353 i32)
  (local $354 f64)
  (local $355 i32)
  (local $356 i32)
  (local $357 i32)
  (local $358 i32)
  (local $359 i32)
  (local $360 i32)
  (local $361 i32)
  (local $362 i32)
  (local $363 i32)
  (local $364 i32)
  (local $365 i32)
  (local $366 i32)
  (local $367 i32)
  (local $368 i32)
  (local $369 i32)
  (local $370 i32)
  (local $371 i32)
  (local $372 i32)
  (local $373 i32)
  (local $374 i32)
  (local $375 i32)
  (local $376 i32)
  (local $377 i32)
  (local $378 i32)
  (local $379 i32)
  (local $380 i32)
  (local $381 i32)
  (local $382 i32)
  (local $383 i32)
  (local $384 i32)
  (local $385 i32)
  (local $386 i32)
  (local $387 i32)
  (local $388 i32)
  (local $389 i32)
  (local $390 i32)
  (local $391 i32)
  (local $392 i32)
  (local $393 i32)
  (local $394 i32)
  (local $395 f64)
  (local $396 i32)
  (local $397 i32)
  (local $398 i32)
  (local $399 i32)
  (local $400 i32)
  (local $401 i32)
  (local $402 i32)
  (local $403 i32)
  (local $404 i32)
  (local $405 i32)
  (local $406 i32)
  (local $407 i32)
  (local $408 i32)
  (local $409 i32)
  (local $410 i32)
  (local $411 i32)
  (local $412 i32)
  (local $413 i32)
  (local $414 i32)
  (local $415 i32)
  (local $416 i32)
  (local $417 i32)
  (local $418 i32)
  (local $419 i32)
  (local $420 i32)
  (local $421 i32)
  (local $422 i32)
  (local $423 i32)
  (local $424 i32)
  (local $425 i32)
  (local $426 i32)
  (local $427 i32)
  (local $428 i32)
  (local $429 i32)
  (local $430 i32)
  (local $431 i32)
  (local $432 i32)
  (local $433 i32)
  (local $434 i32)
  (local $435 i32)
  (local $436 i32)
  (local $437 i32)
  (local $438 i32)
  (local $439 i32)
  (local $440 i32)
  (local $441 i32)
  (local $442 i32)
  (local $443 i32)
  (local $444 i32)
  (local $445 f64)
  (local $446 f64)
  (local $447 f64)
  (local $448 f64)
  (local $449 f64)
  (local $450 f64)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 112)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (f64.store offset=96
   (local.get $4)
   (local.get $0)
  )
  (f64.store offset=88
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=96
    (local.get $4)
   )
  )
  (f64.store offset=32
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=36
    (local.get $4)
   )
  )
  (i32.store offset=80
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=32
    (local.get $4)
   )
  )
  (i32.store offset=52
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (f64.load offset=88
    (local.get $4)
   )
  )
  (f64.store offset=24
   (local.get $4)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=28
    (local.get $4)
   )
  )
  (i32.store offset=76
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=24
    (local.get $4)
   )
  )
  (i32.store offset=48
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=80
    (local.get $4)
   )
  )
  (local.set $12
   (i32.const -2147483648)
  )
  (local.set $13
   (i32.and
    (local.get $11)
    (local.get $12)
   )
  )
  (i32.store offset=60
   (local.get $4)
   (local.get $13)
  )
  (local.set $14
   (i32.load offset=60
    (local.get $4)
   )
  )
  (local.set $15
   (i32.load offset=80
    (local.get $4)
   )
  )
  (local.set $16
   (i32.xor
    (local.get $15)
    (local.get $14)
   )
  )
  (i32.store offset=80
   (local.get $4)
   (local.get $16)
  )
  (local.set $17
   (i32.load offset=76
    (local.get $4)
   )
  )
  (local.set $18
   (i32.const 2147483647)
  )
  (local.set $19
   (i32.and
    (local.get $17)
    (local.get $18)
   )
  )
  (i32.store offset=76
   (local.get $4)
   (local.get $19)
  )
  (local.set $20
   (i32.load offset=76
    (local.get $4)
   )
  )
  (local.set $21
   (i32.load offset=48
    (local.get $4)
   )
  )
  (local.set $22
   (i32.or
    (local.get $20)
    (local.get $21)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $22)
      )
     )
     (local.set $23
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $24
      (i32.const 2146435072)
     )
     (local.set $25
      (local.get $23)
     )
     (local.set $26
      (local.get $24)
     )
     (local.set $27
      (i32.ge_s
       (local.get $25)
       (local.get $26)
      )
     )
     (local.set $28
      (i32.const 1)
     )
     (local.set $29
      (i32.and
       (local.get $27)
       (local.get $28)
      )
     )
     (br_if $label$3
      (local.get $29)
     )
     (local.set $30
      (i32.load offset=76
       (local.get $4)
      )
     )
     (local.set $31
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $32
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $33
      (i32.const 0)
     )
     (local.set $34
      (i32.sub
       (local.get $33)
       (local.get $32)
      )
     )
     (local.set $35
      (i32.or
       (local.get $31)
       (local.get $34)
      )
     )
     (local.set $36
      (i32.const 31)
     )
     (local.set $37
      (i32.shr_u
       (local.get $35)
       (local.get $36)
      )
     )
     (local.set $38
      (i32.or
       (local.get $30)
       (local.get $37)
      )
     )
     (local.set $39
      (i32.const 2146435072)
     )
     (local.set $40
      (local.get $38)
     )
     (local.set $41
      (local.get $39)
     )
     (local.set $42
      (i32.gt_u
       (local.get $40)
       (local.get $41)
      )
     )
     (local.set $43
      (i32.const 1)
     )
     (local.set $44
      (i32.and
       (local.get $42)
       (local.get $43)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $44)
      )
     )
    )
    (local.set $45
     (f64.load offset=96
      (local.get $4)
     )
    )
    (local.set $46
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $47
     (f64.mul
      (local.get $45)
      (local.get $46)
     )
    )
    (local.set $48
     (f64.load offset=96
      (local.get $4)
     )
    )
    (local.set $49
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $50
     (f64.mul
      (local.get $48)
      (local.get $49)
     )
    )
    (local.set $51
     (f64.div
      (local.get $47)
      (local.get $50)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $51)
    )
    (br $label$1)
   )
   (local.set $52
    (i32.load offset=80
     (local.get $4)
    )
   )
   (local.set $53
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $54
    (local.get $52)
   )
   (local.set $55
    (local.get $53)
   )
   (local.set $56
    (i32.le_s
     (local.get $54)
     (local.get $55)
    )
   )
   (local.set $57
    (i32.const 1)
   )
   (local.set $58
    (i32.and
     (local.get $56)
     (local.get $57)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $58)
     )
    )
    (local.set $59
     (i32.load offset=80
      (local.get $4)
     )
    )
    (local.set $60
     (i32.load offset=76
      (local.get $4)
     )
    )
    (local.set $61
     (local.get $59)
    )
    (local.set $62
     (local.get $60)
    )
    (local.set $63
     (i32.lt_s
      (local.get $61)
      (local.get $62)
     )
    )
    (local.set $64
     (i32.const 1)
    )
    (local.set $65
     (i32.and
      (local.get $63)
      (local.get $64)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (local.get $65)
      )
      (local.set $66
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $67
       (i32.load offset=48
        (local.get $4)
       )
      )
      (local.set $68
       (local.get $66)
      )
      (local.set $69
       (local.get $67)
      )
      (local.set $70
       (i32.lt_u
        (local.get $68)
        (local.get $69)
       )
      )
      (local.set $71
       (i32.const 1)
      )
      (local.set $72
       (i32.and
        (local.get $70)
        (local.get $71)
       )
      )
      (br_if $label$5
       (i32.eqz
        (local.get $72)
       )
      )
     )
     (local.set $73
      (f64.load offset=96
       (local.get $4)
      )
     )
     (f64.store offset=104
      (local.get $4)
      (local.get $73)
     )
     (br $label$1)
    )
    (local.set $74
     (i32.load offset=52
      (local.get $4)
     )
    )
    (local.set $75
     (i32.load offset=48
      (local.get $4)
     )
    )
    (local.set $76
     (local.get $74)
    )
    (local.set $77
     (local.get $75)
    )
    (local.set $78
     (i32.eq
      (local.get $76)
      (local.get $77)
     )
    )
    (local.set $79
     (i32.const 1)
    )
    (local.set $80
     (i32.and
      (local.get $78)
      (local.get $79)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $80)
      )
     )
     (local.set $81
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $82
      (i32.const 31)
     )
     (local.set $83
      (i32.shr_u
       (local.get $81)
       (local.get $82)
      )
     )
     (local.set $84
      (i32.const 1104)
     )
     (local.set $85
      (i32.const 3)
     )
     (local.set $86
      (i32.shl
       (local.get $83)
       (local.get $85)
      )
     )
     (local.set $87
      (i32.add
       (local.get $84)
       (local.get $86)
      )
     )
     (local.set $88
      (f64.load
       (local.get $87)
      )
     )
     (f64.store offset=104
      (local.get $4)
      (local.get $88)
     )
     (br $label$1)
    )
   )
   (local.set $89
    (i32.load offset=80
     (local.get $4)
    )
   )
   (local.set $90
    (i32.const 1048576)
   )
   (local.set $91
    (local.get $89)
   )
   (local.set $92
    (local.get $90)
   )
   (local.set $93
    (i32.lt_s
     (local.get $91)
     (local.get $92)
    )
   )
   (local.set $94
    (i32.const 1)
   )
   (local.set $95
    (i32.and
     (local.get $93)
     (local.get $94)
    )
   )
   (block $label$8
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (local.get $95)
      )
     )
     (local.set $96
      (i32.load offset=80
       (local.get $4)
      )
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (local.get $96)
       )
       (local.set $97
        (i32.const -1043)
       )
       (i32.store offset=68
        (local.get $4)
        (local.get $97)
       )
       (local.set $98
        (i32.load offset=52
         (local.get $4)
        )
       )
       (i32.store offset=56
        (local.get $4)
        (local.get $98)
       )
       (block $label$12
        (loop $label$13
         (local.set $99
          (i32.load offset=56
           (local.get $4)
          )
         )
         (local.set $100
          (i32.const 0)
         )
         (local.set $101
          (local.get $99)
         )
         (local.set $102
          (local.get $100)
         )
         (local.set $103
          (i32.gt_s
           (local.get $101)
           (local.get $102)
          )
         )
         (local.set $104
          (i32.const 1)
         )
         (local.set $105
          (i32.and
           (local.get $103)
           (local.get $104)
          )
         )
         (br_if $label$12
          (i32.eqz
           (local.get $105)
          )
         )
         (local.set $106
          (i32.load offset=68
           (local.get $4)
          )
         )
         (local.set $107
          (i32.const 1)
         )
         (local.set $108
          (i32.sub
           (local.get $106)
           (local.get $107)
          )
         )
         (i32.store offset=68
          (local.get $4)
          (local.get $108)
         )
         (local.set $109
          (i32.load offset=56
           (local.get $4)
          )
         )
         (local.set $110
          (i32.const 1)
         )
         (local.set $111
          (i32.shl
           (local.get $109)
           (local.get $110)
          )
         )
         (i32.store offset=56
          (local.get $4)
          (local.get $111)
         )
         (br $label$13)
        )
       )
       (br $label$10)
      )
      (local.set $112
       (i32.const -1022)
      )
      (i32.store offset=68
       (local.get $4)
       (local.get $112)
      )
      (local.set $113
       (i32.load offset=80
        (local.get $4)
       )
      )
      (local.set $114
       (i32.const 11)
      )
      (local.set $115
       (i32.shl
        (local.get $113)
        (local.get $114)
       )
      )
      (i32.store offset=56
       (local.get $4)
       (local.get $115)
      )
      (block $label$14
       (loop $label$15
        (local.set $116
         (i32.load offset=56
          (local.get $4)
         )
        )
        (local.set $117
         (i32.const 0)
        )
        (local.set $118
         (local.get $116)
        )
        (local.set $119
         (local.get $117)
        )
        (local.set $120
         (i32.gt_s
          (local.get $118)
          (local.get $119)
         )
        )
        (local.set $121
         (i32.const 1)
        )
        (local.set $122
         (i32.and
          (local.get $120)
          (local.get $121)
         )
        )
        (br_if $label$14
         (i32.eqz
          (local.get $122)
         )
        )
        (local.set $123
         (i32.load offset=68
          (local.get $4)
         )
        )
        (local.set $124
         (i32.const 1)
        )
        (local.set $125
         (i32.sub
          (local.get $123)
          (local.get $124)
         )
        )
        (i32.store offset=68
         (local.get $4)
         (local.get $125)
        )
        (local.set $126
         (i32.load offset=56
          (local.get $4)
         )
        )
        (local.set $127
         (i32.const 1)
        )
        (local.set $128
         (i32.shl
          (local.get $126)
          (local.get $127)
         )
        )
        (i32.store offset=56
         (local.get $4)
         (local.get $128)
        )
        (br $label$15)
       )
      )
     )
     (br $label$8)
    )
    (local.set $129
     (i32.load offset=80
      (local.get $4)
     )
    )
    (local.set $130
     (i32.const 20)
    )
    (local.set $131
     (i32.shr_s
      (local.get $129)
      (local.get $130)
     )
    )
    (local.set $132
     (i32.const 1023)
    )
    (local.set $133
     (i32.sub
      (local.get $131)
      (local.get $132)
     )
    )
    (i32.store offset=68
     (local.get $4)
     (local.get $133)
    )
   )
   (local.set $134
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $135
    (i32.const 1048576)
   )
   (local.set $136
    (local.get $134)
   )
   (local.set $137
    (local.get $135)
   )
   (local.set $138
    (i32.lt_s
     (local.get $136)
     (local.get $137)
    )
   )
   (local.set $139
    (i32.const 1)
   )
   (local.set $140
    (i32.and
     (local.get $138)
     (local.get $139)
    )
   )
   (block $label$16
    (block $label$17
     (br_if $label$17
      (i32.eqz
       (local.get $140)
      )
     )
     (local.set $141
      (i32.load offset=76
       (local.get $4)
      )
     )
     (block $label$18
      (block $label$19
       (br_if $label$19
        (local.get $141)
       )
       (local.set $142
        (i32.const -1043)
       )
       (i32.store offset=64
        (local.get $4)
        (local.get $142)
       )
       (local.set $143
        (i32.load offset=48
         (local.get $4)
        )
       )
       (i32.store offset=56
        (local.get $4)
        (local.get $143)
       )
       (block $label$20
        (loop $label$21
         (local.set $144
          (i32.load offset=56
           (local.get $4)
          )
         )
         (local.set $145
          (i32.const 0)
         )
         (local.set $146
          (local.get $144)
         )
         (local.set $147
          (local.get $145)
         )
         (local.set $148
          (i32.gt_s
           (local.get $146)
           (local.get $147)
          )
         )
         (local.set $149
          (i32.const 1)
         )
         (local.set $150
          (i32.and
           (local.get $148)
           (local.get $149)
          )
         )
         (br_if $label$20
          (i32.eqz
           (local.get $150)
          )
         )
         (local.set $151
          (i32.load offset=64
           (local.get $4)
          )
         )
         (local.set $152
          (i32.const 1)
         )
         (local.set $153
          (i32.sub
           (local.get $151)
           (local.get $152)
          )
         )
         (i32.store offset=64
          (local.get $4)
          (local.get $153)
         )
         (local.set $154
          (i32.load offset=56
           (local.get $4)
          )
         )
         (local.set $155
          (i32.const 1)
         )
         (local.set $156
          (i32.shl
           (local.get $154)
           (local.get $155)
          )
         )
         (i32.store offset=56
          (local.get $4)
          (local.get $156)
         )
         (br $label$21)
        )
       )
       (br $label$18)
      )
      (local.set $157
       (i32.const -1022)
      )
      (i32.store offset=64
       (local.get $4)
       (local.get $157)
      )
      (local.set $158
       (i32.load offset=76
        (local.get $4)
       )
      )
      (local.set $159
       (i32.const 11)
      )
      (local.set $160
       (i32.shl
        (local.get $158)
        (local.get $159)
       )
      )
      (i32.store offset=56
       (local.get $4)
       (local.get $160)
      )
      (block $label$22
       (loop $label$23
        (local.set $161
         (i32.load offset=56
          (local.get $4)
         )
        )
        (local.set $162
         (i32.const 0)
        )
        (local.set $163
         (local.get $161)
        )
        (local.set $164
         (local.get $162)
        )
        (local.set $165
         (i32.gt_s
          (local.get $163)
          (local.get $164)
         )
        )
        (local.set $166
         (i32.const 1)
        )
        (local.set $167
         (i32.and
          (local.get $165)
          (local.get $166)
         )
        )
        (br_if $label$22
         (i32.eqz
          (local.get $167)
         )
        )
        (local.set $168
         (i32.load offset=64
          (local.get $4)
         )
        )
        (local.set $169
         (i32.const 1)
        )
        (local.set $170
         (i32.sub
          (local.get $168)
          (local.get $169)
         )
        )
        (i32.store offset=64
         (local.get $4)
         (local.get $170)
        )
        (local.set $171
         (i32.load offset=56
          (local.get $4)
         )
        )
        (local.set $172
         (i32.const 1)
        )
        (local.set $173
         (i32.shl
          (local.get $171)
          (local.get $172)
         )
        )
        (i32.store offset=56
         (local.get $4)
         (local.get $173)
        )
        (br $label$23)
       )
      )
     )
     (br $label$16)
    )
    (local.set $174
     (i32.load offset=76
      (local.get $4)
     )
    )
    (local.set $175
     (i32.const 20)
    )
    (local.set $176
     (i32.shr_s
      (local.get $174)
      (local.get $175)
     )
    )
    (local.set $177
     (i32.const 1023)
    )
    (local.set $178
     (i32.sub
      (local.get $176)
      (local.get $177)
     )
    )
    (i32.store offset=64
     (local.get $4)
     (local.get $178)
    )
   )
   (local.set $179
    (i32.load offset=68
     (local.get $4)
    )
   )
   (local.set $180
    (i32.const -1022)
   )
   (local.set $181
    (local.get $179)
   )
   (local.set $182
    (local.get $180)
   )
   (local.set $183
    (i32.ge_s
     (local.get $181)
     (local.get $182)
    )
   )
   (local.set $184
    (i32.const 1)
   )
   (local.set $185
    (i32.and
     (local.get $183)
     (local.get $184)
    )
   )
   (block $label$24
    (block $label$25
     (br_if $label$25
      (i32.eqz
       (local.get $185)
      )
     )
     (local.set $186
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $187
      (i32.const 1048575)
     )
     (local.set $188
      (i32.and
       (local.get $186)
       (local.get $187)
      )
     )
     (local.set $189
      (i32.const 1048576)
     )
     (local.set $190
      (i32.or
       (local.get $188)
       (local.get $189)
      )
     )
     (i32.store offset=80
      (local.get $4)
      (local.get $190)
     )
     (br $label$24)
    )
    (local.set $191
     (i32.load offset=68
      (local.get $4)
     )
    )
    (local.set $192
     (i32.const -1022)
    )
    (local.set $193
     (i32.sub
      (local.get $192)
      (local.get $191)
     )
    )
    (i32.store offset=84
     (local.get $4)
     (local.get $193)
    )
    (local.set $194
     (i32.load offset=84
      (local.get $4)
     )
    )
    (local.set $195
     (i32.const 31)
    )
    (local.set $196
     (local.get $194)
    )
    (local.set $197
     (local.get $195)
    )
    (local.set $198
     (i32.le_s
      (local.get $196)
      (local.get $197)
     )
    )
    (local.set $199
     (i32.const 1)
    )
    (local.set $200
     (i32.and
      (local.get $198)
      (local.get $199)
     )
    )
    (block $label$26
     (block $label$27
      (br_if $label$27
       (i32.eqz
        (local.get $200)
       )
      )
      (local.set $201
       (i32.load offset=80
        (local.get $4)
       )
      )
      (local.set $202
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $203
       (i32.shl
        (local.get $201)
        (local.get $202)
       )
      )
      (local.set $204
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $205
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $206
       (i32.const 32)
      )
      (local.set $207
       (i32.sub
        (local.get $206)
        (local.get $205)
       )
      )
      (local.set $208
       (i32.shr_u
        (local.get $204)
        (local.get $207)
       )
      )
      (local.set $209
       (i32.or
        (local.get $203)
        (local.get $208)
       )
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $209)
      )
      (local.set $210
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $211
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $212
       (i32.shl
        (local.get $211)
        (local.get $210)
       )
      )
      (i32.store offset=52
       (local.get $4)
       (local.get $212)
      )
      (br $label$26)
     )
     (local.set $213
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $214
      (i32.load offset=84
       (local.get $4)
      )
     )
     (local.set $215
      (i32.const 32)
     )
     (local.set $216
      (i32.sub
       (local.get $214)
       (local.get $215)
      )
     )
     (local.set $217
      (i32.shl
       (local.get $213)
       (local.get $216)
      )
     )
     (i32.store offset=80
      (local.get $4)
      (local.get $217)
     )
     (local.set $218
      (i32.const 0)
     )
     (i32.store offset=52
      (local.get $4)
      (local.get $218)
     )
    )
   )
   (local.set $219
    (i32.load offset=64
     (local.get $4)
    )
   )
   (local.set $220
    (i32.const -1022)
   )
   (local.set $221
    (local.get $219)
   )
   (local.set $222
    (local.get $220)
   )
   (local.set $223
    (i32.ge_s
     (local.get $221)
     (local.get $222)
    )
   )
   (local.set $224
    (i32.const 1)
   )
   (local.set $225
    (i32.and
     (local.get $223)
     (local.get $224)
    )
   )
   (block $label$28
    (block $label$29
     (br_if $label$29
      (i32.eqz
       (local.get $225)
      )
     )
     (local.set $226
      (i32.load offset=76
       (local.get $4)
      )
     )
     (local.set $227
      (i32.const 1048575)
     )
     (local.set $228
      (i32.and
       (local.get $226)
       (local.get $227)
      )
     )
     (local.set $229
      (i32.const 1048576)
     )
     (local.set $230
      (i32.or
       (local.get $228)
       (local.get $229)
      )
     )
     (i32.store offset=76
      (local.get $4)
      (local.get $230)
     )
     (br $label$28)
    )
    (local.set $231
     (i32.load offset=64
      (local.get $4)
     )
    )
    (local.set $232
     (i32.const -1022)
    )
    (local.set $233
     (i32.sub
      (local.get $232)
      (local.get $231)
     )
    )
    (i32.store offset=84
     (local.get $4)
     (local.get $233)
    )
    (local.set $234
     (i32.load offset=84
      (local.get $4)
     )
    )
    (local.set $235
     (i32.const 31)
    )
    (local.set $236
     (local.get $234)
    )
    (local.set $237
     (local.get $235)
    )
    (local.set $238
     (i32.le_s
      (local.get $236)
      (local.get $237)
     )
    )
    (local.set $239
     (i32.const 1)
    )
    (local.set $240
     (i32.and
      (local.get $238)
      (local.get $239)
     )
    )
    (block $label$30
     (block $label$31
      (br_if $label$31
       (i32.eqz
        (local.get $240)
       )
      )
      (local.set $241
       (i32.load offset=76
        (local.get $4)
       )
      )
      (local.set $242
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $243
       (i32.shl
        (local.get $241)
        (local.get $242)
       )
      )
      (local.set $244
       (i32.load offset=48
        (local.get $4)
       )
      )
      (local.set $245
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $246
       (i32.const 32)
      )
      (local.set $247
       (i32.sub
        (local.get $246)
        (local.get $245)
       )
      )
      (local.set $248
       (i32.shr_u
        (local.get $244)
        (local.get $247)
       )
      )
      (local.set $249
       (i32.or
        (local.get $243)
        (local.get $248)
       )
      )
      (i32.store offset=76
       (local.get $4)
       (local.get $249)
      )
      (local.set $250
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $251
       (i32.load offset=48
        (local.get $4)
       )
      )
      (local.set $252
       (i32.shl
        (local.get $251)
        (local.get $250)
       )
      )
      (i32.store offset=48
       (local.get $4)
       (local.get $252)
      )
      (br $label$30)
     )
     (local.set $253
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $254
      (i32.load offset=84
       (local.get $4)
      )
     )
     (local.set $255
      (i32.const 32)
     )
     (local.set $256
      (i32.sub
       (local.get $254)
       (local.get $255)
      )
     )
     (local.set $257
      (i32.shl
       (local.get $253)
       (local.get $256)
      )
     )
     (i32.store offset=76
      (local.get $4)
      (local.get $257)
     )
     (local.set $258
      (i32.const 0)
     )
     (i32.store offset=48
      (local.get $4)
      (local.get $258)
     )
    )
   )
   (local.set $259
    (i32.load offset=68
     (local.get $4)
    )
   )
   (local.set $260
    (i32.load offset=64
     (local.get $4)
    )
   )
   (local.set $261
    (i32.sub
     (local.get $259)
     (local.get $260)
    )
   )
   (i32.store offset=84
    (local.get $4)
    (local.get $261)
   )
   (block $label$32
    (loop $label$33
     (local.set $262
      (i32.load offset=84
       (local.get $4)
      )
     )
     (local.set $263
      (i32.const -1)
     )
     (local.set $264
      (i32.add
       (local.get $262)
       (local.get $263)
      )
     )
     (i32.store offset=84
      (local.get $4)
      (local.get $264)
     )
     (br_if $label$32
      (i32.eqz
       (local.get $262)
      )
     )
     (local.set $265
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $266
      (i32.load offset=76
       (local.get $4)
      )
     )
     (local.set $267
      (i32.sub
       (local.get $265)
       (local.get $266)
      )
     )
     (i32.store offset=72
      (local.get $4)
      (local.get $267)
     )
     (local.set $268
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $269
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $270
      (i32.sub
       (local.get $268)
       (local.get $269)
      )
     )
     (i32.store offset=44
      (local.get $4)
      (local.get $270)
     )
     (local.set $271
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $272
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $273
      (local.get $271)
     )
     (local.set $274
      (local.get $272)
     )
     (local.set $275
      (i32.lt_u
       (local.get $273)
       (local.get $274)
      )
     )
     (local.set $276
      (i32.const 1)
     )
     (local.set $277
      (i32.and
       (local.get $275)
       (local.get $276)
      )
     )
     (block $label$34
      (br_if $label$34
       (i32.eqz
        (local.get $277)
       )
      )
      (local.set $278
       (i32.load offset=72
        (local.get $4)
       )
      )
      (local.set $279
       (i32.const 1)
      )
      (local.set $280
       (i32.sub
        (local.get $278)
        (local.get $279)
       )
      )
      (i32.store offset=72
       (local.get $4)
       (local.get $280)
      )
     )
     (local.set $281
      (i32.load offset=72
       (local.get $4)
      )
     )
     (local.set $282
      (i32.const 0)
     )
     (local.set $283
      (local.get $281)
     )
     (local.set $284
      (local.get $282)
     )
     (local.set $285
      (i32.lt_s
       (local.get $283)
       (local.get $284)
      )
     )
     (local.set $286
      (i32.const 1)
     )
     (local.set $287
      (i32.and
       (local.get $285)
       (local.get $286)
      )
     )
     (block $label$35
      (block $label$36
       (br_if $label$36
        (i32.eqz
         (local.get $287)
        )
       )
       (local.set $288
        (i32.load offset=80
         (local.get $4)
        )
       )
       (local.set $289
        (i32.load offset=80
         (local.get $4)
        )
       )
       (local.set $290
        (i32.add
         (local.get $288)
         (local.get $289)
        )
       )
       (local.set $291
        (i32.load offset=52
         (local.get $4)
        )
       )
       (local.set $292
        (i32.const 31)
       )
       (local.set $293
        (i32.shr_u
         (local.get $291)
         (local.get $292)
        )
       )
       (local.set $294
        (i32.add
         (local.get $290)
         (local.get $293)
        )
       )
       (i32.store offset=80
        (local.get $4)
        (local.get $294)
       )
       (local.set $295
        (i32.load offset=52
         (local.get $4)
        )
       )
       (local.set $296
        (i32.load offset=52
         (local.get $4)
        )
       )
       (local.set $297
        (i32.add
         (local.get $295)
         (local.get $296)
        )
       )
       (i32.store offset=52
        (local.get $4)
        (local.get $297)
       )
       (br $label$35)
      )
      (local.set $298
       (i32.load offset=72
        (local.get $4)
       )
      )
      (local.set $299
       (i32.load offset=44
        (local.get $4)
       )
      )
      (local.set $300
       (i32.or
        (local.get $298)
        (local.get $299)
       )
      )
      (block $label$37
       (br_if $label$37
        (local.get $300)
       )
       (local.set $301
        (i32.load offset=60
         (local.get $4)
        )
       )
       (local.set $302
        (i32.const 31)
       )
       (local.set $303
        (i32.shr_u
         (local.get $301)
         (local.get $302)
        )
       )
       (local.set $304
        (i32.const 1104)
       )
       (local.set $305
        (i32.const 3)
       )
       (local.set $306
        (i32.shl
         (local.get $303)
         (local.get $305)
        )
       )
       (local.set $307
        (i32.add
         (local.get $304)
         (local.get $306)
        )
       )
       (local.set $308
        (f64.load
         (local.get $307)
        )
       )
       (f64.store offset=104
        (local.get $4)
        (local.get $308)
       )
       (br $label$1)
      )
      (local.set $309
       (i32.load offset=72
        (local.get $4)
       )
      )
      (local.set $310
       (i32.load offset=72
        (local.get $4)
       )
      )
      (local.set $311
       (i32.add
        (local.get $309)
        (local.get $310)
       )
      )
      (local.set $312
       (i32.load offset=44
        (local.get $4)
       )
      )
      (local.set $313
       (i32.const 31)
      )
      (local.set $314
       (i32.shr_u
        (local.get $312)
        (local.get $313)
       )
      )
      (local.set $315
       (i32.add
        (local.get $311)
        (local.get $314)
       )
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $315)
      )
      (local.set $316
       (i32.load offset=44
        (local.get $4)
       )
      )
      (local.set $317
       (i32.load offset=44
        (local.get $4)
       )
      )
      (local.set $318
       (i32.add
        (local.get $316)
        (local.get $317)
       )
      )
      (i32.store offset=52
       (local.get $4)
       (local.get $318)
      )
     )
     (br $label$33)
    )
   )
   (local.set $319
    (i32.load offset=80
     (local.get $4)
    )
   )
   (local.set $320
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $321
    (i32.sub
     (local.get $319)
     (local.get $320)
    )
   )
   (i32.store offset=72
    (local.get $4)
    (local.get $321)
   )
   (local.set $322
    (i32.load offset=52
     (local.get $4)
    )
   )
   (local.set $323
    (i32.load offset=48
     (local.get $4)
    )
   )
   (local.set $324
    (i32.sub
     (local.get $322)
     (local.get $323)
    )
   )
   (i32.store offset=44
    (local.get $4)
    (local.get $324)
   )
   (local.set $325
    (i32.load offset=52
     (local.get $4)
    )
   )
   (local.set $326
    (i32.load offset=48
     (local.get $4)
    )
   )
   (local.set $327
    (local.get $325)
   )
   (local.set $328
    (local.get $326)
   )
   (local.set $329
    (i32.lt_u
     (local.get $327)
     (local.get $328)
    )
   )
   (local.set $330
    (i32.const 1)
   )
   (local.set $331
    (i32.and
     (local.get $329)
     (local.get $330)
    )
   )
   (block $label$38
    (br_if $label$38
     (i32.eqz
      (local.get $331)
     )
    )
    (local.set $332
     (i32.load offset=72
      (local.get $4)
     )
    )
    (local.set $333
     (i32.const 1)
    )
    (local.set $334
     (i32.sub
      (local.get $332)
      (local.get $333)
     )
    )
    (i32.store offset=72
     (local.get $4)
     (local.get $334)
    )
   )
   (local.set $335
    (i32.load offset=72
     (local.get $4)
    )
   )
   (local.set $336
    (i32.const 0)
   )
   (local.set $337
    (local.get $335)
   )
   (local.set $338
    (local.get $336)
   )
   (local.set $339
    (i32.ge_s
     (local.get $337)
     (local.get $338)
    )
   )
   (local.set $340
    (i32.const 1)
   )
   (local.set $341
    (i32.and
     (local.get $339)
     (local.get $340)
    )
   )
   (block $label$39
    (br_if $label$39
     (i32.eqz
      (local.get $341)
     )
    )
    (local.set $342
     (i32.load offset=72
      (local.get $4)
     )
    )
    (i32.store offset=80
     (local.get $4)
     (local.get $342)
    )
    (local.set $343
     (i32.load offset=44
      (local.get $4)
     )
    )
    (i32.store offset=52
     (local.get $4)
     (local.get $343)
    )
   )
   (local.set $344
    (i32.load offset=80
     (local.get $4)
    )
   )
   (local.set $345
    (i32.load offset=52
     (local.get $4)
    )
   )
   (local.set $346
    (i32.or
     (local.get $344)
     (local.get $345)
    )
   )
   (block $label$40
    (br_if $label$40
     (local.get $346)
    )
    (local.set $347
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $348
     (i32.const 31)
    )
    (local.set $349
     (i32.shr_u
      (local.get $347)
      (local.get $348)
     )
    )
    (local.set $350
     (i32.const 1104)
    )
    (local.set $351
     (i32.const 3)
    )
    (local.set $352
     (i32.shl
      (local.get $349)
      (local.get $351)
     )
    )
    (local.set $353
     (i32.add
      (local.get $350)
      (local.get $352)
     )
    )
    (local.set $354
     (f64.load
      (local.get $353)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $354)
    )
    (br $label$1)
   )
   (block $label$41
    (loop $label$42
     (local.set $355
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $356
      (i32.const 1048576)
     )
     (local.set $357
      (local.get $355)
     )
     (local.set $358
      (local.get $356)
     )
     (local.set $359
      (i32.lt_s
       (local.get $357)
       (local.get $358)
      )
     )
     (local.set $360
      (i32.const 1)
     )
     (local.set $361
      (i32.and
       (local.get $359)
       (local.get $360)
      )
     )
     (br_if $label$41
      (i32.eqz
       (local.get $361)
      )
     )
     (local.set $362
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $363
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $364
      (i32.add
       (local.get $362)
       (local.get $363)
      )
     )
     (local.set $365
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $366
      (i32.const 31)
     )
     (local.set $367
      (i32.shr_u
       (local.get $365)
       (local.get $366)
      )
     )
     (local.set $368
      (i32.add
       (local.get $364)
       (local.get $367)
      )
     )
     (i32.store offset=80
      (local.get $4)
      (local.get $368)
     )
     (local.set $369
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $370
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $371
      (i32.add
       (local.get $369)
       (local.get $370)
      )
     )
     (i32.store offset=52
      (local.get $4)
      (local.get $371)
     )
     (local.set $372
      (i32.load offset=64
       (local.get $4)
      )
     )
     (local.set $373
      (i32.const 1)
     )
     (local.set $374
      (i32.sub
       (local.get $372)
       (local.get $373)
      )
     )
     (i32.store offset=64
      (local.get $4)
      (local.get $374)
     )
     (br $label$42)
    )
   )
   (local.set $375
    (i32.load offset=64
     (local.get $4)
    )
   )
   (local.set $376
    (i32.const -1022)
   )
   (local.set $377
    (local.get $375)
   )
   (local.set $378
    (local.get $376)
   )
   (local.set $379
    (i32.ge_s
     (local.get $377)
     (local.get $378)
    )
   )
   (local.set $380
    (i32.const 1)
   )
   (local.set $381
    (i32.and
     (local.get $379)
     (local.get $380)
    )
   )
   (block $label$43
    (block $label$44
     (br_if $label$44
      (i32.eqz
       (local.get $381)
      )
     )
     (local.set $382
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $383
      (i32.const 1048576)
     )
     (local.set $384
      (i32.sub
       (local.get $382)
       (local.get $383)
      )
     )
     (local.set $385
      (i32.load offset=64
       (local.get $4)
      )
     )
     (local.set $386
      (i32.const 1023)
     )
     (local.set $387
      (i32.add
       (local.get $385)
       (local.get $386)
      )
     )
     (local.set $388
      (i32.const 20)
     )
     (local.set $389
      (i32.shl
       (local.get $387)
       (local.get $388)
      )
     )
     (local.set $390
      (i32.or
       (local.get $384)
       (local.get $389)
      )
     )
     (i32.store offset=80
      (local.get $4)
      (local.get $390)
     )
     (local.set $391
      (i32.load offset=80
       (local.get $4)
      )
     )
     (local.set $392
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $393
      (i32.or
       (local.get $391)
       (local.get $392)
      )
     )
     (i32.store offset=20
      (local.get $4)
      (local.get $393)
     )
     (local.set $394
      (i32.load offset=52
       (local.get $4)
      )
     )
     (i32.store offset=16
      (local.get $4)
      (local.get $394)
     )
     (local.set $395
      (f64.load offset=16
       (local.get $4)
      )
     )
     (f64.store offset=96
      (local.get $4)
      (local.get $395)
     )
     (br $label$43)
    )
    (local.set $396
     (i32.load offset=64
      (local.get $4)
     )
    )
    (local.set $397
     (i32.const -1022)
    )
    (local.set $398
     (i32.sub
      (local.get $397)
      (local.get $396)
     )
    )
    (i32.store offset=84
     (local.get $4)
     (local.get $398)
    )
    (local.set $399
     (i32.load offset=84
      (local.get $4)
     )
    )
    (local.set $400
     (i32.const 20)
    )
    (local.set $401
     (local.get $399)
    )
    (local.set $402
     (local.get $400)
    )
    (local.set $403
     (i32.le_s
      (local.get $401)
      (local.get $402)
     )
    )
    (local.set $404
     (i32.const 1)
    )
    (local.set $405
     (i32.and
      (local.get $403)
      (local.get $404)
     )
    )
    (block $label$45
     (block $label$46
      (br_if $label$46
       (i32.eqz
        (local.get $405)
       )
      )
      (local.set $406
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $407
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $408
       (i32.shr_u
        (local.get $406)
        (local.get $407)
       )
      )
      (local.set $409
       (i32.load offset=80
        (local.get $4)
       )
      )
      (local.set $410
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $411
       (i32.const 32)
      )
      (local.set $412
       (i32.sub
        (local.get $411)
        (local.get $410)
       )
      )
      (local.set $413
       (i32.shl
        (local.get $409)
        (local.get $412)
       )
      )
      (local.set $414
       (i32.or
        (local.get $408)
        (local.get $413)
       )
      )
      (i32.store offset=52
       (local.get $4)
       (local.get $414)
      )
      (local.set $415
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $416
       (i32.load offset=80
        (local.get $4)
       )
      )
      (local.set $417
       (i32.shr_s
        (local.get $416)
        (local.get $415)
       )
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $417)
      )
      (br $label$45)
     )
     (local.set $418
      (i32.load offset=84
       (local.get $4)
      )
     )
     (local.set $419
      (i32.const 31)
     )
     (local.set $420
      (local.get $418)
     )
     (local.set $421
      (local.get $419)
     )
     (local.set $422
      (i32.le_s
       (local.get $420)
       (local.get $421)
      )
     )
     (local.set $423
      (i32.const 1)
     )
     (local.set $424
      (i32.and
       (local.get $422)
       (local.get $423)
      )
     )
     (block $label$47
      (block $label$48
       (br_if $label$48
        (i32.eqz
         (local.get $424)
        )
       )
       (local.set $425
        (i32.load offset=80
         (local.get $4)
        )
       )
       (local.set $426
        (i32.load offset=84
         (local.get $4)
        )
       )
       (local.set $427
        (i32.const 32)
       )
       (local.set $428
        (i32.sub
         (local.get $427)
         (local.get $426)
        )
       )
       (local.set $429
        (i32.shl
         (local.get $425)
         (local.get $428)
        )
       )
       (local.set $430
        (i32.load offset=52
         (local.get $4)
        )
       )
       (local.set $431
        (i32.load offset=84
         (local.get $4)
        )
       )
       (local.set $432
        (i32.shr_u
         (local.get $430)
         (local.get $431)
        )
       )
       (local.set $433
        (i32.or
         (local.get $429)
         (local.get $432)
        )
       )
       (i32.store offset=52
        (local.get $4)
        (local.get $433)
       )
       (local.set $434
        (i32.load offset=60
         (local.get $4)
        )
       )
       (i32.store offset=80
        (local.get $4)
        (local.get $434)
       )
       (br $label$47)
      )
      (local.set $435
       (i32.load offset=80
        (local.get $4)
       )
      )
      (local.set $436
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $437
       (i32.const 32)
      )
      (local.set $438
       (i32.sub
        (local.get $436)
        (local.get $437)
       )
      )
      (local.set $439
       (i32.shr_s
        (local.get $435)
        (local.get $438)
       )
      )
      (i32.store offset=52
       (local.get $4)
       (local.get $439)
      )
      (local.set $440
       (i32.load offset=60
        (local.get $4)
       )
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $440)
      )
     )
    )
    (local.set $441
     (i32.load offset=80
      (local.get $4)
     )
    )
    (local.set $442
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $443
     (i32.or
      (local.get $441)
      (local.get $442)
     )
    )
    (i32.store offset=12
     (local.get $4)
     (local.get $443)
    )
    (local.set $444
     (i32.load offset=52
      (local.get $4)
     )
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $444)
    )
    (local.set $445
     (f64.load offset=8
      (local.get $4)
     )
    )
    (f64.store offset=96
     (local.get $4)
     (local.get $445)
    )
    (local.set $446
     (f64.load offset=96
      (local.get $4)
     )
    )
    (local.set $447
     (f64.const 1)
    )
    (local.set $448
     (f64.mul
      (local.get $446)
      (local.get $447)
     )
    )
    (f64.store offset=96
     (local.get $4)
     (local.get $448)
    )
   )
   (local.set $449
    (f64.load offset=96
     (local.get $4)
    )
   )
   (f64.store offset=104
    (local.get $4)
    (local.get $449)
   )
  )
  (local.set $450
   (f64.load offset=104
    (local.get $4)
   )
  )
  (return
   (local.get $450)
  )
 )
 (func $fmodf (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 f32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 f32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 f32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 i32)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 f32)
  (local $185 i32)
  (local $186 i32)
  (local $187 i32)
  (local $188 i32)
  (local $189 i32)
  (local $190 i32)
  (local $191 i32)
  (local $192 i32)
  (local $193 i32)
  (local $194 i32)
  (local $195 i32)
  (local $196 i32)
  (local $197 i32)
  (local $198 i32)
  (local $199 i32)
  (local $200 i32)
  (local $201 i32)
  (local $202 i32)
  (local $203 i32)
  (local $204 i32)
  (local $205 i32)
  (local $206 i32)
  (local $207 f32)
  (local $208 i32)
  (local $209 i32)
  (local $210 i32)
  (local $211 i32)
  (local $212 i32)
  (local $213 i32)
  (local $214 i32)
  (local $215 i32)
  (local $216 i32)
  (local $217 i32)
  (local $218 i32)
  (local $219 i32)
  (local $220 i32)
  (local $221 i32)
  (local $222 i32)
  (local $223 i32)
  (local $224 i32)
  (local $225 i32)
  (local $226 i32)
  (local $227 i32)
  (local $228 i32)
  (local $229 i32)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 i32)
  (local $234 i32)
  (local $235 i32)
  (local $236 i32)
  (local $237 i32)
  (local $238 i32)
  (local $239 i32)
  (local $240 f32)
  (local $241 i32)
  (local $242 i32)
  (local $243 i32)
  (local $244 i32)
  (local $245 i32)
  (local $246 i32)
  (local $247 i32)
  (local $248 i32)
  (local $249 i32)
  (local $250 f32)
  (local $251 f32)
  (local $252 f32)
  (local $253 f32)
  (local $254 f32)
  (local $255 f32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 80)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (f32.store offset=72
   (local.get $4)
   (local.get $0)
  )
  (f32.store offset=68
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=72
    (local.get $4)
   )
  )
  (f32.store offset=32
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=32
    (local.get $4)
   )
  )
  (i32.store offset=60
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (f32.load offset=68
    (local.get $4)
   )
  )
  (f32.store offset=24
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=24
    (local.get $4)
   )
  )
  (i32.store offset=56
   (local.get $4)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=60
    (local.get $4)
   )
  )
  (local.set $10
   (i32.const -2147483648)
  )
  (local.set $11
   (i32.and
    (local.get $9)
    (local.get $10)
   )
  )
  (i32.store offset=40
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=40
    (local.get $4)
   )
  )
  (local.set $13
   (i32.load offset=60
    (local.get $4)
   )
  )
  (local.set $14
   (i32.xor
    (local.get $13)
    (local.get $12)
   )
  )
  (i32.store offset=60
   (local.get $4)
   (local.get $14)
  )
  (local.set $15
   (i32.load offset=56
    (local.get $4)
   )
  )
  (local.set $16
   (i32.const 2147483647)
  )
  (local.set $17
   (i32.and
    (local.get $15)
    (local.get $16)
   )
  )
  (i32.store offset=56
   (local.get $4)
   (local.get $17)
  )
  (local.set $18
   (i32.load offset=56
    (local.get $4)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (local.get $18)
      )
     )
     (local.set $19
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $20
      (i32.const 2139095040)
     )
     (local.set $21
      (local.get $19)
     )
     (local.set $22
      (local.get $20)
     )
     (local.set $23
      (i32.ge_s
       (local.get $21)
       (local.get $22)
      )
     )
     (local.set $24
      (i32.const 1)
     )
     (local.set $25
      (i32.and
       (local.get $23)
       (local.get $24)
      )
     )
     (br_if $label$3
      (local.get $25)
     )
     (local.set $26
      (i32.load offset=56
       (local.get $4)
      )
     )
     (local.set $27
      (i32.const 2139095040)
     )
     (local.set $28
      (local.get $26)
     )
     (local.set $29
      (local.get $27)
     )
     (local.set $30
      (i32.gt_s
       (local.get $28)
       (local.get $29)
      )
     )
     (local.set $31
      (i32.const 1)
     )
     (local.set $32
      (i32.and
       (local.get $30)
       (local.get $31)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $32)
      )
     )
    )
    (local.set $33
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $34
     (f32.load offset=68
      (local.get $4)
     )
    )
    (local.set $35
     (f32.mul
      (local.get $33)
      (local.get $34)
     )
    )
    (local.set $36
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $37
     (f32.load offset=68
      (local.get $4)
     )
    )
    (local.set $38
     (f32.mul
      (local.get $36)
      (local.get $37)
     )
    )
    (local.set $39
     (f32.div
      (local.get $35)
      (local.get $38)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $39)
    )
    (br $label$1)
   )
   (local.set $40
    (i32.load offset=60
     (local.get $4)
    )
   )
   (local.set $41
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $42
    (local.get $40)
   )
   (local.set $43
    (local.get $41)
   )
   (local.set $44
    (i32.lt_s
     (local.get $42)
     (local.get $43)
    )
   )
   (local.set $45
    (i32.const 1)
   )
   (local.set $46
    (i32.and
     (local.get $44)
     (local.get $45)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $46)
     )
    )
    (local.set $47
     (f32.load offset=72
      (local.get $4)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $47)
    )
    (br $label$1)
   )
   (local.set $48
    (i32.load offset=60
     (local.get $4)
    )
   )
   (local.set $49
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $50
    (local.get $48)
   )
   (local.set $51
    (local.get $49)
   )
   (local.set $52
    (i32.eq
     (local.get $50)
     (local.get $51)
    )
   )
   (local.set $53
    (i32.const 1)
   )
   (local.set $54
    (i32.and
     (local.get $52)
     (local.get $53)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $54)
     )
    )
    (local.set $55
     (i32.load offset=40
      (local.get $4)
     )
    )
    (local.set $56
     (i32.const 31)
    )
    (local.set $57
     (i32.shr_u
      (local.get $55)
      (local.get $56)
     )
    )
    (local.set $58
     (i32.const 1120)
    )
    (local.set $59
     (i32.const 2)
    )
    (local.set $60
     (i32.shl
      (local.get $57)
      (local.get $59)
     )
    )
    (local.set $61
     (i32.add
      (local.get $58)
      (local.get $60)
     )
    )
    (local.set $62
     (f32.load
      (local.get $61)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $62)
    )
    (br $label$1)
   )
   (local.set $63
    (i32.load offset=60
     (local.get $4)
    )
   )
   (local.set $64
    (i32.const 8388608)
   )
   (local.set $65
    (local.get $63)
   )
   (local.set $66
    (local.get $64)
   )
   (local.set $67
    (i32.lt_s
     (local.get $65)
     (local.get $66)
    )
   )
   (local.set $68
    (i32.const 1)
   )
   (local.set $69
    (i32.and
     (local.get $67)
     (local.get $68)
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $69)
      )
     )
     (local.set $70
      (i32.const -126)
     )
     (i32.store offset=48
      (local.get $4)
      (local.get $70)
     )
     (local.set $71
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $72
      (i32.const 8)
     )
     (local.set $73
      (i32.shl
       (local.get $71)
       (local.get $72)
      )
     )
     (i32.store offset=36
      (local.get $4)
      (local.get $73)
     )
     (block $label$8
      (loop $label$9
       (local.set $74
        (i32.load offset=36
         (local.get $4)
        )
       )
       (local.set $75
        (i32.const 0)
       )
       (local.set $76
        (local.get $74)
       )
       (local.set $77
        (local.get $75)
       )
       (local.set $78
        (i32.gt_s
         (local.get $76)
         (local.get $77)
        )
       )
       (local.set $79
        (i32.const 1)
       )
       (local.set $80
        (i32.and
         (local.get $78)
         (local.get $79)
        )
       )
       (br_if $label$8
        (i32.eqz
         (local.get $80)
        )
       )
       (local.set $81
        (i32.load offset=48
         (local.get $4)
        )
       )
       (local.set $82
        (i32.const 1)
       )
       (local.set $83
        (i32.sub
         (local.get $81)
         (local.get $82)
        )
       )
       (i32.store offset=48
        (local.get $4)
        (local.get $83)
       )
       (local.set $84
        (i32.load offset=36
         (local.get $4)
        )
       )
       (local.set $85
        (i32.const 1)
       )
       (local.set $86
        (i32.shl
         (local.get $84)
         (local.get $85)
        )
       )
       (i32.store offset=36
        (local.get $4)
        (local.get $86)
       )
       (br $label$9)
      )
     )
     (br $label$6)
    )
    (local.set $87
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $88
     (i32.const 23)
    )
    (local.set $89
     (i32.shr_s
      (local.get $87)
      (local.get $88)
     )
    )
    (local.set $90
     (i32.const 127)
    )
    (local.set $91
     (i32.sub
      (local.get $89)
      (local.get $90)
     )
    )
    (i32.store offset=48
     (local.get $4)
     (local.get $91)
    )
   )
   (local.set $92
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $93
    (i32.const 8388608)
   )
   (local.set $94
    (local.get $92)
   )
   (local.set $95
    (local.get $93)
   )
   (local.set $96
    (i32.lt_s
     (local.get $94)
     (local.get $95)
    )
   )
   (local.set $97
    (i32.const 1)
   )
   (local.set $98
    (i32.and
     (local.get $96)
     (local.get $97)
    )
   )
   (block $label$10
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (local.get $98)
      )
     )
     (local.set $99
      (i32.const -126)
     )
     (i32.store offset=44
      (local.get $4)
      (local.get $99)
     )
     (local.set $100
      (i32.load offset=56
       (local.get $4)
      )
     )
     (local.set $101
      (i32.const 8)
     )
     (local.set $102
      (i32.shl
       (local.get $100)
       (local.get $101)
      )
     )
     (i32.store offset=36
      (local.get $4)
      (local.get $102)
     )
     (block $label$12
      (loop $label$13
       (local.set $103
        (i32.load offset=36
         (local.get $4)
        )
       )
       (local.set $104
        (i32.const 0)
       )
       (local.set $105
        (local.get $103)
       )
       (local.set $106
        (local.get $104)
       )
       (local.set $107
        (i32.ge_s
         (local.get $105)
         (local.get $106)
        )
       )
       (local.set $108
        (i32.const 1)
       )
       (local.set $109
        (i32.and
         (local.get $107)
         (local.get $108)
        )
       )
       (br_if $label$12
        (i32.eqz
         (local.get $109)
        )
       )
       (local.set $110
        (i32.load offset=44
         (local.get $4)
        )
       )
       (local.set $111
        (i32.const 1)
       )
       (local.set $112
        (i32.sub
         (local.get $110)
         (local.get $111)
        )
       )
       (i32.store offset=44
        (local.get $4)
        (local.get $112)
       )
       (local.set $113
        (i32.load offset=36
         (local.get $4)
        )
       )
       (local.set $114
        (i32.const 1)
       )
       (local.set $115
        (i32.shl
         (local.get $113)
         (local.get $114)
        )
       )
       (i32.store offset=36
        (local.get $4)
        (local.get $115)
       )
       (br $label$13)
      )
     )
     (br $label$10)
    )
    (local.set $116
     (i32.load offset=56
      (local.get $4)
     )
    )
    (local.set $117
     (i32.const 23)
    )
    (local.set $118
     (i32.shr_s
      (local.get $116)
      (local.get $117)
     )
    )
    (local.set $119
     (i32.const 127)
    )
    (local.set $120
     (i32.sub
      (local.get $118)
      (local.get $119)
     )
    )
    (i32.store offset=44
     (local.get $4)
     (local.get $120)
    )
   )
   (local.set $121
    (i32.load offset=48
     (local.get $4)
    )
   )
   (local.set $122
    (i32.const -126)
   )
   (local.set $123
    (local.get $121)
   )
   (local.set $124
    (local.get $122)
   )
   (local.set $125
    (i32.ge_s
     (local.get $123)
     (local.get $124)
    )
   )
   (local.set $126
    (i32.const 1)
   )
   (local.set $127
    (i32.and
     (local.get $125)
     (local.get $126)
    )
   )
   (block $label$14
    (block $label$15
     (br_if $label$15
      (i32.eqz
       (local.get $127)
      )
     )
     (local.set $128
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $129
      (i32.const 8388607)
     )
     (local.set $130
      (i32.and
       (local.get $128)
       (local.get $129)
      )
     )
     (local.set $131
      (i32.const 8388608)
     )
     (local.set $132
      (i32.or
       (local.get $130)
       (local.get $131)
      )
     )
     (i32.store offset=60
      (local.get $4)
      (local.get $132)
     )
     (br $label$14)
    )
    (local.set $133
     (i32.load offset=48
      (local.get $4)
     )
    )
    (local.set $134
     (i32.const -126)
    )
    (local.set $135
     (i32.sub
      (local.get $134)
      (local.get $133)
     )
    )
    (i32.store offset=64
     (local.get $4)
     (local.get $135)
    )
    (local.set $136
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $137
     (i32.load offset=64
      (local.get $4)
     )
    )
    (local.set $138
     (i32.shl
      (local.get $136)
      (local.get $137)
     )
    )
    (i32.store offset=60
     (local.get $4)
     (local.get $138)
    )
   )
   (local.set $139
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $140
    (i32.const -126)
   )
   (local.set $141
    (local.get $139)
   )
   (local.set $142
    (local.get $140)
   )
   (local.set $143
    (i32.ge_s
     (local.get $141)
     (local.get $142)
    )
   )
   (local.set $144
    (i32.const 1)
   )
   (local.set $145
    (i32.and
     (local.get $143)
     (local.get $144)
    )
   )
   (block $label$16
    (block $label$17
     (br_if $label$17
      (i32.eqz
       (local.get $145)
      )
     )
     (local.set $146
      (i32.load offset=56
       (local.get $4)
      )
     )
     (local.set $147
      (i32.const 8388607)
     )
     (local.set $148
      (i32.and
       (local.get $146)
       (local.get $147)
      )
     )
     (local.set $149
      (i32.const 8388608)
     )
     (local.set $150
      (i32.or
       (local.get $148)
       (local.get $149)
      )
     )
     (i32.store offset=56
      (local.get $4)
      (local.get $150)
     )
     (br $label$16)
    )
    (local.set $151
     (i32.load offset=44
      (local.get $4)
     )
    )
    (local.set $152
     (i32.const -126)
    )
    (local.set $153
     (i32.sub
      (local.get $152)
      (local.get $151)
     )
    )
    (i32.store offset=64
     (local.get $4)
     (local.get $153)
    )
    (local.set $154
     (i32.load offset=56
      (local.get $4)
     )
    )
    (local.set $155
     (i32.load offset=64
      (local.get $4)
     )
    )
    (local.set $156
     (i32.shl
      (local.get $154)
      (local.get $155)
     )
    )
    (i32.store offset=56
     (local.get $4)
     (local.get $156)
    )
   )
   (local.set $157
    (i32.load offset=48
     (local.get $4)
    )
   )
   (local.set $158
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $159
    (i32.sub
     (local.get $157)
     (local.get $158)
    )
   )
   (i32.store offset=64
    (local.get $4)
    (local.get $159)
   )
   (block $label$18
    (loop $label$19
     (local.set $160
      (i32.load offset=64
       (local.get $4)
      )
     )
     (local.set $161
      (i32.const -1)
     )
     (local.set $162
      (i32.add
       (local.get $160)
       (local.get $161)
      )
     )
     (i32.store offset=64
      (local.get $4)
      (local.get $162)
     )
     (br_if $label$18
      (i32.eqz
       (local.get $160)
      )
     )
     (local.set $163
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $164
      (i32.load offset=56
       (local.get $4)
      )
     )
     (local.set $165
      (i32.sub
       (local.get $163)
       (local.get $164)
      )
     )
     (i32.store offset=52
      (local.get $4)
      (local.get $165)
     )
     (local.set $166
      (i32.load offset=52
       (local.get $4)
      )
     )
     (local.set $167
      (i32.const 0)
     )
     (local.set $168
      (local.get $166)
     )
     (local.set $169
      (local.get $167)
     )
     (local.set $170
      (i32.lt_s
       (local.get $168)
       (local.get $169)
      )
     )
     (local.set $171
      (i32.const 1)
     )
     (local.set $172
      (i32.and
       (local.get $170)
       (local.get $171)
      )
     )
     (block $label$20
      (block $label$21
       (br_if $label$21
        (i32.eqz
         (local.get $172)
        )
       )
       (local.set $173
        (i32.load offset=60
         (local.get $4)
        )
       )
       (local.set $174
        (i32.load offset=60
         (local.get $4)
        )
       )
       (local.set $175
        (i32.add
         (local.get $173)
         (local.get $174)
        )
       )
       (i32.store offset=60
        (local.get $4)
        (local.get $175)
       )
       (br $label$20)
      )
      (local.set $176
       (i32.load offset=52
        (local.get $4)
       )
      )
      (block $label$22
       (br_if $label$22
        (local.get $176)
       )
       (local.set $177
        (i32.load offset=40
         (local.get $4)
        )
       )
       (local.set $178
        (i32.const 31)
       )
       (local.set $179
        (i32.shr_u
         (local.get $177)
         (local.get $178)
        )
       )
       (local.set $180
        (i32.const 1120)
       )
       (local.set $181
        (i32.const 2)
       )
       (local.set $182
        (i32.shl
         (local.get $179)
         (local.get $181)
        )
       )
       (local.set $183
        (i32.add
         (local.get $180)
         (local.get $182)
        )
       )
       (local.set $184
        (f32.load
         (local.get $183)
        )
       )
       (f32.store offset=76
        (local.get $4)
        (local.get $184)
       )
       (br $label$1)
      )
      (local.set $185
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $186
       (i32.load offset=52
        (local.get $4)
       )
      )
      (local.set $187
       (i32.add
        (local.get $185)
        (local.get $186)
       )
      )
      (i32.store offset=60
       (local.get $4)
       (local.get $187)
      )
     )
     (br $label$19)
    )
   )
   (local.set $188
    (i32.load offset=60
     (local.get $4)
    )
   )
   (local.set $189
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $190
    (i32.sub
     (local.get $188)
     (local.get $189)
    )
   )
   (i32.store offset=52
    (local.get $4)
    (local.get $190)
   )
   (local.set $191
    (i32.load offset=52
     (local.get $4)
    )
   )
   (local.set $192
    (i32.const 0)
   )
   (local.set $193
    (local.get $191)
   )
   (local.set $194
    (local.get $192)
   )
   (local.set $195
    (i32.ge_s
     (local.get $193)
     (local.get $194)
    )
   )
   (local.set $196
    (i32.const 1)
   )
   (local.set $197
    (i32.and
     (local.get $195)
     (local.get $196)
    )
   )
   (block $label$23
    (br_if $label$23
     (i32.eqz
      (local.get $197)
     )
    )
    (local.set $198
     (i32.load offset=52
      (local.get $4)
     )
    )
    (i32.store offset=60
     (local.get $4)
     (local.get $198)
    )
   )
   (local.set $199
    (i32.load offset=60
     (local.get $4)
    )
   )
   (block $label$24
    (br_if $label$24
     (local.get $199)
    )
    (local.set $200
     (i32.load offset=40
      (local.get $4)
     )
    )
    (local.set $201
     (i32.const 31)
    )
    (local.set $202
     (i32.shr_u
      (local.get $200)
      (local.get $201)
     )
    )
    (local.set $203
     (i32.const 1120)
    )
    (local.set $204
     (i32.const 2)
    )
    (local.set $205
     (i32.shl
      (local.get $202)
      (local.get $204)
     )
    )
    (local.set $206
     (i32.add
      (local.get $203)
      (local.get $205)
     )
    )
    (local.set $207
     (f32.load
      (local.get $206)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $207)
    )
    (br $label$1)
   )
   (block $label$25
    (loop $label$26
     (local.set $208
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $209
      (i32.const 8388608)
     )
     (local.set $210
      (local.get $208)
     )
     (local.set $211
      (local.get $209)
     )
     (local.set $212
      (i32.lt_s
       (local.get $210)
       (local.get $211)
      )
     )
     (local.set $213
      (i32.const 1)
     )
     (local.set $214
      (i32.and
       (local.get $212)
       (local.get $213)
      )
     )
     (br_if $label$25
      (i32.eqz
       (local.get $214)
      )
     )
     (local.set $215
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $216
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $217
      (i32.add
       (local.get $215)
       (local.get $216)
      )
     )
     (i32.store offset=60
      (local.get $4)
      (local.get $217)
     )
     (local.set $218
      (i32.load offset=44
       (local.get $4)
      )
     )
     (local.set $219
      (i32.const 1)
     )
     (local.set $220
      (i32.sub
       (local.get $218)
       (local.get $219)
      )
     )
     (i32.store offset=44
      (local.get $4)
      (local.get $220)
     )
     (br $label$26)
    )
   )
   (local.set $221
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $222
    (i32.const -126)
   )
   (local.set $223
    (local.get $221)
   )
   (local.set $224
    (local.get $222)
   )
   (local.set $225
    (i32.ge_s
     (local.get $223)
     (local.get $224)
    )
   )
   (local.set $226
    (i32.const 1)
   )
   (local.set $227
    (i32.and
     (local.get $225)
     (local.get $226)
    )
   )
   (block $label$27
    (block $label$28
     (br_if $label$28
      (i32.eqz
       (local.get $227)
      )
     )
     (local.set $228
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $229
      (i32.const 8388608)
     )
     (local.set $230
      (i32.sub
       (local.get $228)
       (local.get $229)
      )
     )
     (local.set $231
      (i32.load offset=44
       (local.get $4)
      )
     )
     (local.set $232
      (i32.const 127)
     )
     (local.set $233
      (i32.add
       (local.get $231)
       (local.get $232)
      )
     )
     (local.set $234
      (i32.const 23)
     )
     (local.set $235
      (i32.shl
       (local.get $233)
       (local.get $234)
      )
     )
     (local.set $236
      (i32.or
       (local.get $230)
       (local.get $235)
      )
     )
     (i32.store offset=60
      (local.get $4)
      (local.get $236)
     )
     (local.set $237
      (i32.load offset=60
       (local.get $4)
      )
     )
     (local.set $238
      (i32.load offset=40
       (local.get $4)
      )
     )
     (local.set $239
      (i32.or
       (local.get $237)
       (local.get $238)
      )
     )
     (i32.store offset=16
      (local.get $4)
      (local.get $239)
     )
     (local.set $240
      (f32.load offset=16
       (local.get $4)
      )
     )
     (f32.store offset=72
      (local.get $4)
      (local.get $240)
     )
     (br $label$27)
    )
    (local.set $241
     (i32.load offset=44
      (local.get $4)
     )
    )
    (local.set $242
     (i32.const -126)
    )
    (local.set $243
     (i32.sub
      (local.get $242)
      (local.get $241)
     )
    )
    (i32.store offset=64
     (local.get $4)
     (local.get $243)
    )
    (local.set $244
     (i32.load offset=64
      (local.get $4)
     )
    )
    (local.set $245
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $246
     (i32.shr_s
      (local.get $245)
      (local.get $244)
     )
    )
    (i32.store offset=60
     (local.get $4)
     (local.get $246)
    )
    (local.set $247
     (i32.load offset=60
      (local.get $4)
     )
    )
    (local.set $248
     (i32.load offset=40
      (local.get $4)
     )
    )
    (local.set $249
     (i32.or
      (local.get $247)
      (local.get $248)
     )
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $249)
    )
    (local.set $250
     (f32.load offset=8
      (local.get $4)
     )
    )
    (f32.store offset=72
     (local.get $4)
     (local.get $250)
    )
    (local.set $251
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $252
     (f32.const 1)
    )
    (local.set $253
     (f32.mul
      (local.get $251)
      (local.get $252)
     )
    )
    (f32.store offset=72
     (local.get $4)
     (local.get $253)
    )
   )
   (local.set $254
    (f32.load offset=72
     (local.get $4)
    )
   )
   (f32.store offset=76
    (local.get $4)
    (local.get $254)
   )
  )
  (local.set $255
   (f32.load offset=76
    (local.get $4)
   )
  )
  (return
   (local.get $255)
  )
 )
 (func $hypot (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 f64)
  (local $23 f64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 f64)
  (local $43 f64)
  (local $44 f64)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f64)
  (local $61 i32)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 i32)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 f64)
  (local $87 f64)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 f64)
  (local $98 i32)
  (local $99 f64)
  (local $100 f64)
  (local $101 i32)
  (local $102 f64)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 f64)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 f64)
  (local $123 i32)
  (local $124 f64)
  (local $125 f64)
  (local $126 i32)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 i32)
  (local $146 f64)
  (local $147 i32)
  (local $148 f64)
  (local $149 f64)
  (local $150 i32)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 f64)
  (local $162 f64)
  (local $163 i32)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 i32)
  (local $189 f64)
  (local $190 f64)
  (local $191 i32)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 f64)
  (local $196 i32)
  (local $197 f64)
  (local $198 f64)
  (local $199 i32)
  (local $200 i32)
  (local $201 i32)
  (local $202 f64)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 i32)
  (local $226 f64)
  (local $227 f64)
  (local $228 i32)
  (local $229 f64)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 i32)
  (local $234 i32)
  (local $235 f64)
  (local $236 f64)
  (local $237 f64)
  (local $238 f64)
  (local $239 f64)
  (local $240 f64)
  (local $241 i32)
  (local $242 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 240)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f64.store offset=224
   (local.get $4)
   (local.get $0)
  )
  (f64.store offset=216
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=224
    (local.get $4)
   )
  )
  (f64.store offset=136
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=140
    (local.get $4)
   )
  )
  (i32.store offset=148
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=148
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=148
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (f64.load offset=216
    (local.get $4)
   )
  )
  (f64.store offset=128
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=132
    (local.get $4)
   )
  )
  (i32.store offset=144
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=144
    (local.get $4)
   )
  )
  (local.set $13
   (i32.const 2147483647)
  )
  (local.set $14
   (i32.and
    (local.get $12)
    (local.get $13)
   )
  )
  (i32.store offset=144
   (local.get $4)
   (local.get $14)
  )
  (local.set $15
   (i32.load offset=144
    (local.get $4)
   )
  )
  (local.set $16
   (i32.load offset=148
    (local.get $4)
   )
  )
  (local.set $17
   (local.get $15)
  )
  (local.set $18
   (local.get $16)
  )
  (local.set $19
   (i32.gt_s
    (local.get $17)
    (local.get $18)
   )
  )
  (local.set $20
   (i32.const 1)
  )
  (local.set $21
   (i32.and
    (local.get $19)
    (local.get $20)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $21)
     )
    )
    (local.set $22
     (f64.load offset=216
      (local.get $4)
     )
    )
    (f64.store offset=208
     (local.get $4)
     (local.get $22)
    )
    (local.set $23
     (f64.load offset=224
      (local.get $4)
     )
    )
    (f64.store offset=200
     (local.get $4)
     (local.get $23)
    )
    (local.set $24
     (i32.load offset=148
      (local.get $4)
     )
    )
    (i32.store offset=156
     (local.get $4)
     (local.get $24)
    )
    (local.set $25
     (i32.load offset=144
      (local.get $4)
     )
    )
    (i32.store offset=148
     (local.get $4)
     (local.get $25)
    )
    (local.set $26
     (i32.load offset=156
      (local.get $4)
     )
    )
    (i32.store offset=144
     (local.get $4)
     (local.get $26)
    )
    (br $label$1)
   )
   (local.set $27
    (f64.load offset=224
     (local.get $4)
    )
   )
   (f64.store offset=208
    (local.get $4)
    (local.get $27)
   )
   (local.set $28
    (f64.load offset=216
     (local.get $4)
    )
   )
   (f64.store offset=200
    (local.get $4)
    (local.get $28)
   )
  )
  (local.set $29
   (f64.load offset=208
    (local.get $4)
   )
  )
  (local.set $30
   (call $fabs
    (local.get $29)
   )
  )
  (f64.store offset=208
   (local.get $4)
   (local.get $30)
  )
  (local.set $31
   (f64.load offset=200
    (local.get $4)
   )
  )
  (local.set $32
   (call $fabs
    (local.get $31)
   )
  )
  (f64.store offset=200
   (local.get $4)
   (local.get $32)
  )
  (local.set $33
   (i32.load offset=148
    (local.get $4)
   )
  )
  (local.set $34
   (i32.load offset=144
    (local.get $4)
   )
  )
  (local.set $35
   (i32.sub
    (local.get $33)
    (local.get $34)
   )
  )
  (local.set $36
   (i32.const 62914560)
  )
  (local.set $37
   (local.get $35)
  )
  (local.set $38
   (local.get $36)
  )
  (local.set $39
   (i32.gt_s
    (local.get $37)
    (local.get $38)
   )
  )
  (local.set $40
   (i32.const 1)
  )
  (local.set $41
   (i32.and
    (local.get $39)
    (local.get $40)
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $41)
     )
    )
    (local.set $42
     (f64.load offset=208
      (local.get $4)
     )
    )
    (local.set $43
     (f64.load offset=200
      (local.get $4)
     )
    )
    (local.set $44
     (f64.add
      (local.get $42)
      (local.get $43)
     )
    )
    (f64.store offset=232
     (local.get $4)
     (local.get $44)
    )
    (br $label$3)
   )
   (local.set $45
    (i32.const 0)
   )
   (i32.store offset=152
    (local.get $4)
    (local.get $45)
   )
   (local.set $46
    (i32.load offset=148
     (local.get $4)
    )
   )
   (local.set $47
    (i32.const 1596981248)
   )
   (local.set $48
    (local.get $46)
   )
   (local.set $49
    (local.get $47)
   )
   (local.set $50
    (i32.gt_s
     (local.get $48)
     (local.get $49)
    )
   )
   (local.set $51
    (i32.const 1)
   )
   (local.set $52
    (i32.and
     (local.get $50)
     (local.get $51)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $52)
     )
    )
    (local.set $53
     (i32.load offset=148
      (local.get $4)
     )
    )
    (local.set $54
     (i32.const 2146435072)
    )
    (local.set $55
     (local.get $53)
    )
    (local.set $56
     (local.get $54)
    )
    (local.set $57
     (i32.ge_s
      (local.get $55)
      (local.get $56)
     )
    )
    (local.set $58
     (i32.const 1)
    )
    (local.set $59
     (i32.and
      (local.get $57)
      (local.get $58)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $59)
      )
     )
     (local.set $60
      (f64.load offset=224
       (local.get $4)
      )
     )
     (local.set $61
      (i32.const 0)
     )
     (local.set $62
      (f64.convert_i32_s
       (local.get $61)
      )
     )
     (local.set $63
      (f64.add
       (local.get $60)
       (local.get $62)
      )
     )
     (local.set $64
      (call $fabs
       (local.get $63)
      )
     )
     (local.set $65
      (f64.load offset=216
       (local.get $4)
      )
     )
     (local.set $66
      (i32.const 0)
     )
     (local.set $67
      (f64.convert_i32_s
       (local.get $66)
      )
     )
     (local.set $68
      (f64.add
       (local.get $65)
       (local.get $67)
      )
     )
     (local.set $69
      (call $fabs
       (local.get $68)
      )
     )
     (local.set $70
      (f64.sub
       (local.get $64)
       (local.get $69)
      )
     )
     (f64.store offset=160
      (local.get $4)
      (local.get $70)
     )
     (local.set $71
      (f64.load offset=208
       (local.get $4)
      )
     )
     (f64.store offset=112
      (local.get $4)
      (local.get $71)
     )
     (local.set $72
      (i32.load offset=112
       (local.get $4)
      )
     )
     (i32.store offset=124
      (local.get $4)
      (local.get $72)
     )
     (local.set $73
      (i32.load offset=148
       (local.get $4)
      )
     )
     (local.set $74
      (i32.const 1048575)
     )
     (local.set $75
      (i32.and
       (local.get $73)
       (local.get $74)
      )
     )
     (local.set $76
      (i32.load offset=124
       (local.get $4)
      )
     )
     (local.set $77
      (i32.or
       (local.get $75)
       (local.get $76)
      )
     )
     (block $label$7
      (br_if $label$7
       (local.get $77)
      )
      (local.set $78
       (f64.load offset=208
        (local.get $4)
       )
      )
      (f64.store offset=160
       (local.get $4)
       (local.get $78)
      )
     )
     (local.set $79
      (f64.load offset=200
       (local.get $4)
      )
     )
     (f64.store offset=104
      (local.get $4)
      (local.get $79)
     )
     (local.set $80
      (i32.load offset=104
       (local.get $4)
      )
     )
     (i32.store offset=124
      (local.get $4)
      (local.get $80)
     )
     (local.set $81
      (i32.load offset=144
       (local.get $4)
      )
     )
     (local.set $82
      (i32.const 2146435072)
     )
     (local.set $83
      (i32.xor
       (local.get $81)
       (local.get $82)
      )
     )
     (local.set $84
      (i32.load offset=124
       (local.get $4)
      )
     )
     (local.set $85
      (i32.or
       (local.get $83)
       (local.get $84)
      )
     )
     (block $label$8
      (br_if $label$8
       (local.get $85)
      )
      (local.set $86
       (f64.load offset=200
        (local.get $4)
       )
      )
      (f64.store offset=160
       (local.get $4)
       (local.get $86)
      )
     )
     (local.set $87
      (f64.load offset=160
       (local.get $4)
      )
     )
     (f64.store offset=232
      (local.get $4)
      (local.get $87)
     )
     (br $label$3)
    )
    (local.set $88
     (i32.load offset=148
      (local.get $4)
     )
    )
    (local.set $89
     (i32.const 629145600)
    )
    (local.set $90
     (i32.sub
      (local.get $88)
      (local.get $89)
     )
    )
    (i32.store offset=148
     (local.get $4)
     (local.get $90)
    )
    (local.set $91
     (i32.load offset=144
      (local.get $4)
     )
    )
    (local.set $92
     (i32.const 629145600)
    )
    (local.set $93
     (i32.sub
      (local.get $91)
      (local.get $92)
     )
    )
    (i32.store offset=144
     (local.get $4)
     (local.get $93)
    )
    (local.set $94
     (i32.load offset=152
      (local.get $4)
     )
    )
    (local.set $95
     (i32.const 600)
    )
    (local.set $96
     (i32.add
      (local.get $94)
      (local.get $95)
     )
    )
    (i32.store offset=152
     (local.get $4)
     (local.get $96)
    )
    (local.set $97
     (f64.load offset=208
      (local.get $4)
     )
    )
    (f64.store offset=96
     (local.get $4)
     (local.get $97)
    )
    (local.set $98
     (i32.load offset=148
      (local.get $4)
     )
    )
    (i32.store offset=100
     (local.get $4)
     (local.get $98)
    )
    (local.set $99
     (f64.load offset=96
      (local.get $4)
     )
    )
    (f64.store offset=208
     (local.get $4)
     (local.get $99)
    )
    (local.set $100
     (f64.load offset=200
      (local.get $4)
     )
    )
    (f64.store offset=88
     (local.get $4)
     (local.get $100)
    )
    (local.set $101
     (i32.load offset=144
      (local.get $4)
     )
    )
    (i32.store offset=92
     (local.get $4)
     (local.get $101)
    )
    (local.set $102
     (f64.load offset=88
      (local.get $4)
     )
    )
    (f64.store offset=200
     (local.get $4)
     (local.get $102)
    )
   )
   (local.set $103
    (i32.load offset=144
     (local.get $4)
    )
   )
   (local.set $104
    (i32.const 548405248)
   )
   (local.set $105
    (local.get $103)
   )
   (local.set $106
    (local.get $104)
   )
   (local.set $107
    (i32.lt_s
     (local.get $105)
     (local.get $106)
    )
   )
   (local.set $108
    (i32.const 1)
   )
   (local.set $109
    (i32.and
     (local.get $107)
     (local.get $108)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $109)
     )
    )
    (local.set $110
     (i32.load offset=144
      (local.get $4)
     )
    )
    (local.set $111
     (i32.const 1048575)
    )
    (local.set $112
     (local.get $110)
    )
    (local.set $113
     (local.get $111)
    )
    (local.set $114
     (i32.le_s
      (local.get $112)
      (local.get $113)
     )
    )
    (local.set $115
     (i32.const 1)
    )
    (local.set $116
     (i32.and
      (local.get $114)
      (local.get $115)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (local.get $116)
       )
      )
      (local.set $117
       (f64.load offset=200
        (local.get $4)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $117)
      )
      (local.set $118
       (i32.load offset=72
        (local.get $4)
       )
      )
      (i32.store offset=84
       (local.get $4)
       (local.get $118)
      )
      (local.set $119
       (i32.load offset=144
        (local.get $4)
       )
      )
      (local.set $120
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $121
       (i32.or
        (local.get $119)
        (local.get $120)
       )
      )
      (block $label$12
       (br_if $label$12
        (local.get $121)
       )
       (local.set $122
        (f64.load offset=208
         (local.get $4)
        )
       )
       (f64.store offset=232
        (local.get $4)
        (local.get $122)
       )
       (br $label$3)
      )
      (local.set $123
       (i32.const 0)
      )
      (local.set $124
       (f64.convert_i32_s
        (local.get $123)
       )
      )
      (f64.store offset=192
       (local.get $4)
       (local.get $124)
      )
      (local.set $125
       (f64.load offset=192
        (local.get $4)
       )
      )
      (f64.store offset=64
       (local.get $4)
       (local.get $125)
      )
      (local.set $126
       (i32.const 2144337920)
      )
      (i32.store offset=68
       (local.get $4)
       (local.get $126)
      )
      (local.set $127
       (f64.load offset=64
        (local.get $4)
       )
      )
      (f64.store offset=192
       (local.get $4)
       (local.get $127)
      )
      (local.set $128
       (f64.load offset=192
        (local.get $4)
       )
      )
      (local.set $129
       (f64.load offset=200
        (local.get $4)
       )
      )
      (local.set $130
       (f64.mul
        (local.get $129)
        (local.get $128)
       )
      )
      (f64.store offset=200
       (local.get $4)
       (local.get $130)
      )
      (local.set $131
       (f64.load offset=192
        (local.get $4)
       )
      )
      (local.set $132
       (f64.load offset=208
        (local.get $4)
       )
      )
      (local.set $133
       (f64.mul
        (local.get $132)
        (local.get $131)
       )
      )
      (f64.store offset=208
       (local.get $4)
       (local.get $133)
      )
      (local.set $134
       (i32.load offset=152
        (local.get $4)
       )
      )
      (local.set $135
       (i32.const 1022)
      )
      (local.set $136
       (i32.sub
        (local.get $134)
        (local.get $135)
       )
      )
      (i32.store offset=152
       (local.get $4)
       (local.get $136)
      )
      (br $label$10)
     )
     (local.set $137
      (i32.load offset=148
       (local.get $4)
      )
     )
     (local.set $138
      (i32.const 629145600)
     )
     (local.set $139
      (i32.add
       (local.get $137)
       (local.get $138)
      )
     )
     (i32.store offset=148
      (local.get $4)
      (local.get $139)
     )
     (local.set $140
      (i32.load offset=144
       (local.get $4)
      )
     )
     (local.set $141
      (i32.const 629145600)
     )
     (local.set $142
      (i32.add
       (local.get $140)
       (local.get $141)
      )
     )
     (i32.store offset=144
      (local.get $4)
      (local.get $142)
     )
     (local.set $143
      (i32.load offset=152
       (local.get $4)
      )
     )
     (local.set $144
      (i32.const 600)
     )
     (local.set $145
      (i32.sub
       (local.get $143)
       (local.get $144)
      )
     )
     (i32.store offset=152
      (local.get $4)
      (local.get $145)
     )
     (local.set $146
      (f64.load offset=208
       (local.get $4)
      )
     )
     (f64.store offset=56
      (local.get $4)
      (local.get $146)
     )
     (local.set $147
      (i32.load offset=148
       (local.get $4)
      )
     )
     (i32.store offset=60
      (local.get $4)
      (local.get $147)
     )
     (local.set $148
      (f64.load offset=56
       (local.get $4)
      )
     )
     (f64.store offset=208
      (local.get $4)
      (local.get $148)
     )
     (local.set $149
      (f64.load offset=200
       (local.get $4)
      )
     )
     (f64.store offset=48
      (local.get $4)
      (local.get $149)
     )
     (local.set $150
      (i32.load offset=144
       (local.get $4)
      )
     )
     (i32.store offset=52
      (local.get $4)
      (local.get $150)
     )
     (local.set $151
      (f64.load offset=48
       (local.get $4)
      )
     )
     (f64.store offset=200
      (local.get $4)
      (local.get $151)
     )
    )
   )
   (local.set $152
    (f64.load offset=208
     (local.get $4)
    )
   )
   (local.set $153
    (f64.load offset=200
     (local.get $4)
    )
   )
   (local.set $154
    (f64.sub
     (local.get $152)
     (local.get $153)
    )
   )
   (f64.store offset=160
    (local.get $4)
    (local.get $154)
   )
   (local.set $155
    (f64.load offset=160
     (local.get $4)
    )
   )
   (local.set $156
    (f64.load offset=200
     (local.get $4)
    )
   )
   (local.set $157
    (f64.gt
     (local.get $155)
     (local.get $156)
    )
   )
   (local.set $158
    (i32.const 1)
   )
   (local.set $159
    (i32.and
     (local.get $157)
     (local.get $158)
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (local.get $159)
      )
     )
     (local.set $160
      (i32.const 0)
     )
     (local.set $161
      (f64.convert_i32_s
       (local.get $160)
      )
     )
     (f64.store offset=192
      (local.get $4)
      (local.get $161)
     )
     (local.set $162
      (f64.load offset=192
       (local.get $4)
      )
     )
     (f64.store offset=40
      (local.get $4)
      (local.get $162)
     )
     (local.set $163
      (i32.load offset=148
       (local.get $4)
      )
     )
     (i32.store offset=44
      (local.get $4)
      (local.get $163)
     )
     (local.set $164
      (f64.load offset=40
       (local.get $4)
      )
     )
     (f64.store offset=192
      (local.get $4)
      (local.get $164)
     )
     (local.set $165
      (f64.load offset=208
       (local.get $4)
      )
     )
     (local.set $166
      (f64.load offset=192
       (local.get $4)
      )
     )
     (local.set $167
      (f64.sub
       (local.get $165)
       (local.get $166)
      )
     )
     (f64.store offset=184
      (local.get $4)
      (local.get $167)
     )
     (local.set $168
      (f64.load offset=192
       (local.get $4)
      )
     )
     (local.set $169
      (f64.load offset=192
       (local.get $4)
      )
     )
     (local.set $170
      (f64.load offset=200
       (local.get $4)
      )
     )
     (local.set $171
      (f64.load offset=200
       (local.get $4)
      )
     )
     (local.set $172
      (f64.neg
       (local.get $171)
      )
     )
     (local.set $173
      (f64.load offset=184
       (local.get $4)
      )
     )
     (local.set $174
      (f64.load offset=208
       (local.get $4)
      )
     )
     (local.set $175
      (f64.load offset=192
       (local.get $4)
      )
     )
     (local.set $176
      (f64.add
       (local.get $174)
       (local.get $175)
      )
     )
     (local.set $177
      (f64.mul
       (local.get $173)
       (local.get $176)
      )
     )
     (local.set $178
      (f64.neg
       (local.get $177)
      )
     )
     (local.set $179
      (f64.mul
       (local.get $170)
       (local.get $172)
      )
     )
     (local.set $180
      (f64.add
       (local.get $179)
       (local.get $178)
      )
     )
     (local.set $181
      (f64.neg
       (local.get $180)
      )
     )
     (local.set $182
      (f64.mul
       (local.get $168)
       (local.get $169)
      )
     )
     (local.set $183
      (f64.add
       (local.get $182)
       (local.get $181)
      )
     )
     (local.set $184
      (call $sqrt
       (local.get $183)
      )
     )
     (f64.store offset=160
      (local.get $4)
      (local.get $184)
     )
     (br $label$13)
    )
    (local.set $185
     (f64.load offset=208
      (local.get $4)
     )
    )
    (local.set $186
     (f64.load offset=208
      (local.get $4)
     )
    )
    (local.set $187
     (f64.add
      (local.get $185)
      (local.get $186)
     )
    )
    (f64.store offset=208
     (local.get $4)
     (local.get $187)
    )
    (local.set $188
     (i32.const 0)
    )
    (local.set $189
     (f64.convert_i32_s
      (local.get $188)
     )
    )
    (f64.store offset=176
     (local.get $4)
     (local.get $189)
    )
    (local.set $190
     (f64.load offset=176
      (local.get $4)
     )
    )
    (f64.store offset=32
     (local.get $4)
     (local.get $190)
    )
    (local.set $191
     (i32.load offset=144
      (local.get $4)
     )
    )
    (i32.store offset=36
     (local.get $4)
     (local.get $191)
    )
    (local.set $192
     (f64.load offset=32
      (local.get $4)
     )
    )
    (f64.store offset=176
     (local.get $4)
     (local.get $192)
    )
    (local.set $193
     (f64.load offset=200
      (local.get $4)
     )
    )
    (local.set $194
     (f64.load offset=176
      (local.get $4)
     )
    )
    (local.set $195
     (f64.sub
      (local.get $193)
      (local.get $194)
     )
    )
    (f64.store offset=168
     (local.get $4)
     (local.get $195)
    )
    (local.set $196
     (i32.const 0)
    )
    (local.set $197
     (f64.convert_i32_s
      (local.get $196)
     )
    )
    (f64.store offset=192
     (local.get $4)
     (local.get $197)
    )
    (local.set $198
     (f64.load offset=192
      (local.get $4)
     )
    )
    (f64.store offset=24
     (local.get $4)
     (local.get $198)
    )
    (local.set $199
     (i32.load offset=148
      (local.get $4)
     )
    )
    (local.set $200
     (i32.const 1048576)
    )
    (local.set $201
     (i32.add
      (local.get $199)
      (local.get $200)
     )
    )
    (i32.store offset=28
     (local.get $4)
     (local.get $201)
    )
    (local.set $202
     (f64.load offset=24
      (local.get $4)
     )
    )
    (f64.store offset=192
     (local.get $4)
     (local.get $202)
    )
    (local.set $203
     (f64.load offset=208
      (local.get $4)
     )
    )
    (local.set $204
     (f64.load offset=192
      (local.get $4)
     )
    )
    (local.set $205
     (f64.sub
      (local.get $203)
      (local.get $204)
     )
    )
    (f64.store offset=184
     (local.get $4)
     (local.get $205)
    )
    (local.set $206
     (f64.load offset=192
      (local.get $4)
     )
    )
    (local.set $207
     (f64.load offset=176
      (local.get $4)
     )
    )
    (local.set $208
     (f64.load offset=160
      (local.get $4)
     )
    )
    (local.set $209
     (f64.load offset=160
      (local.get $4)
     )
    )
    (local.set $210
     (f64.neg
      (local.get $209)
     )
    )
    (local.set $211
     (f64.load offset=192
      (local.get $4)
     )
    )
    (local.set $212
     (f64.load offset=168
      (local.get $4)
     )
    )
    (local.set $213
     (f64.load offset=184
      (local.get $4)
     )
    )
    (local.set $214
     (f64.load offset=200
      (local.get $4)
     )
    )
    (local.set $215
     (f64.mul
      (local.get $213)
      (local.get $214)
     )
    )
    (local.set $216
     (f64.mul
      (local.get $211)
      (local.get $212)
     )
    )
    (local.set $217
     (f64.add
      (local.get $216)
      (local.get $215)
     )
    )
    (local.set $218
     (f64.neg
      (local.get $217)
     )
    )
    (local.set $219
     (f64.mul
      (local.get $208)
      (local.get $210)
     )
    )
    (local.set $220
     (f64.add
      (local.get $219)
      (local.get $218)
     )
    )
    (local.set $221
     (f64.neg
      (local.get $220)
     )
    )
    (local.set $222
     (f64.mul
      (local.get $206)
      (local.get $207)
     )
    )
    (local.set $223
     (f64.add
      (local.get $222)
      (local.get $221)
     )
    )
    (local.set $224
     (call $sqrt
      (local.get $223)
     )
    )
    (f64.store offset=160
     (local.get $4)
     (local.get $224)
    )
   )
   (local.set $225
    (i32.load offset=152
     (local.get $4)
    )
   )
   (block $label$15
    (br_if $label$15
     (i32.eqz
      (local.get $225)
     )
    )
    (local.set $226
     (f64.const 1)
    )
    (f64.store offset=192
     (local.get $4)
     (local.get $226)
    )
    (local.set $227
     (f64.load offset=192
      (local.get $4)
     )
    )
    (f64.store offset=8
     (local.get $4)
     (local.get $227)
    )
    (local.set $228
     (i32.load offset=12
      (local.get $4)
     )
    )
    (i32.store offset=20
     (local.get $4)
     (local.get $228)
    )
    (local.set $229
     (f64.load offset=192
      (local.get $4)
     )
    )
    (f64.store
     (local.get $4)
     (local.get $229)
    )
    (local.set $230
     (i32.load offset=20
      (local.get $4)
     )
    )
    (local.set $231
     (i32.load offset=152
      (local.get $4)
     )
    )
    (local.set $232
     (i32.const 20)
    )
    (local.set $233
     (i32.shl
      (local.get $231)
      (local.get $232)
     )
    )
    (local.set $234
     (i32.add
      (local.get $230)
      (local.get $233)
     )
    )
    (i32.store offset=4
     (local.get $4)
     (local.get $234)
    )
    (local.set $235
     (f64.load
      (local.get $4)
     )
    )
    (f64.store offset=192
     (local.get $4)
     (local.get $235)
    )
    (local.set $236
     (f64.load offset=192
      (local.get $4)
     )
    )
    (local.set $237
     (f64.load offset=160
      (local.get $4)
     )
    )
    (local.set $238
     (f64.mul
      (local.get $236)
      (local.get $237)
     )
    )
    (f64.store offset=232
     (local.get $4)
     (local.get $238)
    )
    (br $label$3)
   )
   (local.set $239
    (f64.load offset=160
     (local.get $4)
    )
   )
   (f64.store offset=232
    (local.get $4)
    (local.get $239)
   )
  )
  (local.set $240
   (f64.load offset=232
    (local.get $4)
   )
  )
  (local.set $241
   (i32.const 240)
  )
  (local.set $242
   (i32.add
    (local.get $4)
    (local.get $241)
   )
  )
  (global.set $__stack_pointer
   (local.get $242)
  )
  (return
   (local.get $240)
  )
 )
 (func $hypotf (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 f32)
  (local $23 f32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 f32)
  (local $43 f32)
  (local $44 f32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f32)
  (local $61 i32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 i32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 f32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 f32)
  (local $87 f32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 f32)
  (local $99 i32)
  (local $100 f32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 f32)
  (local $117 i32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 f32)
  (local $139 i32)
  (local $140 f32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 f32)
  (local $162 f32)
  (local $163 f32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 i32)
  (local $184 i32)
  (local $185 i32)
  (local $186 i32)
  (local $187 i32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 f32)
  (local $194 f32)
  (local $195 f32)
  (local $196 f32)
  (local $197 f32)
  (local $198 f32)
  (local $199 f32)
  (local $200 f32)
  (local $201 f32)
  (local $202 f32)
  (local $203 f32)
  (local $204 f32)
  (local $205 f32)
  (local $206 f32)
  (local $207 f32)
  (local $208 f32)
  (local $209 f32)
  (local $210 f32)
  (local $211 i32)
  (local $212 i32)
  (local $213 i32)
  (local $214 i32)
  (local $215 i32)
  (local $216 i32)
  (local $217 f32)
  (local $218 f32)
  (local $219 f32)
  (local $220 f32)
  (local $221 f32)
  (local $222 f32)
  (local $223 i32)
  (local $224 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 144)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f32.store offset=136
   (local.get $4)
   (local.get $0)
  )
  (f32.store offset=132
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=136
    (local.get $4)
   )
  )
  (f32.store offset=80
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=80
    (local.get $4)
   )
  )
  (i32.store offset=92
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=92
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=92
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (f32.load offset=132
    (local.get $4)
   )
  )
  (f32.store offset=72
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=72
    (local.get $4)
   )
  )
  (i32.store offset=88
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=88
    (local.get $4)
   )
  )
  (local.set $13
   (i32.const 2147483647)
  )
  (local.set $14
   (i32.and
    (local.get $12)
    (local.get $13)
   )
  )
  (i32.store offset=88
   (local.get $4)
   (local.get $14)
  )
  (local.set $15
   (i32.load offset=88
    (local.get $4)
   )
  )
  (local.set $16
   (i32.load offset=92
    (local.get $4)
   )
  )
  (local.set $17
   (local.get $15)
  )
  (local.set $18
   (local.get $16)
  )
  (local.set $19
   (i32.gt_s
    (local.get $17)
    (local.get $18)
   )
  )
  (local.set $20
   (i32.const 1)
  )
  (local.set $21
   (i32.and
    (local.get $19)
    (local.get $20)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $21)
     )
    )
    (local.set $22
     (f32.load offset=132
      (local.get $4)
     )
    )
    (f32.store offset=128
     (local.get $4)
     (local.get $22)
    )
    (local.set $23
     (f32.load offset=136
      (local.get $4)
     )
    )
    (f32.store offset=124
     (local.get $4)
     (local.get $23)
    )
    (local.set $24
     (i32.load offset=92
      (local.get $4)
     )
    )
    (i32.store offset=100
     (local.get $4)
     (local.get $24)
    )
    (local.set $25
     (i32.load offset=88
      (local.get $4)
     )
    )
    (i32.store offset=92
     (local.get $4)
     (local.get $25)
    )
    (local.set $26
     (i32.load offset=100
      (local.get $4)
     )
    )
    (i32.store offset=88
     (local.get $4)
     (local.get $26)
    )
    (br $label$1)
   )
   (local.set $27
    (f32.load offset=136
     (local.get $4)
    )
   )
   (f32.store offset=128
    (local.get $4)
    (local.get $27)
   )
   (local.set $28
    (f32.load offset=132
     (local.get $4)
    )
   )
   (f32.store offset=124
    (local.get $4)
    (local.get $28)
   )
  )
  (local.set $29
   (f32.load offset=128
    (local.get $4)
   )
  )
  (local.set $30
   (call $fabsf
    (local.get $29)
   )
  )
  (f32.store offset=128
   (local.get $4)
   (local.get $30)
  )
  (local.set $31
   (f32.load offset=124
    (local.get $4)
   )
  )
  (local.set $32
   (call $fabsf
    (local.get $31)
   )
  )
  (f32.store offset=124
   (local.get $4)
   (local.get $32)
  )
  (local.set $33
   (i32.load offset=92
    (local.get $4)
   )
  )
  (local.set $34
   (i32.load offset=88
    (local.get $4)
   )
  )
  (local.set $35
   (i32.sub
    (local.get $33)
    (local.get $34)
   )
  )
  (local.set $36
   (i32.const 251658240)
  )
  (local.set $37
   (local.get $35)
  )
  (local.set $38
   (local.get $36)
  )
  (local.set $39
   (i32.gt_s
    (local.get $37)
    (local.get $38)
   )
  )
  (local.set $40
   (i32.const 1)
  )
  (local.set $41
   (i32.and
    (local.get $39)
    (local.get $40)
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $41)
     )
    )
    (local.set $42
     (f32.load offset=128
      (local.get $4)
     )
    )
    (local.set $43
     (f32.load offset=124
      (local.get $4)
     )
    )
    (local.set $44
     (f32.add
      (local.get $42)
      (local.get $43)
     )
    )
    (f32.store offset=140
     (local.get $4)
     (local.get $44)
    )
    (br $label$3)
   )
   (local.set $45
    (i32.const 0)
   )
   (i32.store offset=96
    (local.get $4)
    (local.get $45)
   )
   (local.set $46
    (i32.load offset=92
     (local.get $4)
    )
   )
   (local.set $47
    (i32.const 1484783616)
   )
   (local.set $48
    (local.get $46)
   )
   (local.set $49
    (local.get $47)
   )
   (local.set $50
    (i32.gt_s
     (local.get $48)
     (local.get $49)
    )
   )
   (local.set $51
    (i32.const 1)
   )
   (local.set $52
    (i32.and
     (local.get $50)
     (local.get $51)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $52)
     )
    )
    (local.set $53
     (i32.load offset=92
      (local.get $4)
     )
    )
    (local.set $54
     (i32.const 2139095040)
    )
    (local.set $55
     (local.get $53)
    )
    (local.set $56
     (local.get $54)
    )
    (local.set $57
     (i32.ge_s
      (local.get $55)
      (local.get $56)
     )
    )
    (local.set $58
     (i32.const 1)
    )
    (local.set $59
     (i32.and
      (local.get $57)
      (local.get $58)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $59)
      )
     )
     (local.set $60
      (f32.load offset=136
       (local.get $4)
      )
     )
     (local.set $61
      (i32.const 0)
     )
     (local.set $62
      (f32.convert_i32_s
       (local.get $61)
      )
     )
     (local.set $63
      (f32.add
       (local.get $60)
       (local.get $62)
      )
     )
     (local.set $64
      (call $fabsf
       (local.get $63)
      )
     )
     (local.set $65
      (f32.load offset=132
       (local.get $4)
      )
     )
     (local.set $66
      (i32.const 0)
     )
     (local.set $67
      (f32.convert_i32_s
       (local.get $66)
      )
     )
     (local.set $68
      (f32.add
       (local.get $65)
       (local.get $67)
      )
     )
     (local.set $69
      (call $fabsf
       (local.get $68)
      )
     )
     (local.set $70
      (f32.sub
       (local.get $64)
       (local.get $69)
      )
     )
     (f32.store offset=104
      (local.get $4)
      (local.get $70)
     )
     (local.set $71
      (i32.load offset=92
       (local.get $4)
      )
     )
     (local.set $72
      (i32.const 2139095040)
     )
     (local.set $73
      (local.get $71)
     )
     (local.set $74
      (local.get $72)
     )
     (local.set $75
      (i32.eq
       (local.get $73)
       (local.get $74)
      )
     )
     (local.set $76
      (i32.const 1)
     )
     (local.set $77
      (i32.and
       (local.get $75)
       (local.get $76)
      )
     )
     (block $label$7
      (br_if $label$7
       (i32.eqz
        (local.get $77)
       )
      )
      (local.set $78
       (f32.load offset=128
        (local.get $4)
       )
      )
      (f32.store offset=104
       (local.get $4)
       (local.get $78)
      )
     )
     (local.set $79
      (i32.load offset=88
       (local.get $4)
      )
     )
     (local.set $80
      (i32.const 2139095040)
     )
     (local.set $81
      (local.get $79)
     )
     (local.set $82
      (local.get $80)
     )
     (local.set $83
      (i32.eq
       (local.get $81)
       (local.get $82)
      )
     )
     (local.set $84
      (i32.const 1)
     )
     (local.set $85
      (i32.and
       (local.get $83)
       (local.get $84)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $85)
       )
      )
      (local.set $86
       (f32.load offset=124
        (local.get $4)
       )
      )
      (f32.store offset=104
       (local.get $4)
       (local.get $86)
      )
     )
     (local.set $87
      (f32.load offset=104
       (local.get $4)
      )
     )
     (f32.store offset=140
      (local.get $4)
      (local.get $87)
     )
     (br $label$3)
    )
    (local.set $88
     (i32.load offset=92
      (local.get $4)
     )
    )
    (local.set $89
     (i32.const 570425344)
    )
    (local.set $90
     (i32.sub
      (local.get $88)
      (local.get $89)
     )
    )
    (i32.store offset=92
     (local.get $4)
     (local.get $90)
    )
    (local.set $91
     (i32.load offset=88
      (local.get $4)
     )
    )
    (local.set $92
     (i32.const 570425344)
    )
    (local.set $93
     (i32.sub
      (local.get $91)
      (local.get $92)
     )
    )
    (i32.store offset=88
     (local.get $4)
     (local.get $93)
    )
    (local.set $94
     (i32.load offset=96
      (local.get $4)
     )
    )
    (local.set $95
     (i32.const 68)
    )
    (local.set $96
     (i32.add
      (local.get $94)
      (local.get $95)
     )
    )
    (i32.store offset=96
     (local.get $4)
     (local.get $96)
    )
    (local.set $97
     (i32.load offset=92
      (local.get $4)
     )
    )
    (i32.store offset=64
     (local.get $4)
     (local.get $97)
    )
    (local.set $98
     (f32.load offset=64
      (local.get $4)
     )
    )
    (f32.store offset=128
     (local.get $4)
     (local.get $98)
    )
    (local.set $99
     (i32.load offset=88
      (local.get $4)
     )
    )
    (i32.store offset=56
     (local.get $4)
     (local.get $99)
    )
    (local.set $100
     (f32.load offset=56
      (local.get $4)
     )
    )
    (f32.store offset=124
     (local.get $4)
     (local.get $100)
    )
   )
   (local.set $101
    (i32.load offset=88
     (local.get $4)
    )
   )
   (local.set $102
    (i32.const 645922816)
   )
   (local.set $103
    (local.get $101)
   )
   (local.set $104
    (local.get $102)
   )
   (local.set $105
    (i32.lt_s
     (local.get $103)
     (local.get $104)
    )
   )
   (local.set $106
    (i32.const 1)
   )
   (local.set $107
    (i32.and
     (local.get $105)
     (local.get $106)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $107)
     )
    )
    (local.set $108
     (i32.load offset=88
      (local.get $4)
     )
    )
    (local.set $109
     (i32.const 8388607)
    )
    (local.set $110
     (local.get $108)
    )
    (local.set $111
     (local.get $109)
    )
    (local.set $112
     (i32.le_s
      (local.get $110)
      (local.get $111)
     )
    )
    (local.set $113
     (i32.const 1)
    )
    (local.set $114
     (i32.and
      (local.get $112)
      (local.get $113)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (local.get $114)
       )
      )
      (local.set $115
       (i32.load offset=88
        (local.get $4)
       )
      )
      (block $label$12
       (br_if $label$12
        (local.get $115)
       )
       (local.set $116
        (f32.load offset=128
         (local.get $4)
        )
       )
       (f32.store offset=140
        (local.get $4)
        (local.get $116)
       )
       (br $label$3)
      )
      (local.set $117
       (i32.const 2122317824)
      )
      (i32.store offset=48
       (local.get $4)
       (local.get $117)
      )
      (local.set $118
       (f32.load offset=48
        (local.get $4)
       )
      )
      (f32.store offset=120
       (local.get $4)
       (local.get $118)
      )
      (local.set $119
       (f32.load offset=120
        (local.get $4)
       )
      )
      (local.set $120
       (f32.load offset=124
        (local.get $4)
       )
      )
      (local.set $121
       (f32.mul
        (local.get $120)
        (local.get $119)
       )
      )
      (f32.store offset=124
       (local.get $4)
       (local.get $121)
      )
      (local.set $122
       (f32.load offset=120
        (local.get $4)
       )
      )
      (local.set $123
       (f32.load offset=128
        (local.get $4)
       )
      )
      (local.set $124
       (f32.mul
        (local.get $123)
        (local.get $122)
       )
      )
      (f32.store offset=128
       (local.get $4)
       (local.get $124)
      )
      (local.set $125
       (i32.load offset=96
        (local.get $4)
       )
      )
      (local.set $126
       (i32.const 126)
      )
      (local.set $127
       (i32.sub
        (local.get $125)
        (local.get $126)
       )
      )
      (i32.store offset=96
       (local.get $4)
       (local.get $127)
      )
      (br $label$10)
     )
     (local.set $128
      (i32.load offset=92
       (local.get $4)
      )
     )
     (local.set $129
      (i32.const 570425344)
     )
     (local.set $130
      (i32.add
       (local.get $128)
       (local.get $129)
      )
     )
     (i32.store offset=92
      (local.get $4)
      (local.get $130)
     )
     (local.set $131
      (i32.load offset=88
       (local.get $4)
      )
     )
     (local.set $132
      (i32.const 570425344)
     )
     (local.set $133
      (i32.add
       (local.get $131)
       (local.get $132)
      )
     )
     (i32.store offset=88
      (local.get $4)
      (local.get $133)
     )
     (local.set $134
      (i32.load offset=96
       (local.get $4)
      )
     )
     (local.set $135
      (i32.const 68)
     )
     (local.set $136
      (i32.sub
       (local.get $134)
       (local.get $135)
      )
     )
     (i32.store offset=96
      (local.get $4)
      (local.get $136)
     )
     (local.set $137
      (i32.load offset=92
       (local.get $4)
      )
     )
     (i32.store offset=40
      (local.get $4)
      (local.get $137)
     )
     (local.set $138
      (f32.load offset=40
       (local.get $4)
      )
     )
     (f32.store offset=128
      (local.get $4)
      (local.get $138)
     )
     (local.set $139
      (i32.load offset=88
       (local.get $4)
      )
     )
     (i32.store offset=32
      (local.get $4)
      (local.get $139)
     )
     (local.set $140
      (f32.load offset=32
       (local.get $4)
      )
     )
     (f32.store offset=124
      (local.get $4)
      (local.get $140)
     )
    )
   )
   (local.set $141
    (f32.load offset=128
     (local.get $4)
    )
   )
   (local.set $142
    (f32.load offset=124
     (local.get $4)
    )
   )
   (local.set $143
    (f32.sub
     (local.get $141)
     (local.get $142)
    )
   )
   (f32.store offset=104
    (local.get $4)
    (local.get $143)
   )
   (local.set $144
    (f32.load offset=104
     (local.get $4)
    )
   )
   (local.set $145
    (f32.load offset=124
     (local.get $4)
    )
   )
   (local.set $146
    (f32.gt
     (local.get $144)
     (local.get $145)
    )
   )
   (local.set $147
    (i32.const 1)
   )
   (local.set $148
    (i32.and
     (local.get $146)
     (local.get $147)
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (local.get $148)
      )
     )
     (local.set $149
      (i32.load offset=92
       (local.get $4)
      )
     )
     (local.set $150
      (i32.const -4096)
     )
     (local.set $151
      (i32.and
       (local.get $149)
       (local.get $150)
      )
     )
     (i32.store offset=24
      (local.get $4)
      (local.get $151)
     )
     (local.set $152
      (f32.load offset=24
       (local.get $4)
      )
     )
     (f32.store offset=120
      (local.get $4)
      (local.get $152)
     )
     (local.set $153
      (f32.load offset=128
       (local.get $4)
      )
     )
     (local.set $154
      (f32.load offset=120
       (local.get $4)
      )
     )
     (local.set $155
      (f32.sub
       (local.get $153)
       (local.get $154)
      )
     )
     (f32.store offset=116
      (local.get $4)
      (local.get $155)
     )
     (local.set $156
      (f32.load offset=120
       (local.get $4)
      )
     )
     (local.set $157
      (f32.load offset=120
       (local.get $4)
      )
     )
     (local.set $158
      (f32.load offset=124
       (local.get $4)
      )
     )
     (local.set $159
      (f32.load offset=124
       (local.get $4)
      )
     )
     (local.set $160
      (f32.neg
       (local.get $159)
      )
     )
     (local.set $161
      (f32.load offset=116
       (local.get $4)
      )
     )
     (local.set $162
      (f32.load offset=128
       (local.get $4)
      )
     )
     (local.set $163
      (f32.load offset=120
       (local.get $4)
      )
     )
     (local.set $164
      (f32.add
       (local.get $162)
       (local.get $163)
      )
     )
     (local.set $165
      (f32.mul
       (local.get $161)
       (local.get $164)
      )
     )
     (local.set $166
      (f32.neg
       (local.get $165)
      )
     )
     (local.set $167
      (f32.mul
       (local.get $158)
       (local.get $160)
      )
     )
     (local.set $168
      (f32.add
       (local.get $167)
       (local.get $166)
      )
     )
     (local.set $169
      (f32.neg
       (local.get $168)
      )
     )
     (local.set $170
      (f32.mul
       (local.get $156)
       (local.get $157)
      )
     )
     (local.set $171
      (f32.add
       (local.get $170)
       (local.get $169)
      )
     )
     (local.set $172
      (call $sqrtf
       (local.get $171)
      )
     )
     (f32.store offset=104
      (local.get $4)
      (local.get $172)
     )
     (br $label$13)
    )
    (local.set $173
     (f32.load offset=128
      (local.get $4)
     )
    )
    (local.set $174
     (f32.load offset=128
      (local.get $4)
     )
    )
    (local.set $175
     (f32.add
      (local.get $173)
      (local.get $174)
     )
    )
    (f32.store offset=128
     (local.get $4)
     (local.get $175)
    )
    (local.set $176
     (i32.load offset=88
      (local.get $4)
     )
    )
    (local.set $177
     (i32.const -4096)
    )
    (local.set $178
     (i32.and
      (local.get $176)
      (local.get $177)
     )
    )
    (i32.store offset=16
     (local.get $4)
     (local.get $178)
    )
    (local.set $179
     (f32.load offset=16
      (local.get $4)
     )
    )
    (f32.store offset=112
     (local.get $4)
     (local.get $179)
    )
    (local.set $180
     (f32.load offset=124
      (local.get $4)
     )
    )
    (local.set $181
     (f32.load offset=112
      (local.get $4)
     )
    )
    (local.set $182
     (f32.sub
      (local.get $180)
      (local.get $181)
     )
    )
    (f32.store offset=108
     (local.get $4)
     (local.get $182)
    )
    (local.set $183
     (i32.load offset=92
      (local.get $4)
     )
    )
    (local.set $184
     (i32.const 8388608)
    )
    (local.set $185
     (i32.add
      (local.get $183)
      (local.get $184)
     )
    )
    (local.set $186
     (i32.const -4096)
    )
    (local.set $187
     (i32.and
      (local.get $185)
      (local.get $186)
     )
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $187)
    )
    (local.set $188
     (f32.load offset=8
      (local.get $4)
     )
    )
    (f32.store offset=120
     (local.get $4)
     (local.get $188)
    )
    (local.set $189
     (f32.load offset=128
      (local.get $4)
     )
    )
    (local.set $190
     (f32.load offset=120
      (local.get $4)
     )
    )
    (local.set $191
     (f32.sub
      (local.get $189)
      (local.get $190)
     )
    )
    (f32.store offset=116
     (local.get $4)
     (local.get $191)
    )
    (local.set $192
     (f32.load offset=120
      (local.get $4)
     )
    )
    (local.set $193
     (f32.load offset=112
      (local.get $4)
     )
    )
    (local.set $194
     (f32.load offset=104
      (local.get $4)
     )
    )
    (local.set $195
     (f32.load offset=104
      (local.get $4)
     )
    )
    (local.set $196
     (f32.neg
      (local.get $195)
     )
    )
    (local.set $197
     (f32.load offset=120
      (local.get $4)
     )
    )
    (local.set $198
     (f32.load offset=108
      (local.get $4)
     )
    )
    (local.set $199
     (f32.load offset=116
      (local.get $4)
     )
    )
    (local.set $200
     (f32.load offset=124
      (local.get $4)
     )
    )
    (local.set $201
     (f32.mul
      (local.get $199)
      (local.get $200)
     )
    )
    (local.set $202
     (f32.mul
      (local.get $197)
      (local.get $198)
     )
    )
    (local.set $203
     (f32.add
      (local.get $202)
      (local.get $201)
     )
    )
    (local.set $204
     (f32.neg
      (local.get $203)
     )
    )
    (local.set $205
     (f32.mul
      (local.get $194)
      (local.get $196)
     )
    )
    (local.set $206
     (f32.add
      (local.get $205)
      (local.get $204)
     )
    )
    (local.set $207
     (f32.neg
      (local.get $206)
     )
    )
    (local.set $208
     (f32.mul
      (local.get $192)
      (local.get $193)
     )
    )
    (local.set $209
     (f32.add
      (local.get $208)
      (local.get $207)
     )
    )
    (local.set $210
     (call $sqrtf
      (local.get $209)
     )
    )
    (f32.store offset=104
     (local.get $4)
     (local.get $210)
    )
   )
   (local.set $211
    (i32.load offset=96
     (local.get $4)
    )
   )
   (block $label$15
    (br_if $label$15
     (i32.eqz
      (local.get $211)
     )
    )
    (local.set $212
     (i32.load offset=96
      (local.get $4)
     )
    )
    (local.set $213
     (i32.const 23)
    )
    (local.set $214
     (i32.shl
      (local.get $212)
      (local.get $213)
     )
    )
    (local.set $215
     (i32.const 1065353216)
    )
    (local.set $216
     (i32.add
      (local.get $214)
      (local.get $215)
     )
    )
    (i32.store
     (local.get $4)
     (local.get $216)
    )
    (local.set $217
     (f32.load
      (local.get $4)
     )
    )
    (f32.store offset=120
     (local.get $4)
     (local.get $217)
    )
    (local.set $218
     (f32.load offset=120
      (local.get $4)
     )
    )
    (local.set $219
     (f32.load offset=104
      (local.get $4)
     )
    )
    (local.set $220
     (f32.mul
      (local.get $218)
      (local.get $219)
     )
    )
    (f32.store offset=140
     (local.get $4)
     (local.get $220)
    )
    (br $label$3)
   )
   (local.set $221
    (f32.load offset=104
     (local.get $4)
    )
   )
   (f32.store offset=140
    (local.get $4)
    (local.get $221)
   )
  )
  (local.set $222
   (f32.load offset=140
    (local.get $4)
   )
  )
  (local.set $223
   (i32.const 144)
  )
  (local.set $224
   (i32.add
    (local.get $4)
    (local.get $223)
   )
  )
  (global.set $__stack_pointer
   (local.get $224)
  )
  (return
   (local.get $222)
  )
 )
 (func $j0 (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 f64)
  (local $53 f64)
  (local $54 f64)
  (local $55 i32)
  (local $56 f64)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 i32)
  (local $196 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 96)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=80
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=80
    (local.get $3)
   )
  )
  (f64.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=4
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=8
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2146435072)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $17
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $18
     (f64.mul
      (local.get $16)
      (local.get $17)
     )
    )
    (local.set $19
     (f64.const 1)
    )
    (local.set $20
     (f64.div
      (local.get $19)
      (local.get $18)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $20)
    )
    (br $label$1)
   )
   (local.set $21
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $22
    (call $fabs
     (local.get $21)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $22)
   )
   (local.set $23
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $24
    (i32.const 1073741824)
   )
   (local.set $25
    (local.get $23)
   )
   (local.set $26
    (local.get $24)
   )
   (local.set $27
    (i32.ge_s
     (local.get $25)
     (local.get $26)
    )
   )
   (local.set $28
    (i32.const 1)
   )
   (local.set $29
    (i32.and
     (local.get $27)
     (local.get $28)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $29)
     )
    )
    (local.set $30
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $31
     (call $sin
      (local.get $30)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $33
     (call $cos
      (local.get $32)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $33)
    )
    (local.set $34
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $35
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $36
     (f64.sub
      (local.get $34)
      (local.get $35)
     )
    )
    (f64.store offset=48
     (local.get $3)
     (local.get $36)
    )
    (local.set $37
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $38
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $39
     (f64.add
      (local.get $37)
      (local.get $38)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $39)
    )
    (local.set $40
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.set $41
     (i32.const 2145386496)
    )
    (local.set $42
     (local.get $40)
    )
    (local.set $43
     (local.get $41)
    )
    (local.set $44
     (i32.lt_s
      (local.get $42)
      (local.get $43)
     )
    )
    (local.set $45
     (i32.const 1)
    )
    (local.set $46
     (i32.and
      (local.get $44)
      (local.get $45)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $46)
      )
     )
     (local.set $47
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $48
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $49
      (f64.add
       (local.get $47)
       (local.get $48)
      )
     )
     (local.set $50
      (call $cos
       (local.get $49)
      )
     )
     (local.set $51
      (f64.neg
       (local.get $50)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $51)
     )
     (local.set $52
      (f64.load offset=64
       (local.get $3)
      )
     )
     (local.set $53
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $54
      (f64.mul
       (local.get $52)
       (local.get $53)
      )
     )
     (local.set $55
      (i32.const 0)
     )
     (local.set $56
      (f64.convert_i32_s
       (local.get $55)
      )
     )
     (local.set $57
      (f64.lt
       (local.get $54)
       (local.get $56)
      )
     )
     (local.set $58
      (i32.const 1)
     )
     (local.set $59
      (i32.and
       (local.get $57)
       (local.get $58)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (local.get $59)
        )
       )
       (local.set $60
        (f64.load offset=72
         (local.get $3)
        )
       )
       (local.set $61
        (f64.load offset=48
         (local.get $3)
        )
       )
       (local.set $62
        (f64.div
         (local.get $60)
         (local.get $61)
        )
       )
       (f64.store offset=40
        (local.get $3)
        (local.get $62)
       )
       (br $label$5)
      )
      (local.set $63
       (f64.load offset=72
        (local.get $3)
       )
      )
      (local.set $64
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $65
       (f64.div
        (local.get $63)
        (local.get $64)
       )
      )
      (f64.store offset=48
       (local.get $3)
       (local.get $65)
      )
     )
    )
    (local.set $66
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.set $67
     (i32.const 1207959552)
    )
    (local.set $68
     (local.get $66)
    )
    (local.set $69
     (local.get $67)
    )
    (local.set $70
     (i32.gt_s
      (local.get $68)
      (local.get $69)
     )
    )
    (local.set $71
     (i32.const 1)
    )
    (local.set $72
     (i32.and
      (local.get $70)
      (local.get $71)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $72)
       )
      )
      (local.set $73
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $74
       (f64.const 0.5641895835477563)
      )
      (local.set $75
       (f64.mul
        (local.get $74)
        (local.get $73)
       )
      )
      (local.set $76
       (f64.load offset=80
        (local.get $3)
       )
      )
      (local.set $77
       (call $sqrt
        (local.get $76)
       )
      )
      (local.set $78
       (f64.div
        (local.get $75)
        (local.get $77)
       )
      )
      (f64.store offset=72
       (local.get $3)
       (local.get $78)
      )
      (br $label$7)
     )
     (local.set $79
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $80
      (call $pzero
       (local.get $79)
      )
     )
     (f64.store offset=24
      (local.get $3)
      (local.get $80)
     )
     (local.set $81
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $82
      (call $qzero
       (local.get $81)
      )
     )
     (f64.store offset=16
      (local.get $3)
      (local.get $82)
     )
     (local.set $83
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $84
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $85
      (f64.load offset=16
       (local.get $3)
      )
     )
     (local.set $86
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $87
      (f64.mul
       (local.get $85)
       (local.get $86)
      )
     )
     (local.set $88
      (f64.neg
       (local.get $87)
      )
     )
     (local.set $89
      (f64.mul
       (local.get $83)
       (local.get $84)
      )
     )
     (local.set $90
      (f64.add
       (local.get $89)
       (local.get $88)
      )
     )
     (local.set $91
      (f64.const 0.5641895835477563)
     )
     (local.set $92
      (f64.mul
       (local.get $91)
       (local.get $90)
      )
     )
     (local.set $93
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $94
      (call $sqrt
       (local.get $93)
      )
     )
     (local.set $95
      (f64.div
       (local.get $92)
       (local.get $94)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $95)
     )
    )
    (local.set $96
     (f64.load offset=72
      (local.get $3)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $96)
    )
    (br $label$1)
   )
   (local.set $97
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $98
    (i32.const 1059061760)
   )
   (local.set $99
    (local.get $97)
   )
   (local.set $100
    (local.get $98)
   )
   (local.set $101
    (i32.lt_s
     (local.get $99)
     (local.get $100)
    )
   )
   (local.set $102
    (i32.const 1)
   )
   (local.set $103
    (i32.and
     (local.get $101)
     (local.get $102)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $103)
     )
    )
    (local.set $104
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $105
     (f64.const 1.e+300)
    )
    (local.set $106
     (f64.add
      (local.get $105)
      (local.get $104)
     )
    )
    (local.set $107
     (f64.const 1)
    )
    (local.set $108
     (f64.gt
      (local.get $106)
      (local.get $107)
     )
    )
    (local.set $109
     (i32.const 1)
    )
    (local.set $110
     (i32.and
      (local.get $108)
      (local.get $109)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $110)
      )
     )
     (local.set $111
      (i32.load offset=8
       (local.get $3)
      )
     )
     (local.set $112
      (i32.const 1044381696)
     )
     (local.set $113
      (local.get $111)
     )
     (local.set $114
      (local.get $112)
     )
     (local.set $115
      (i32.lt_s
       (local.get $113)
       (local.get $114)
      )
     )
     (local.set $116
      (i32.const 1)
     )
     (local.set $117
      (i32.and
       (local.get $115)
       (local.get $116)
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (local.get $117)
       )
      )
      (local.set $118
       (f64.const 1)
      )
      (f64.store offset=88
       (local.get $3)
       (local.get $118)
      )
      (br $label$1)
     )
     (local.set $119
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $120
      (f64.const 0.25)
     )
     (local.set $121
      (f64.mul
       (local.get $120)
       (local.get $119)
      )
     )
     (local.set $122
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $123
      (f64.neg
       (local.get $121)
      )
     )
     (local.set $124
      (f64.mul
       (local.get $123)
       (local.get $122)
      )
     )
     (local.set $125
      (f64.const 1)
     )
     (local.set $126
      (f64.add
       (local.get $124)
       (local.get $125)
      )
     )
     (f64.store offset=88
      (local.get $3)
      (local.get $126)
     )
     (br $label$1)
    )
   )
   (local.set $127
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $128
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $129
    (f64.mul
     (local.get $127)
     (local.get $128)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $129)
   )
   (local.set $130
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $131
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $132
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $133
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $134
    (f64.const -4.618326885321032e-09)
   )
   (local.set $135
    (f64.mul
     (local.get $133)
     (local.get $134)
    )
   )
   (local.set $136
    (f64.const 1.8295404953270067e-06)
   )
   (local.set $137
    (f64.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f64.mul
     (local.get $132)
     (local.get $137)
    )
   )
   (local.set $139
    (f64.const -1.8997929423885472e-04)
   )
   (local.set $140
    (f64.add
     (local.get $138)
     (local.get $139)
    )
   )
   (local.set $141
    (f64.mul
     (local.get $131)
     (local.get $140)
    )
   )
   (local.set $142
    (f64.const 0.015624999999999995)
   )
   (local.set $143
    (f64.add
     (local.get $141)
     (local.get $142)
    )
   )
   (local.set $144
    (f64.mul
     (local.get $130)
     (local.get $143)
    )
   )
   (f64.store offset=32
    (local.get $3)
    (local.get $144)
   )
   (local.set $145
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $146
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $147
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $148
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $149
    (f64.const 1.1661400333379e-09)
   )
   (local.set $150
    (f64.mul
     (local.get $148)
     (local.get $149)
    )
   )
   (local.set $151
    (f64.const 5.135465502073181e-07)
   )
   (local.set $152
    (f64.add
     (local.get $150)
     (local.get $151)
    )
   )
   (local.set $153
    (f64.mul
     (local.get $147)
     (local.get $152)
    )
   )
   (local.set $154
    (f64.const 1.1692678466333745e-04)
   )
   (local.set $155
    (f64.add
     (local.get $153)
     (local.get $154)
    )
   )
   (local.set $156
    (f64.mul
     (local.get $146)
     (local.get $155)
    )
   )
   (local.set $157
    (f64.const 0.015619102946489001)
   )
   (local.set $158
    (f64.add
     (local.get $156)
     (local.get $157)
    )
   )
   (local.set $159
    (f64.mul
     (local.get $145)
     (local.get $158)
    )
   )
   (local.set $160
    (f64.const 1)
   )
   (local.set $161
    (f64.add
     (local.get $159)
     (local.get $160)
    )
   )
   (f64.store offset=64
    (local.get $3)
    (local.get $161)
   )
   (local.set $162
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $163
    (i32.const 1072693248)
   )
   (local.set $164
    (local.get $162)
   )
   (local.set $165
    (local.get $163)
   )
   (local.set $166
    (i32.lt_s
     (local.get $164)
     (local.get $165)
    )
   )
   (local.set $167
    (i32.const 1)
   )
   (local.set $168
    (i32.and
     (local.get $166)
     (local.get $167)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.eqz
      (local.get $168)
     )
    )
    (local.set $169
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $170
     (f64.load offset=32
      (local.get $3)
     )
    )
    (local.set $171
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $172
     (f64.div
      (local.get $170)
      (local.get $171)
     )
    )
    (local.set $173
     (f64.const -0.25)
    )
    (local.set $174
     (f64.add
      (local.get $173)
      (local.get $172)
     )
    )
    (local.set $175
     (f64.mul
      (local.get $169)
      (local.get $174)
     )
    )
    (local.set $176
     (f64.const 1)
    )
    (local.set $177
     (f64.add
      (local.get $175)
      (local.get $176)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $177)
    )
    (br $label$1)
   )
   (local.set $178
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $179
    (f64.const 0.5)
   )
   (local.set $180
    (f64.mul
     (local.get $179)
     (local.get $178)
    )
   )
   (f64.store offset=24
    (local.get $3)
    (local.get $180)
   )
   (local.set $181
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $182
    (f64.const 1)
   )
   (local.set $183
    (f64.add
     (local.get $182)
     (local.get $181)
    )
   )
   (local.set $184
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $185
    (f64.const 1)
   )
   (local.set $186
    (f64.sub
     (local.get $185)
     (local.get $184)
    )
   )
   (local.set $187
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $188
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $189
    (f64.load offset=64
     (local.get $3)
    )
   )
   (local.set $190
    (f64.div
     (local.get $188)
     (local.get $189)
    )
   )
   (local.set $191
    (f64.mul
     (local.get $187)
     (local.get $190)
    )
   )
   (local.set $192
    (f64.mul
     (local.get $183)
     (local.get $186)
    )
   )
   (local.set $193
    (f64.add
     (local.get $192)
     (local.get $191)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $193)
   )
  )
  (local.set $194
   (f64.load offset=88
    (local.get $3)
   )
  )
  (local.set $195
   (i32.const 96)
  )
  (local.set $196
   (i32.add
    (local.get $3)
    (local.get $195)
   )
  )
  (global.set $__stack_pointer
   (local.get $196)
  )
  (return
   (local.get $194)
  )
 )
 (func $pzero (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 f64)
  (local $45 f64)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 i32)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 f64)
  (local $54 f64)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 i32)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 i32)
  (local $72 f64)
  (local $73 f64)
  (local $74 i32)
  (local $75 f64)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 f64)
  (local $82 f64)
  (local $83 i32)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f64.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=56
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1075838976)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 1136)
    )
    (i32.store offset=52
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 1184)
    )
    (i32.store offset=48
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1074933387)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 1232)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 1280)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1074191213)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 1328)
      )
      (i32.store offset=52
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 1376)
      )
      (i32.store offset=48
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 1424)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 1472)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $39
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $40
   (f64.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f64.const 1)
  )
  (local.set $42
   (f64.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f64.store offset=40
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $44
   (f64.load
    (local.get $43)
   )
  )
  (local.set $45
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $47
   (f64.load offset=8
    (local.get $46)
   )
  )
  (local.set $48
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $50
   (f64.load offset=16
    (local.get $49)
   )
  )
  (local.set $51
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $53
   (f64.load offset=24
    (local.get $52)
   )
  )
  (local.set $54
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $56
   (f64.load offset=32
    (local.get $55)
   )
  )
  (local.set $57
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $59
   (f64.load offset=40
    (local.get $58)
   )
  )
  (local.set $60
   (f64.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f64.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f64.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f64.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f64.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f64.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f64.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f64.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f64.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f64.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $72
   (f64.load
    (local.get $71)
   )
  )
  (local.set $73
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $75
   (f64.load offset=8
    (local.get $74)
   )
  )
  (local.set $76
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $78
   (f64.load offset=16
    (local.get $77)
   )
  )
  (local.set $79
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $81
   (f64.load offset=24
    (local.get $80)
   )
  )
  (local.set $82
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $84
   (f64.load offset=32
    (local.get $83)
   )
  )
  (local.set $85
   (f64.mul
    (local.get $82)
    (local.get $84)
   )
  )
  (local.set $86
   (f64.add
    (local.get $85)
    (local.get $81)
   )
  )
  (local.set $87
   (f64.mul
    (local.get $79)
    (local.get $86)
   )
  )
  (local.set $88
   (f64.add
    (local.get $87)
    (local.get $78)
   )
  )
  (local.set $89
   (f64.mul
    (local.get $76)
    (local.get $88)
   )
  )
  (local.set $90
   (f64.add
    (local.get $89)
    (local.get $75)
   )
  )
  (local.set $91
   (f64.mul
    (local.get $73)
    (local.get $90)
   )
  )
  (local.set $92
   (f64.add
    (local.get $91)
    (local.get $72)
   )
  )
  (local.set $93
   (f64.mul
    (local.get $70)
    (local.get $92)
   )
  )
  (local.set $94
   (f64.const 1)
  )
  (local.set $95
   (f64.add
    (local.get $93)
    (local.get $94)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $95)
  )
  (local.set $96
   (f64.load offset=32
    (local.get $3)
   )
  )
  (local.set $97
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $98
   (f64.div
    (local.get $96)
    (local.get $97)
   )
  )
  (local.set $99
   (f64.const 1)
  )
  (local.set $100
   (f64.add
    (local.get $99)
    (local.get $98)
   )
  )
  (return
   (local.get $100)
  )
 )
 (func $qzero (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 f64)
  (local $45 f64)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 i32)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 f64)
  (local $54 f64)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 i32)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 i32)
  (local $72 f64)
  (local $73 f64)
  (local $74 i32)
  (local $75 f64)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 f64)
  (local $82 f64)
  (local $83 i32)
  (local $84 f64)
  (local $85 f64)
  (local $86 i32)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f64.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=56
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1075838976)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 1520)
    )
    (i32.store offset=52
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 1568)
    )
    (i32.store offset=48
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1074933387)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 1616)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 1664)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1074191213)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 1712)
      )
      (i32.store offset=52
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 1760)
      )
      (i32.store offset=48
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 1808)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 1856)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $39
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $40
   (f64.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f64.const 1)
  )
  (local.set $42
   (f64.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $44
   (f64.load
    (local.get $43)
   )
  )
  (local.set $45
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $47
   (f64.load offset=8
    (local.get $46)
   )
  )
  (local.set $48
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $50
   (f64.load offset=16
    (local.get $49)
   )
  )
  (local.set $51
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $53
   (f64.load offset=24
    (local.get $52)
   )
  )
  (local.set $54
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $56
   (f64.load offset=32
    (local.get $55)
   )
  )
  (local.set $57
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $59
   (f64.load offset=40
    (local.get $58)
   )
  )
  (local.set $60
   (f64.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f64.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f64.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f64.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f64.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f64.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f64.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f64.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f64.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f64.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $72
   (f64.load
    (local.get $71)
   )
  )
  (local.set $73
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $75
   (f64.load offset=8
    (local.get $74)
   )
  )
  (local.set $76
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $78
   (f64.load offset=16
    (local.get $77)
   )
  )
  (local.set $79
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $81
   (f64.load offset=24
    (local.get $80)
   )
  )
  (local.set $82
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $84
   (f64.load offset=32
    (local.get $83)
   )
  )
  (local.set $85
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $86
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $87
   (f64.load offset=40
    (local.get $86)
   )
  )
  (local.set $88
   (f64.mul
    (local.get $85)
    (local.get $87)
   )
  )
  (local.set $89
   (f64.add
    (local.get $88)
    (local.get $84)
   )
  )
  (local.set $90
   (f64.mul
    (local.get $82)
    (local.get $89)
   )
  )
  (local.set $91
   (f64.add
    (local.get $90)
    (local.get $81)
   )
  )
  (local.set $92
   (f64.mul
    (local.get $79)
    (local.get $91)
   )
  )
  (local.set $93
   (f64.add
    (local.get $92)
    (local.get $78)
   )
  )
  (local.set $94
   (f64.mul
    (local.get $76)
    (local.get $93)
   )
  )
  (local.set $95
   (f64.add
    (local.get $94)
    (local.get $75)
   )
  )
  (local.set $96
   (f64.mul
    (local.get $73)
    (local.get $95)
   )
  )
  (local.set $97
   (f64.add
    (local.get $96)
    (local.get $72)
   )
  )
  (local.set $98
   (f64.mul
    (local.get $70)
    (local.get $97)
   )
  )
  (local.set $99
   (f64.const 1)
  )
  (local.set $100
   (f64.add
    (local.get $98)
    (local.get $99)
   )
  )
  (f64.store offset=40
   (local.get $3)
   (local.get $100)
  )
  (local.set $101
   (f64.load offset=32
    (local.get $3)
   )
  )
  (local.set $102
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $103
   (f64.div
    (local.get $101)
    (local.get $102)
   )
  )
  (local.set $104
   (f64.const -0.125)
  )
  (local.set $105
   (f64.add
    (local.get $104)
    (local.get $103)
   )
  )
  (local.set $106
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $107
   (f64.div
    (local.get $105)
    (local.get $106)
   )
  )
  (return
   (local.get $107)
  )
 )
 (func $y0 (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 f64)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 f64)
  (local $44 f64)
  (local $45 f64)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 f64)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 i32)
  (local $69 f64)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 f64)
  (local $163 f64)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 i32)
  (local $180 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 96)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=80
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=80
    (local.get $3)
   )
  )
  (f64.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=4
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $11
   (i32.const 2146435072)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (local.get $11)
  )
  (local.set $14
   (i32.ge_s
    (local.get $12)
    (local.get $13)
   )
  )
  (local.set $15
   (i32.const 1)
  )
  (local.set $16
   (i32.and
    (local.get $14)
    (local.get $15)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $16)
     )
    )
    (local.set $17
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $18
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $19
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $20
     (f64.mul
      (local.get $18)
      (local.get $19)
     )
    )
    (local.set $21
     (f64.add
      (local.get $20)
      (local.get $17)
     )
    )
    (local.set $22
     (f64.const 1)
    )
    (local.set $23
     (f64.div
      (local.get $22)
      (local.get $21)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $23)
    )
    (br $label$1)
   )
   (local.set $24
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $25
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $26
    (i32.or
     (local.get $24)
     (local.get $25)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $26)
    )
    (local.set $27
     (f64.const -inf)
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $27)
    )
    (br $label$1)
   )
   (local.set $28
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $29
    (i32.const 0)
   )
   (local.set $30
    (local.get $28)
   )
   (local.set $31
    (local.get $29)
   )
   (local.set $32
    (i32.lt_s
     (local.get $30)
     (local.get $31)
    )
   )
   (local.set $33
    (i32.const 1)
   )
   (local.set $34
    (i32.and
     (local.get $32)
     (local.get $33)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $34)
     )
    )
    (local.set $35
     (f64.const nan:0x8000000000000)
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $35)
    )
    (br $label$1)
   )
   (local.set $36
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $37
    (i32.const 1073741824)
   )
   (local.set $38
    (local.get $36)
   )
   (local.set $39
    (local.get $37)
   )
   (local.set $40
    (i32.ge_s
     (local.get $38)
     (local.get $39)
    )
   )
   (local.set $41
    (i32.const 1)
   )
   (local.set $42
    (i32.and
     (local.get $40)
     (local.get $41)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $42)
     )
    )
    (local.set $43
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $44
     (call $sin
      (local.get $43)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $44)
    )
    (local.set $45
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $46
     (call $cos
      (local.get $45)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $46)
    )
    (local.set $47
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $48
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $49
     (f64.sub
      (local.get $47)
      (local.get $48)
     )
    )
    (f64.store offset=48
     (local.get $3)
     (local.get $49)
    )
    (local.set $50
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $51
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $52
     (f64.add
      (local.get $50)
      (local.get $51)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $52)
    )
    (local.set $53
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $54
     (i32.const 2145386496)
    )
    (local.set $55
     (local.get $53)
    )
    (local.set $56
     (local.get $54)
    )
    (local.set $57
     (i32.lt_s
      (local.get $55)
      (local.get $56)
     )
    )
    (local.set $58
     (i32.const 1)
    )
    (local.set $59
     (i32.and
      (local.get $57)
      (local.get $58)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $59)
      )
     )
     (local.set $60
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $61
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $62
      (f64.add
       (local.get $60)
       (local.get $61)
      )
     )
     (local.set $63
      (call $cos
       (local.get $62)
      )
     )
     (local.set $64
      (f64.neg
       (local.get $63)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $64)
     )
     (local.set $65
      (f64.load offset=64
       (local.get $3)
      )
     )
     (local.set $66
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $67
      (f64.mul
       (local.get $65)
       (local.get $66)
      )
     )
     (local.set $68
      (i32.const 0)
     )
     (local.set $69
      (f64.convert_i32_s
       (local.get $68)
      )
     )
     (local.set $70
      (f64.lt
       (local.get $67)
       (local.get $69)
      )
     )
     (local.set $71
      (i32.const 1)
     )
     (local.set $72
      (i32.and
       (local.get $70)
       (local.get $71)
      )
     )
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (local.get $72)
        )
       )
       (local.set $73
        (f64.load offset=72
         (local.get $3)
        )
       )
       (local.set $74
        (f64.load offset=48
         (local.get $3)
        )
       )
       (local.set $75
        (f64.div
         (local.get $73)
         (local.get $74)
        )
       )
       (f64.store offset=40
        (local.get $3)
        (local.get $75)
       )
       (br $label$7)
      )
      (local.set $76
       (f64.load offset=72
        (local.get $3)
       )
      )
      (local.set $77
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $78
       (f64.div
        (local.get $76)
        (local.get $77)
       )
      )
      (f64.store offset=48
       (local.get $3)
       (local.get $78)
      )
     )
    )
    (local.set $79
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $80
     (i32.const 1207959552)
    )
    (local.set $81
     (local.get $79)
    )
    (local.set $82
     (local.get $80)
    )
    (local.set $83
     (i32.gt_s
      (local.get $81)
      (local.get $82)
     )
    )
    (local.set $84
     (i32.const 1)
    )
    (local.set $85
     (i32.and
      (local.get $83)
      (local.get $84)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $85)
       )
      )
      (local.set $86
       (f64.load offset=48
        (local.get $3)
       )
      )
      (local.set $87
       (f64.const 0.5641895835477563)
      )
      (local.set $88
       (f64.mul
        (local.get $87)
        (local.get $86)
       )
      )
      (local.set $89
       (f64.load offset=80
        (local.get $3)
       )
      )
      (local.set $90
       (call $sqrt
        (local.get $89)
       )
      )
      (local.set $91
       (f64.div
        (local.get $88)
        (local.get $90)
       )
      )
      (f64.store offset=72
       (local.get $3)
       (local.get $91)
      )
      (br $label$9)
     )
     (local.set $92
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $93
      (call $pzero
       (local.get $92)
      )
     )
     (f64.store offset=32
      (local.get $3)
      (local.get $93)
     )
     (local.set $94
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $95
      (call $qzero
       (local.get $94)
      )
     )
     (f64.store offset=24
      (local.get $3)
      (local.get $95)
     )
     (local.set $96
      (f64.load offset=32
       (local.get $3)
      )
     )
     (local.set $97
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $98
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $99
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $100
      (f64.mul
       (local.get $98)
       (local.get $99)
      )
     )
     (local.set $101
      (f64.mul
       (local.get $96)
       (local.get $97)
      )
     )
     (local.set $102
      (f64.add
       (local.get $101)
       (local.get $100)
      )
     )
     (local.set $103
      (f64.const 0.5641895835477563)
     )
     (local.set $104
      (f64.mul
       (local.get $103)
       (local.get $102)
      )
     )
     (local.set $105
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $106
      (call $sqrt
       (local.get $105)
      )
     )
     (local.set $107
      (f64.div
       (local.get $104)
       (local.get $106)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $107)
     )
    )
    (local.set $108
     (f64.load offset=72
      (local.get $3)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $108)
    )
    (br $label$1)
   )
   (local.set $109
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $110
    (i32.const 1044381696)
   )
   (local.set $111
    (local.get $109)
   )
   (local.set $112
    (local.get $110)
   )
   (local.set $113
    (i32.le_s
     (local.get $111)
     (local.get $112)
    )
   )
   (local.set $114
    (i32.const 1)
   )
   (local.set $115
    (i32.and
     (local.get $113)
     (local.get $114)
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (local.get $115)
     )
    )
    (local.set $116
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $117
     (call $log
      (local.get $116)
     )
    )
    (local.set $118
     (f64.const 0.6366197723675814)
    )
    (local.set $119
     (f64.mul
      (local.get $117)
      (local.get $118)
     )
    )
    (local.set $120
     (f64.const -0.07380429510868723)
    )
    (local.set $121
     (f64.add
      (local.get $119)
      (local.get $120)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $121)
    )
    (br $label$1)
   )
   (local.set $122
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $123
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $124
    (f64.mul
     (local.get $122)
     (local.get $123)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $124)
   )
   (local.set $125
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $126
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $127
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $128
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $129
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $130
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $131
    (f64.const -3.982051941321034e-11)
   )
   (local.set $132
    (f64.mul
     (local.get $130)
     (local.get $131)
    )
   )
   (local.set $133
    (f64.const 1.9559013703502292e-08)
   )
   (local.set $134
    (f64.add
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f64.mul
     (local.get $129)
     (local.get $134)
    )
   )
   (local.set $136
    (f64.const -3.8140705372436416e-06)
   )
   (local.set $137
    (f64.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f64.mul
     (local.get $128)
     (local.get $137)
    )
   )
   (local.set $139
    (f64.const 3.4745343209368365e-04)
   )
   (local.set $140
    (f64.add
     (local.get $138)
     (local.get $139)
    )
   )
   (local.set $141
    (f64.mul
     (local.get $127)
     (local.get $140)
    )
   )
   (local.set $142
    (f64.const -0.01381856719455969)
   )
   (local.set $143
    (f64.add
     (local.get $141)
     (local.get $142)
    )
   )
   (local.set $144
    (f64.mul
     (local.get $126)
     (local.get $143)
    )
   )
   (local.set $145
    (f64.const 0.17666645250918112)
   )
   (local.set $146
    (f64.add
     (local.get $144)
     (local.get $145)
    )
   )
   (local.set $147
    (f64.mul
     (local.get $125)
     (local.get $146)
    )
   )
   (local.set $148
    (f64.const -0.07380429510868723)
   )
   (local.set $149
    (f64.add
     (local.get $147)
     (local.get $148)
    )
   )
   (f64.store offset=32
    (local.get $3)
    (local.get $149)
   )
   (local.set $150
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $151
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $152
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $153
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $154
    (f64.const 4.4111031133267547e-10)
   )
   (local.set $155
    (f64.mul
     (local.get $153)
     (local.get $154)
    )
   )
   (local.set $156
    (f64.const 2.591508518404578e-07)
   )
   (local.set $157
    (f64.add
     (local.get $155)
     (local.get $156)
    )
   )
   (local.set $158
    (f64.mul
     (local.get $152)
     (local.get $157)
    )
   )
   (local.set $159
    (f64.const 7.600686273503533e-05)
   )
   (local.set $160
    (f64.add
     (local.get $158)
     (local.get $159)
    )
   )
   (local.set $161
    (f64.mul
     (local.get $151)
     (local.get $160)
    )
   )
   (local.set $162
    (f64.const 0.01273048348341237)
   )
   (local.set $163
    (f64.add
     (local.get $161)
     (local.get $162)
    )
   )
   (local.set $164
    (f64.mul
     (local.get $150)
     (local.get $163)
    )
   )
   (local.set $165
    (f64.const 1)
   )
   (local.set $166
    (f64.add
     (local.get $164)
     (local.get $165)
    )
   )
   (f64.store offset=24
    (local.get $3)
    (local.get $166)
   )
   (local.set $167
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $168
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $169
    (f64.div
     (local.get $167)
     (local.get $168)
    )
   )
   (local.set $170
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $171
    (call $j0
     (local.get $170)
    )
   )
   (local.set $172
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $173
    (call $log
     (local.get $172)
    )
   )
   (local.set $174
    (f64.mul
     (local.get $171)
     (local.get $173)
    )
   )
   (local.set $175
    (f64.const 0.6366197723675814)
   )
   (local.set $176
    (f64.mul
     (local.get $174)
     (local.get $175)
    )
   )
   (local.set $177
    (f64.add
     (local.get $176)
     (local.get $169)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $177)
   )
  )
  (local.set $178
   (f64.load offset=88
    (local.get $3)
   )
  )
  (local.set $179
   (i32.const 96)
  )
  (local.set $180
   (i32.add
    (local.get $3)
    (local.get $179)
   )
  )
  (global.set $__stack_pointer
   (local.get $180)
  )
  (return
   (local.get $178)
  )
 )
 (func $j0f (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 f32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 f32)
  (local $48 f32)
  (local $49 f32)
  (local $50 f32)
  (local $51 f32)
  (local $52 f32)
  (local $53 f32)
  (local $54 f32)
  (local $55 i32)
  (local $56 f32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f32)
  (local $107 f32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 f32)
  (local $128 f32)
  (local $129 f32)
  (local $130 f32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 f32)
  (local $137 f32)
  (local $138 f32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 f32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 f32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 f32)
  (local $184 f32)
  (local $185 f32)
  (local $186 f32)
  (local $187 f32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 f32)
  (local $194 i32)
  (local $195 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=56
    (local.get $3)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2139095040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $18
     (f32.mul
      (local.get $16)
      (local.get $17)
     )
    )
    (local.set $19
     (f32.const 1)
    )
    (local.set $20
     (f32.div
      (local.get $19)
      (local.get $18)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $20)
    )
    (br $label$1)
   )
   (local.set $21
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $22
    (call $fabsf
     (local.get $21)
    )
   )
   (f32.store offset=56
    (local.get $3)
    (local.get $22)
   )
   (local.set $23
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $24
    (i32.const 1073741824)
   )
   (local.set $25
    (local.get $23)
   )
   (local.set $26
    (local.get $24)
   )
   (local.set $27
    (i32.ge_s
     (local.get $25)
     (local.get $26)
    )
   )
   (local.set $28
    (i32.const 1)
   )
   (local.set $29
    (i32.and
     (local.get $27)
     (local.get $28)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $29)
     )
    )
    (local.set $30
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $31
     (call $sinf
      (local.get $30)
     )
    )
    (f32.store offset=48
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $33
     (call $cosf
      (local.get $32)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $33)
    )
    (local.set $34
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $35
     (f32.load offset=44
      (local.get $3)
     )
    )
    (local.set $36
     (f32.sub
      (local.get $34)
      (local.get $35)
     )
    )
    (f32.store offset=40
     (local.get $3)
     (local.get $36)
    )
    (local.set $37
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $38
     (f32.load offset=44
      (local.get $3)
     )
    )
    (local.set $39
     (f32.add
      (local.get $37)
      (local.get $38)
     )
    )
    (f32.store offset=36
     (local.get $3)
     (local.get $39)
    )
    (local.set $40
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $41
     (i32.const 2130706432)
    )
    (local.set $42
     (local.get $40)
    )
    (local.set $43
     (local.get $41)
    )
    (local.set $44
     (i32.lt_s
      (local.get $42)
      (local.get $43)
     )
    )
    (local.set $45
     (i32.const 1)
    )
    (local.set $46
     (i32.and
      (local.get $44)
      (local.get $45)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $46)
      )
     )
     (local.set $47
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $48
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $49
      (f32.add
       (local.get $47)
       (local.get $48)
      )
     )
     (local.set $50
      (call $cosf
       (local.get $49)
      )
     )
     (local.set $51
      (f32.neg
       (local.get $50)
      )
     )
     (f32.store offset=52
      (local.get $3)
      (local.get $51)
     )
     (local.set $52
      (f32.load offset=48
       (local.get $3)
      )
     )
     (local.set $53
      (f32.load offset=44
       (local.get $3)
      )
     )
     (local.set $54
      (f32.mul
       (local.get $52)
       (local.get $53)
      )
     )
     (local.set $55
      (i32.const 0)
     )
     (local.set $56
      (f32.convert_i32_s
       (local.get $55)
      )
     )
     (local.set $57
      (f32.lt
       (local.get $54)
       (local.get $56)
      )
     )
     (local.set $58
      (i32.const 1)
     )
     (local.set $59
      (i32.and
       (local.get $57)
       (local.get $58)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (local.get $59)
        )
       )
       (local.set $60
        (f32.load offset=52
         (local.get $3)
        )
       )
       (local.set $61
        (f32.load offset=40
         (local.get $3)
        )
       )
       (local.set $62
        (f32.div
         (local.get $60)
         (local.get $61)
        )
       )
       (f32.store offset=36
        (local.get $3)
        (local.get $62)
       )
       (br $label$5)
      )
      (local.set $63
       (f32.load offset=52
        (local.get $3)
       )
      )
      (local.set $64
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $65
       (f32.div
        (local.get $63)
        (local.get $64)
       )
      )
      (f32.store offset=40
       (local.get $3)
       (local.get $65)
      )
     )
    )
    (local.set $66
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $67
     (i32.const 1476395008)
    )
    (local.set $68
     (local.get $66)
    )
    (local.set $69
     (local.get $67)
    )
    (local.set $70
     (i32.gt_s
      (local.get $68)
      (local.get $69)
     )
    )
    (local.set $71
     (i32.const 1)
    )
    (local.set $72
     (i32.and
      (local.get $70)
      (local.get $71)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $72)
       )
      )
      (local.set $73
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $74
       (f32.const 0.564189612865448)
      )
      (local.set $75
       (f32.mul
        (local.get $74)
        (local.get $73)
       )
      )
      (local.set $76
       (f32.load offset=56
        (local.get $3)
       )
      )
      (local.set $77
       (call $sqrtf
        (local.get $76)
       )
      )
      (local.set $78
       (f32.div
        (local.get $75)
        (local.get $77)
       )
      )
      (f32.store offset=52
       (local.get $3)
       (local.get $78)
      )
      (br $label$7)
     )
     (local.set $79
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $80
      (call $pzerof
       (local.get $79)
      )
     )
     (f32.store offset=28
      (local.get $3)
      (local.get $80)
     )
     (local.set $81
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $82
      (call $qzerof
       (local.get $81)
      )
     )
     (f32.store offset=24
      (local.get $3)
      (local.get $82)
     )
     (local.set $83
      (f32.load offset=28
       (local.get $3)
      )
     )
     (local.set $84
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $85
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $86
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $87
      (f32.mul
       (local.get $85)
       (local.get $86)
      )
     )
     (local.set $88
      (f32.neg
       (local.get $87)
      )
     )
     (local.set $89
      (f32.mul
       (local.get $83)
       (local.get $84)
      )
     )
     (local.set $90
      (f32.add
       (local.get $89)
       (local.get $88)
      )
     )
     (local.set $91
      (f32.const 0.564189612865448)
     )
     (local.set $92
      (f32.mul
       (local.get $91)
       (local.get $90)
      )
     )
     (local.set $93
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $94
      (call $sqrtf
       (local.get $93)
      )
     )
     (local.set $95
      (f32.div
       (local.get $92)
       (local.get $94)
      )
     )
     (f32.store offset=52
      (local.get $3)
      (local.get $95)
     )
    )
    (local.set $96
     (f32.load offset=52
      (local.get $3)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $96)
    )
    (br $label$1)
   )
   (local.set $97
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $98
    (i32.const 989855744)
   )
   (local.set $99
    (local.get $97)
   )
   (local.set $100
    (local.get $98)
   )
   (local.set $101
    (i32.lt_s
     (local.get $99)
     (local.get $100)
    )
   )
   (local.set $102
    (i32.const 1)
   )
   (local.set $103
    (i32.and
     (local.get $101)
     (local.get $102)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (local.get $103)
     )
    )
    (local.set $104
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $105
     (f32.const 1000000015047466219876688e6)
    )
    (local.set $106
     (f32.add
      (local.get $105)
      (local.get $104)
     )
    )
    (local.set $107
     (f32.const 1)
    )
    (local.set $108
     (f32.gt
      (local.get $106)
      (local.get $107)
     )
    )
    (local.set $109
     (i32.const 1)
    )
    (local.set $110
     (i32.and
      (local.get $108)
      (local.get $109)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $110)
      )
     )
     (local.set $111
      (i32.load offset=16
       (local.get $3)
      )
     )
     (local.set $112
      (i32.const 964689920)
     )
     (local.set $113
      (local.get $111)
     )
     (local.set $114
      (local.get $112)
     )
     (local.set $115
      (i32.lt_s
       (local.get $113)
       (local.get $114)
      )
     )
     (local.set $116
      (i32.const 1)
     )
     (local.set $117
      (i32.and
       (local.get $115)
       (local.get $116)
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (local.get $117)
       )
      )
      (local.set $118
       (f32.const 1)
      )
      (f32.store offset=60
       (local.get $3)
       (local.get $118)
      )
      (br $label$1)
     )
     (local.set $119
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $120
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $121
      (f32.mul
       (local.get $119)
       (local.get $120)
      )
     )
     (local.set $122
      (f32.const 4)
     )
     (local.set $123
      (f32.div
       (local.get $121)
       (local.get $122)
      )
     )
     (local.set $124
      (f32.const 1)
     )
     (local.set $125
      (f32.sub
       (local.get $124)
       (local.get $123)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $125)
     )
     (br $label$1)
    )
   )
   (local.set $126
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $127
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $128
    (f32.mul
     (local.get $126)
     (local.get $127)
    )
   )
   (f32.store offset=52
    (local.get $3)
    (local.get $128)
   )
   (local.set $129
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $130
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $131
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $132
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $133
    (f32.const -4.618327054117799e-09)
   )
   (local.set $134
    (f32.mul
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f32.const 1.8295404515811242e-06)
   )
   (local.set $136
    (f32.add
     (local.get $134)
     (local.get $135)
    )
   )
   (local.set $137
    (f32.mul
     (local.get $131)
     (local.get $136)
    )
   )
   (local.set $138
    (f32.const -1.8997929873876274e-04)
   )
   (local.set $139
    (f32.add
     (local.get $137)
     (local.get $138)
    )
   )
   (local.set $140
    (f32.mul
     (local.get $130)
     (local.get $139)
    )
   )
   (local.set $141
    (f32.const 0.015625)
   )
   (local.set $142
    (f32.add
     (local.get $140)
     (local.get $141)
    )
   )
   (local.set $143
    (f32.mul
     (local.get $129)
     (local.get $142)
    )
   )
   (f32.store offset=32
    (local.get $3)
    (local.get $143)
   )
   (local.set $144
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $145
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $146
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $147
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $148
    (f32.const 1.1661400733942173e-09)
   )
   (local.set $149
    (f32.mul
     (local.get $147)
     (local.get $148)
    )
   )
   (local.set $150
    (f32.const 5.135465244165971e-07)
   )
   (local.set $151
    (f32.add
     (local.get $149)
     (local.get $150)
    )
   )
   (local.set $152
    (f32.mul
     (local.get $146)
     (local.get $151)
    )
   )
   (local.set $153
    (f32.const 1.1692678526742384e-04)
   )
   (local.set $154
    (f32.add
     (local.get $152)
     (local.get $153)
    )
   )
   (local.set $155
    (f32.mul
     (local.get $145)
     (local.get $154)
    )
   )
   (local.set $156
    (f32.const 0.015619102865457535)
   )
   (local.set $157
    (f32.add
     (local.get $155)
     (local.get $156)
    )
   )
   (local.set $158
    (f32.mul
     (local.get $144)
     (local.get $157)
    )
   )
   (local.set $159
    (f32.const 1)
   )
   (local.set $160
    (f32.add
     (local.get $158)
     (local.get $159)
    )
   )
   (f32.store offset=48
    (local.get $3)
    (local.get $160)
   )
   (local.set $161
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $162
    (i32.const 1065353216)
   )
   (local.set $163
    (local.get $161)
   )
   (local.set $164
    (local.get $162)
   )
   (local.set $165
    (i32.lt_s
     (local.get $163)
     (local.get $164)
    )
   )
   (local.set $166
    (i32.const 1)
   )
   (local.set $167
    (i32.and
     (local.get $165)
     (local.get $166)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.eqz
      (local.get $167)
     )
    )
    (local.set $168
     (f32.load offset=52
      (local.get $3)
     )
    )
    (local.set $169
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $170
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $171
     (f32.div
      (local.get $169)
      (local.get $170)
     )
    )
    (local.set $172
     (f32.const -0.25)
    )
    (local.set $173
     (f32.add
      (local.get $172)
      (local.get $171)
     )
    )
    (local.set $174
     (f32.mul
      (local.get $168)
      (local.get $173)
     )
    )
    (local.set $175
     (f32.const 1)
    )
    (local.set $176
     (f32.add
      (local.get $174)
      (local.get $175)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $176)
    )
    (br $label$1)
   )
   (local.set $177
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $178
    (f32.const 0.5)
   )
   (local.set $179
    (f32.mul
     (local.get $178)
     (local.get $177)
    )
   )
   (f32.store offset=28
    (local.get $3)
    (local.get $179)
   )
   (local.set $180
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $181
    (f32.const 1)
   )
   (local.set $182
    (f32.add
     (local.get $181)
     (local.get $180)
    )
   )
   (local.set $183
    (f32.load offset=28
     (local.get $3)
    )
   )
   (local.set $184
    (f32.const 1)
   )
   (local.set $185
    (f32.sub
     (local.get $184)
     (local.get $183)
    )
   )
   (local.set $186
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $187
    (f32.load offset=32
     (local.get $3)
    )
   )
   (local.set $188
    (f32.load offset=48
     (local.get $3)
    )
   )
   (local.set $189
    (f32.div
     (local.get $187)
     (local.get $188)
    )
   )
   (local.set $190
    (f32.mul
     (local.get $186)
     (local.get $189)
    )
   )
   (local.set $191
    (f32.mul
     (local.get $182)
     (local.get $185)
    )
   )
   (local.set $192
    (f32.add
     (local.get $191)
     (local.get $190)
    )
   )
   (f32.store offset=60
    (local.get $3)
    (local.get $192)
   )
  )
  (local.set $193
   (f32.load offset=60
    (local.get $3)
   )
  )
  (local.set $194
   (i32.const 64)
  )
  (local.set $195
   (i32.add
    (local.get $3)
    (local.get $194)
   )
  )
  (global.set $__stack_pointer
   (local.get $195)
  )
  (return
   (local.get $193)
  )
 )
 (func $pzerof (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 i32)
  (local $44 f32)
  (local $45 f32)
  (local $46 i32)
  (local $47 f32)
  (local $48 f32)
  (local $49 i32)
  (local $50 f32)
  (local $51 f32)
  (local $52 i32)
  (local $53 f32)
  (local $54 f32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 f32)
  (local $73 f32)
  (local $74 i32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 f32)
  (local $79 f32)
  (local $80 i32)
  (local $81 f32)
  (local $82 f32)
  (local $83 i32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f32.store offset=28
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=28
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1090519040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 1904)
    )
    (i32.store offset=24
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 1936)
    )
    (i32.store offset=20
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1083274219)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 1968)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 2000)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1077336343)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 2032)
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 2064)
      )
      (i32.store offset=20
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 2096)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 2128)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $39
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $40
   (f32.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f32.const 1)
  )
  (local.set $42
   (f32.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $44
   (f32.load
    (local.get $43)
   )
  )
  (local.set $45
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $47
   (f32.load offset=4
    (local.get $46)
   )
  )
  (local.set $48
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $50
   (f32.load offset=8
    (local.get $49)
   )
  )
  (local.set $51
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $53
   (f32.load offset=12
    (local.get $52)
   )
  )
  (local.set $54
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $56
   (f32.load offset=16
    (local.get $55)
   )
  )
  (local.set $57
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $59
   (f32.load offset=20
    (local.get $58)
   )
  )
  (local.set $60
   (f32.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f32.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f32.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f32.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f32.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f32.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f32.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f32.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f32.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f32.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f32.store offset=12
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $72
   (f32.load
    (local.get $71)
   )
  )
  (local.set $73
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $75
   (f32.load offset=4
    (local.get $74)
   )
  )
  (local.set $76
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $78
   (f32.load offset=8
    (local.get $77)
   )
  )
  (local.set $79
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $81
   (f32.load offset=12
    (local.get $80)
   )
  )
  (local.set $82
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $84
   (f32.load offset=16
    (local.get $83)
   )
  )
  (local.set $85
   (f32.mul
    (local.get $82)
    (local.get $84)
   )
  )
  (local.set $86
   (f32.add
    (local.get $85)
    (local.get $81)
   )
  )
  (local.set $87
   (f32.mul
    (local.get $79)
    (local.get $86)
   )
  )
  (local.set $88
   (f32.add
    (local.get $87)
    (local.get $78)
   )
  )
  (local.set $89
   (f32.mul
    (local.get $76)
    (local.get $88)
   )
  )
  (local.set $90
   (f32.add
    (local.get $89)
    (local.get $75)
   )
  )
  (local.set $91
   (f32.mul
    (local.get $73)
    (local.get $90)
   )
  )
  (local.set $92
   (f32.add
    (local.get $91)
    (local.get $72)
   )
  )
  (local.set $93
   (f32.mul
    (local.get $70)
    (local.get $92)
   )
  )
  (local.set $94
   (f32.const 1)
  )
  (local.set $95
   (f32.add
    (local.get $93)
    (local.get $94)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $95)
  )
  (local.set $96
   (f32.load offset=12
    (local.get $3)
   )
  )
  (local.set $97
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $98
   (f32.div
    (local.get $96)
    (local.get $97)
   )
  )
  (local.set $99
   (f32.const 1)
  )
  (local.set $100
   (f32.add
    (local.get $99)
    (local.get $98)
   )
  )
  (return
   (local.get $100)
  )
 )
 (func $qzerof (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 i32)
  (local $44 f32)
  (local $45 f32)
  (local $46 i32)
  (local $47 f32)
  (local $48 f32)
  (local $49 i32)
  (local $50 f32)
  (local $51 f32)
  (local $52 i32)
  (local $53 f32)
  (local $54 f32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 f32)
  (local $73 f32)
  (local $74 i32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 f32)
  (local $79 f32)
  (local $80 i32)
  (local $81 f32)
  (local $82 f32)
  (local $83 i32)
  (local $84 f32)
  (local $85 f32)
  (local $86 i32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f32)
  (local $107 f32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f32.store offset=28
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=28
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1090519040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 2160)
    )
    (i32.store offset=24
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 2192)
    )
    (i32.store offset=20
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1083274219)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 2224)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 2256)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1077336343)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 2288)
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 2320)
      )
      (i32.store offset=20
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 2352)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 2384)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $39
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $40
   (f32.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f32.const 1)
  )
  (local.set $42
   (f32.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $44
   (f32.load
    (local.get $43)
   )
  )
  (local.set $45
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $47
   (f32.load offset=4
    (local.get $46)
   )
  )
  (local.set $48
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $50
   (f32.load offset=8
    (local.get $49)
   )
  )
  (local.set $51
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $53
   (f32.load offset=12
    (local.get $52)
   )
  )
  (local.set $54
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $56
   (f32.load offset=16
    (local.get $55)
   )
  )
  (local.set $57
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $59
   (f32.load offset=20
    (local.get $58)
   )
  )
  (local.set $60
   (f32.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f32.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f32.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f32.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f32.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f32.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f32.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f32.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f32.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f32.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f32.store offset=12
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $72
   (f32.load
    (local.get $71)
   )
  )
  (local.set $73
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $75
   (f32.load offset=4
    (local.get $74)
   )
  )
  (local.set $76
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $78
   (f32.load offset=8
    (local.get $77)
   )
  )
  (local.set $79
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $81
   (f32.load offset=12
    (local.get $80)
   )
  )
  (local.set $82
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $84
   (f32.load offset=16
    (local.get $83)
   )
  )
  (local.set $85
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $86
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $87
   (f32.load offset=20
    (local.get $86)
   )
  )
  (local.set $88
   (f32.mul
    (local.get $85)
    (local.get $87)
   )
  )
  (local.set $89
   (f32.add
    (local.get $88)
    (local.get $84)
   )
  )
  (local.set $90
   (f32.mul
    (local.get $82)
    (local.get $89)
   )
  )
  (local.set $91
   (f32.add
    (local.get $90)
    (local.get $81)
   )
  )
  (local.set $92
   (f32.mul
    (local.get $79)
    (local.get $91)
   )
  )
  (local.set $93
   (f32.add
    (local.get $92)
    (local.get $78)
   )
  )
  (local.set $94
   (f32.mul
    (local.get $76)
    (local.get $93)
   )
  )
  (local.set $95
   (f32.add
    (local.get $94)
    (local.get $75)
   )
  )
  (local.set $96
   (f32.mul
    (local.get $73)
    (local.get $95)
   )
  )
  (local.set $97
   (f32.add
    (local.get $96)
    (local.get $72)
   )
  )
  (local.set $98
   (f32.mul
    (local.get $70)
    (local.get $97)
   )
  )
  (local.set $99
   (f32.const 1)
  )
  (local.set $100
   (f32.add
    (local.get $98)
    (local.get $99)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $100)
  )
  (local.set $101
   (f32.load offset=12
    (local.get $3)
   )
  )
  (local.set $102
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $103
   (f32.div
    (local.get $101)
    (local.get $102)
   )
  )
  (local.set $104
   (f32.const -0.125)
  )
  (local.set $105
   (f32.add
    (local.get $104)
    (local.get $103)
   )
  )
  (local.set $106
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $107
   (f32.div
    (local.get $105)
    (local.get $106)
   )
  )
  (return
   (local.get $107)
  )
 )
 (func $y0f (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 i32)
  (local $24 f32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 f32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 f32)
  (local $45 f32)
  (local $46 f32)
  (local $47 f32)
  (local $48 f32)
  (local $49 f32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 f32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 i32)
  (local $66 f32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 f32)
  (local $114 f32)
  (local $115 f32)
  (local $116 f32)
  (local $117 f32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 f32)
  (local $128 f32)
  (local $129 f32)
  (local $130 f32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 f32)
  (local $137 f32)
  (local $138 f32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 f32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 f32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 f32)
  (local $162 f32)
  (local $163 f32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 i32)
  (local $177 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=40
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=40
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=8
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2139095040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $18
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $19
     (f32.mul
      (local.get $17)
      (local.get $18)
     )
    )
    (local.set $20
     (f32.add
      (local.get $19)
      (local.get $16)
     )
    )
    (local.set $21
     (f32.const 1)
    )
    (local.set $22
     (f32.div
      (local.get $21)
      (local.get $20)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $22)
    )
    (br $label$1)
   )
   (local.set $23
    (i32.load offset=4
     (local.get $3)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $23)
    )
    (local.set $24
     (f32.const -inf)
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $24)
    )
    (br $label$1)
   )
   (local.set $25
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $26
    (i32.const 0)
   )
   (local.set $27
    (local.get $25)
   )
   (local.set $28
    (local.get $26)
   )
   (local.set $29
    (i32.lt_s
     (local.get $27)
     (local.get $28)
    )
   )
   (local.set $30
    (i32.const 1)
   )
   (local.set $31
    (i32.and
     (local.get $29)
     (local.get $30)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $31)
     )
    )
    (local.set $32
     (f32.const nan:0x400000)
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $32)
    )
    (br $label$1)
   )
   (local.set $33
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $34
    (i32.const 1073741824)
   )
   (local.set $35
    (local.get $33)
   )
   (local.set $36
    (local.get $34)
   )
   (local.set $37
    (i32.ge_s
     (local.get $35)
     (local.get $36)
    )
   )
   (local.set $38
    (i32.const 1)
   )
   (local.set $39
    (i32.and
     (local.get $37)
     (local.get $38)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $39)
     )
    )
    (local.set $40
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $41
     (call $sinf
      (local.get $40)
     )
    )
    (f32.store offset=32
     (local.get $3)
     (local.get $41)
    )
    (local.set $42
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $43
     (call $cosf
      (local.get $42)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $43)
    )
    (local.set $44
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $45
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $46
     (f32.sub
      (local.get $44)
      (local.get $45)
     )
    )
    (f32.store offset=24
     (local.get $3)
     (local.get $46)
    )
    (local.set $47
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $48
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $49
     (f32.add
      (local.get $47)
      (local.get $48)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $49)
    )
    (local.set $50
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $51
     (i32.const 2130706432)
    )
    (local.set $52
     (local.get $50)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (i32.lt_s
      (local.get $52)
      (local.get $53)
     )
    )
    (local.set $55
     (i32.const 1)
    )
    (local.set $56
     (i32.and
      (local.get $54)
      (local.get $55)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $56)
      )
     )
     (local.set $57
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $58
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $59
      (f32.add
       (local.get $57)
       (local.get $58)
      )
     )
     (local.set $60
      (call $cosf
       (local.get $59)
      )
     )
     (local.set $61
      (f32.neg
       (local.get $60)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $61)
     )
     (local.set $62
      (f32.load offset=32
       (local.get $3)
      )
     )
     (local.set $63
      (f32.load offset=28
       (local.get $3)
      )
     )
     (local.set $64
      (f32.mul
       (local.get $62)
       (local.get $63)
      )
     )
     (local.set $65
      (i32.const 0)
     )
     (local.set $66
      (f32.convert_i32_s
       (local.get $65)
      )
     )
     (local.set $67
      (f32.lt
       (local.get $64)
       (local.get $66)
      )
     )
     (local.set $68
      (i32.const 1)
     )
     (local.set $69
      (i32.and
       (local.get $67)
       (local.get $68)
      )
     )
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (local.get $69)
        )
       )
       (local.set $70
        (f32.load offset=36
         (local.get $3)
        )
       )
       (local.set $71
        (f32.load offset=24
         (local.get $3)
        )
       )
       (local.set $72
        (f32.div
         (local.get $70)
         (local.get $71)
        )
       )
       (f32.store offset=20
        (local.get $3)
        (local.get $72)
       )
       (br $label$7)
      )
      (local.set $73
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $74
       (f32.load offset=20
        (local.get $3)
       )
      )
      (local.set $75
       (f32.div
        (local.get $73)
        (local.get $74)
       )
      )
      (f32.store offset=24
       (local.get $3)
       (local.get $75)
      )
     )
    )
    (local.set $76
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $77
     (i32.const 1476395008)
    )
    (local.set $78
     (local.get $76)
    )
    (local.set $79
     (local.get $77)
    )
    (local.set $80
     (i32.gt_s
      (local.get $78)
      (local.get $79)
     )
    )
    (local.set $81
     (i32.const 1)
    )
    (local.set $82
     (i32.and
      (local.get $80)
      (local.get $81)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $82)
       )
      )
      (local.set $83
       (f32.load offset=24
        (local.get $3)
       )
      )
      (local.set $84
       (f32.const 0.564189612865448)
      )
      (local.set $85
       (f32.mul
        (local.get $84)
        (local.get $83)
       )
      )
      (local.set $86
       (f32.load offset=40
        (local.get $3)
       )
      )
      (local.set $87
       (call $sqrtf
        (local.get $86)
       )
      )
      (local.set $88
       (f32.div
        (local.get $85)
        (local.get $87)
       )
      )
      (f32.store offset=36
       (local.get $3)
       (local.get $88)
      )
      (br $label$9)
     )
     (local.set $89
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $90
      (call $pzerof
       (local.get $89)
      )
     )
     (f32.store offset=16
      (local.get $3)
      (local.get $90)
     )
     (local.set $91
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $92
      (call $qzerof
       (local.get $91)
      )
     )
     (f32.store offset=12
      (local.get $3)
      (local.get $92)
     )
     (local.set $93
      (f32.load offset=16
       (local.get $3)
      )
     )
     (local.set $94
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $95
      (f32.load offset=12
       (local.get $3)
      )
     )
     (local.set $96
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $97
      (f32.mul
       (local.get $95)
       (local.get $96)
      )
     )
     (local.set $98
      (f32.mul
       (local.get $93)
       (local.get $94)
      )
     )
     (local.set $99
      (f32.add
       (local.get $98)
       (local.get $97)
      )
     )
     (local.set $100
      (f32.const 0.564189612865448)
     )
     (local.set $101
      (f32.mul
       (local.get $100)
       (local.get $99)
      )
     )
     (local.set $102
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $103
      (call $sqrtf
       (local.get $102)
      )
     )
     (local.set $104
      (f32.div
       (local.get $101)
       (local.get $103)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $104)
     )
    )
    (local.set $105
     (f32.load offset=36
      (local.get $3)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $105)
    )
    (br $label$1)
   )
   (local.set $106
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $107
    (i32.const 956301312)
   )
   (local.set $108
    (local.get $106)
   )
   (local.set $109
    (local.get $107)
   )
   (local.set $110
    (i32.le_s
     (local.get $108)
     (local.get $109)
    )
   )
   (local.set $111
    (i32.const 1)
   )
   (local.set $112
    (i32.and
     (local.get $110)
     (local.get $111)
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (local.get $112)
     )
    )
    (local.set $113
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $114
     (call $logf
      (local.get $113)
     )
    )
    (local.set $115
     (f32.const 0.6366197466850281)
    )
    (local.set $116
     (f32.mul
      (local.get $114)
      (local.get $115)
     )
    )
    (local.set $117
     (f32.const -0.07380429655313492)
    )
    (local.set $118
     (f32.add
      (local.get $116)
      (local.get $117)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $118)
    )
    (br $label$1)
   )
   (local.set $119
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $120
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $121
    (f32.mul
     (local.get $119)
     (local.get $120)
    )
   )
   (f32.store offset=36
    (local.get $3)
    (local.get $121)
   )
   (local.set $122
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $123
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $124
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $125
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $126
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $127
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $128
    (f32.const -3.9820518410449424e-11)
   )
   (local.set $129
    (f32.mul
     (local.get $127)
     (local.get $128)
    )
   )
   (local.set $130
    (f32.const 1.955901396399895e-08)
   )
   (local.set $131
    (f32.add
     (local.get $129)
     (local.get $130)
    )
   )
   (local.set $132
    (f32.mul
     (local.get $126)
     (local.get $131)
    )
   )
   (local.set $133
    (f32.const -3.8140706237754785e-06)
   )
   (local.set $134
    (f32.add
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f32.mul
     (local.get $125)
     (local.get $134)
    )
   )
   (local.set $136
    (f32.const 3.4745343145914376e-04)
   )
   (local.set $137
    (f32.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f32.mul
     (local.get $124)
     (local.get $137)
    )
   )
   (local.set $139
    (f32.const -0.013818567618727684)
   )
   (local.set $140
    (f32.add
     (local.get $138)
     (local.get $139)
    )
   )
   (local.set $141
    (f32.mul
     (local.get $123)
     (local.get $140)
    )
   )
   (local.set $142
    (f32.const 0.17666645348072052)
   )
   (local.set $143
    (f32.add
     (local.get $141)
     (local.get $142)
    )
   )
   (local.set $144
    (f32.mul
     (local.get $122)
     (local.get $143)
    )
   )
   (local.set $145
    (f32.const -0.07380429655313492)
   )
   (local.set $146
    (f32.add
     (local.get $144)
     (local.get $145)
    )
   )
   (f32.store offset=16
    (local.get $3)
    (local.get $146)
   )
   (local.set $147
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $148
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $149
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $150
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $151
    (f32.const 4.4111031494153963e-10)
   )
   (local.set $152
    (f32.mul
     (local.get $150)
     (local.get $151)
    )
   )
   (local.set $153
    (f32.const 2.5915085188898956e-07)
   )
   (local.set $154
    (f32.add
     (local.get $152)
     (local.get $153)
    )
   )
   (local.set $155
    (f32.mul
     (local.get $149)
     (local.get $154)
    )
   )
   (local.set $156
    (f32.const 7.600686512887478e-05)
   )
   (local.set $157
    (f32.add
     (local.get $155)
     (local.get $156)
    )
   )
   (local.set $158
    (f32.mul
     (local.get $148)
     (local.get $157)
    )
   )
   (local.set $159
    (f32.const 0.012730483897030354)
   )
   (local.set $160
    (f32.add
     (local.get $158)
     (local.get $159)
    )
   )
   (local.set $161
    (f32.mul
     (local.get $147)
     (local.get $160)
    )
   )
   (local.set $162
    (f32.const 1)
   )
   (local.set $163
    (f32.add
     (local.get $161)
     (local.get $162)
    )
   )
   (f32.store offset=12
    (local.get $3)
    (local.get $163)
   )
   (local.set $164
    (f32.load offset=16
     (local.get $3)
    )
   )
   (local.set $165
    (f32.load offset=12
     (local.get $3)
    )
   )
   (local.set $166
    (f32.div
     (local.get $164)
     (local.get $165)
    )
   )
   (local.set $167
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $168
    (call $j0f
     (local.get $167)
    )
   )
   (local.set $169
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $170
    (call $logf
     (local.get $169)
    )
   )
   (local.set $171
    (f32.mul
     (local.get $168)
     (local.get $170)
    )
   )
   (local.set $172
    (f32.const 0.6366197466850281)
   )
   (local.set $173
    (f32.mul
     (local.get $171)
     (local.get $172)
    )
   )
   (local.set $174
    (f32.add
     (local.get $173)
     (local.get $166)
    )
   )
   (f32.store offset=44
    (local.get $3)
    (local.get $174)
   )
  )
  (local.set $175
   (f32.load offset=44
    (local.get $3)
   )
  )
  (local.set $176
   (i32.const 48)
  )
  (local.set $177
   (i32.add
    (local.get $3)
    (local.get $176)
   )
  )
  (global.set $__stack_pointer
   (local.get $177)
  )
  (return
   (local.get $175)
  )
 )
 (func $j1 (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 f64)
  (local $53 i32)
  (local $54 f64)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f64)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 f64)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 f64)
  (local $163 f64)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 i32)
  (local $172 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 112)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=96
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=96
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2146435072)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $17
     (f64.const 1)
    )
    (local.set $18
     (f64.div
      (local.get $17)
      (local.get $16)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $18)
    )
    (br $label$1)
   )
   (local.set $19
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $20
    (call $fabs
     (local.get $19)
    )
   )
   (f64.store offset=24
    (local.get $3)
    (local.get $20)
   )
   (local.set $21
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $22
    (i32.const 1073741824)
   )
   (local.set $23
    (local.get $21)
   )
   (local.set $24
    (local.get $22)
   )
   (local.set $25
    (i32.ge_s
     (local.get $23)
     (local.get $24)
    )
   )
   (local.set $26
    (i32.const 1)
   )
   (local.set $27
    (i32.and
     (local.get $25)
     (local.get $26)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $27)
     )
    )
    (local.set $28
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $29
     (call $sin
      (local.get $28)
     )
    )
    (f64.store offset=80
     (local.get $3)
     (local.get $29)
    )
    (local.set $30
     (f64.load offset=24
      (local.get $3)
     )
    )
    (local.set $31
     (call $cos
      (local.get $30)
     )
    )
    (f64.store offset=72
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $33
     (f64.neg
      (local.get $32)
     )
    )
    (local.set $34
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $35
     (f64.sub
      (local.get $33)
      (local.get $34)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $35)
    )
    (local.set $36
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $37
     (f64.load offset=72
      (local.get $3)
     )
    )
    (local.set $38
     (f64.sub
      (local.get $36)
      (local.get $37)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $38)
    )
    (local.set $39
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $40
     (i32.const 2145386496)
    )
    (local.set $41
     (local.get $39)
    )
    (local.set $42
     (local.get $40)
    )
    (local.set $43
     (i32.lt_s
      (local.get $41)
      (local.get $42)
     )
    )
    (local.set $44
     (i32.const 1)
    )
    (local.set $45
     (i32.and
      (local.get $43)
      (local.get $44)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $45)
      )
     )
     (local.set $46
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $47
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $48
      (f64.add
       (local.get $46)
       (local.get $47)
      )
     )
     (local.set $49
      (call $cos
       (local.get $48)
      )
     )
     (f64.store offset=88
      (local.get $3)
      (local.get $49)
     )
     (local.set $50
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $51
      (f64.load offset=72
       (local.get $3)
      )
     )
     (local.set $52
      (f64.mul
       (local.get $50)
       (local.get $51)
      )
     )
     (local.set $53
      (i32.const 0)
     )
     (local.set $54
      (f64.convert_i32_s
       (local.get $53)
      )
     )
     (local.set $55
      (f64.gt
       (local.get $52)
       (local.get $54)
      )
     )
     (local.set $56
      (i32.const 1)
     )
     (local.set $57
      (i32.and
       (local.get $55)
       (local.get $56)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (local.get $57)
        )
       )
       (local.set $58
        (f64.load offset=88
         (local.get $3)
        )
       )
       (local.set $59
        (f64.load offset=64
         (local.get $3)
        )
       )
       (local.set $60
        (f64.div
         (local.get $58)
         (local.get $59)
        )
       )
       (f64.store offset=56
        (local.get $3)
        (local.get $60)
       )
       (br $label$5)
      )
      (local.set $61
       (f64.load offset=88
        (local.get $3)
       )
      )
      (local.set $62
       (f64.load offset=56
        (local.get $3)
       )
      )
      (local.set $63
       (f64.div
        (local.get $61)
        (local.get $62)
       )
      )
      (f64.store offset=64
       (local.get $3)
       (local.get $63)
      )
     )
    )
    (local.set $64
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $65
     (i32.const 1207959552)
    )
    (local.set $66
     (local.get $64)
    )
    (local.set $67
     (local.get $65)
    )
    (local.set $68
     (i32.gt_s
      (local.get $66)
      (local.get $67)
     )
    )
    (local.set $69
     (i32.const 1)
    )
    (local.set $70
     (i32.and
      (local.get $68)
      (local.get $69)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $70)
       )
      )
      (local.set $71
       (f64.load offset=56
        (local.get $3)
       )
      )
      (local.set $72
       (f64.const 0.5641895835477563)
      )
      (local.set $73
       (f64.mul
        (local.get $72)
        (local.get $71)
       )
      )
      (local.set $74
       (f64.load offset=24
        (local.get $3)
       )
      )
      (local.set $75
       (call $sqrt
        (local.get $74)
       )
      )
      (local.set $76
       (f64.div
        (local.get $73)
        (local.get $75)
       )
      )
      (f64.store offset=88
       (local.get $3)
       (local.get $76)
      )
      (br $label$7)
     )
     (local.set $77
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $78
      (call $pone
       (local.get $77)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $78)
     )
     (local.set $79
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $80
      (call $qone
       (local.get $79)
      )
     )
     (f64.store offset=32
      (local.get $3)
      (local.get $80)
     )
     (local.set $81
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $82
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $83
      (f64.load offset=32
       (local.get $3)
      )
     )
     (local.set $84
      (f64.load offset=64
       (local.get $3)
      )
     )
     (local.set $85
      (f64.mul
       (local.get $83)
       (local.get $84)
      )
     )
     (local.set $86
      (f64.neg
       (local.get $85)
      )
     )
     (local.set $87
      (f64.mul
       (local.get $81)
       (local.get $82)
      )
     )
     (local.set $88
      (f64.add
       (local.get $87)
       (local.get $86)
      )
     )
     (local.set $89
      (f64.const 0.5641895835477563)
     )
     (local.set $90
      (f64.mul
       (local.get $89)
       (local.get $88)
      )
     )
     (local.set $91
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $92
      (call $sqrt
       (local.get $91)
      )
     )
     (local.set $93
      (f64.div
       (local.get $90)
       (local.get $92)
      )
     )
     (f64.store offset=88
      (local.get $3)
      (local.get $93)
     )
    )
    (local.set $94
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $95
     (i32.const 0)
    )
    (local.set $96
     (local.get $94)
    )
    (local.set $97
     (local.get $95)
    )
    (local.set $98
     (i32.lt_s
      (local.get $96)
      (local.get $97)
     )
    )
    (local.set $99
     (i32.const 1)
    )
    (local.set $100
     (i32.and
      (local.get $98)
      (local.get $99)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (local.get $100)
      )
     )
     (local.set $101
      (f64.load offset=88
       (local.get $3)
      )
     )
     (local.set $102
      (f64.neg
       (local.get $101)
      )
     )
     (f64.store offset=104
      (local.get $3)
      (local.get $102)
     )
     (br $label$1)
    )
    (local.set $103
     (f64.load offset=88
      (local.get $3)
     )
    )
    (f64.store offset=104
     (local.get $3)
     (local.get $103)
    )
    (br $label$1)
   )
   (local.set $104
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $105
    (i32.const 1044381696)
   )
   (local.set $106
    (local.get $104)
   )
   (local.set $107
    (local.get $105)
   )
   (local.set $108
    (i32.lt_s
     (local.get $106)
     (local.get $107)
    )
   )
   (local.set $109
    (i32.const 1)
   )
   (local.set $110
    (i32.and
     (local.get $108)
     (local.get $109)
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (local.get $110)
     )
    )
    (local.set $111
     (f64.load offset=96
      (local.get $3)
     )
    )
    (local.set $112
     (f64.const 1.e+300)
    )
    (local.set $113
     (f64.add
      (local.get $112)
      (local.get $111)
     )
    )
    (local.set $114
     (f64.const 1)
    )
    (local.set $115
     (f64.gt
      (local.get $113)
      (local.get $114)
     )
    )
    (local.set $116
     (i32.const 1)
    )
    (local.set $117
     (i32.and
      (local.get $115)
      (local.get $116)
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (local.get $117)
      )
     )
     (local.set $118
      (f64.load offset=96
       (local.get $3)
      )
     )
     (local.set $119
      (f64.const 0.5)
     )
     (local.set $120
      (f64.mul
       (local.get $119)
       (local.get $118)
      )
     )
     (f64.store offset=104
      (local.get $3)
      (local.get $120)
     )
     (br $label$1)
    )
   )
   (local.set $121
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $122
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $123
    (f64.mul
     (local.get $121)
     (local.get $122)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $123)
   )
   (local.set $124
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $125
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $126
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $127
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $128
    (f64.const 4.9672799960958445e-08)
   )
   (local.set $129
    (f64.mul
     (local.get $127)
     (local.get $128)
    )
   )
   (local.set $130
    (f64.const -1.599556310840356e-05)
   )
   (local.set $131
    (f64.add
     (local.get $129)
     (local.get $130)
    )
   )
   (local.set $132
    (f64.mul
     (local.get $126)
     (local.get $131)
    )
   )
   (local.set $133
    (f64.const 0.001407056669551897)
   )
   (local.set $134
    (f64.add
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f64.mul
     (local.get $125)
     (local.get $134)
    )
   )
   (local.set $136
    (f64.const -0.0625)
   )
   (local.set $137
    (f64.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f64.mul
     (local.get $124)
     (local.get $137)
    )
   )
   (f64.store offset=48
    (local.get $3)
    (local.get $138)
   )
   (local.set $139
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $140
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $141
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $142
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $143
    (f64.load offset=88
     (local.get $3)
    )
   )
   (local.set $144
    (f64.const 1.2354227442613791e-11)
   )
   (local.set $145
    (f64.mul
     (local.get $143)
     (local.get $144)
    )
   )
   (local.set $146
    (f64.const 5.0463625707621704e-09)
   )
   (local.set $147
    (f64.add
     (local.get $145)
     (local.get $146)
    )
   )
   (local.set $148
    (f64.mul
     (local.get $142)
     (local.get $147)
    )
   )
   (local.set $149
    (f64.const 1.1771846404262368e-06)
   )
   (local.set $150
    (f64.add
     (local.get $148)
     (local.get $149)
    )
   )
   (local.set $151
    (f64.mul
     (local.get $141)
     (local.get $150)
    )
   )
   (local.set $152
    (f64.const 1.8594678558863092e-04)
   )
   (local.set $153
    (f64.add
     (local.get $151)
     (local.get $152)
    )
   )
   (local.set $154
    (f64.mul
     (local.get $140)
     (local.get $153)
    )
   )
   (local.set $155
    (f64.const 0.019153759953836346)
   )
   (local.set $156
    (f64.add
     (local.get $154)
     (local.get $155)
    )
   )
   (local.set $157
    (f64.mul
     (local.get $139)
     (local.get $156)
    )
   )
   (local.set $158
    (f64.const 1)
   )
   (local.set $159
    (f64.add
     (local.get $157)
     (local.get $158)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $159)
   )
   (local.set $160
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $161
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $162
    (f64.mul
     (local.get $161)
     (local.get $160)
    )
   )
   (f64.store offset=48
    (local.get $3)
    (local.get $162)
   )
   (local.set $163
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $164
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $165
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $166
    (f64.div
     (local.get $164)
     (local.get $165)
    )
   )
   (local.set $167
    (f64.const 0.5)
   )
   (local.set $168
    (f64.mul
     (local.get $163)
     (local.get $167)
    )
   )
   (local.set $169
    (f64.add
     (local.get $168)
     (local.get $166)
    )
   )
   (f64.store offset=104
    (local.get $3)
    (local.get $169)
   )
  )
  (local.set $170
   (f64.load offset=104
    (local.get $3)
   )
  )
  (local.set $171
   (i32.const 112)
  )
  (local.set $172
   (i32.add
    (local.get $3)
    (local.get $171)
   )
  )
  (global.set $__stack_pointer
   (local.get $172)
  )
  (return
   (local.get $170)
  )
 )
 (func $pone (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 f64)
  (local $45 f64)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 i32)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 f64)
  (local $54 f64)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 i32)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 i32)
  (local $72 f64)
  (local $73 f64)
  (local $74 i32)
  (local $75 f64)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 f64)
  (local $82 f64)
  (local $83 i32)
  (local $84 f64)
  (local $85 f64)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f64.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=56
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1075838976)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 2512)
    )
    (i32.store offset=52
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 2560)
    )
    (i32.store offset=48
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1074933387)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 2608)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 2656)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1074191213)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 2704)
      )
      (i32.store offset=52
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 2752)
      )
      (i32.store offset=48
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 2800)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 2848)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $39
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $40
   (f64.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f64.const 1)
  )
  (local.set $42
   (f64.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f64.store offset=40
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $44
   (f64.load
    (local.get $43)
   )
  )
  (local.set $45
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $47
   (f64.load offset=8
    (local.get $46)
   )
  )
  (local.set $48
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $50
   (f64.load offset=16
    (local.get $49)
   )
  )
  (local.set $51
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $53
   (f64.load offset=24
    (local.get $52)
   )
  )
  (local.set $54
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $56
   (f64.load offset=32
    (local.get $55)
   )
  )
  (local.set $57
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $59
   (f64.load offset=40
    (local.get $58)
   )
  )
  (local.set $60
   (f64.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f64.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f64.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f64.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f64.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f64.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f64.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f64.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f64.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f64.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $72
   (f64.load
    (local.get $71)
   )
  )
  (local.set $73
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $75
   (f64.load offset=8
    (local.get $74)
   )
  )
  (local.set $76
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $78
   (f64.load offset=16
    (local.get $77)
   )
  )
  (local.set $79
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $81
   (f64.load offset=24
    (local.get $80)
   )
  )
  (local.set $82
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $84
   (f64.load offset=32
    (local.get $83)
   )
  )
  (local.set $85
   (f64.mul
    (local.get $82)
    (local.get $84)
   )
  )
  (local.set $86
   (f64.add
    (local.get $85)
    (local.get $81)
   )
  )
  (local.set $87
   (f64.mul
    (local.get $79)
    (local.get $86)
   )
  )
  (local.set $88
   (f64.add
    (local.get $87)
    (local.get $78)
   )
  )
  (local.set $89
   (f64.mul
    (local.get $76)
    (local.get $88)
   )
  )
  (local.set $90
   (f64.add
    (local.get $89)
    (local.get $75)
   )
  )
  (local.set $91
   (f64.mul
    (local.get $73)
    (local.get $90)
   )
  )
  (local.set $92
   (f64.add
    (local.get $91)
    (local.get $72)
   )
  )
  (local.set $93
   (f64.mul
    (local.get $70)
    (local.get $92)
   )
  )
  (local.set $94
   (f64.const 1)
  )
  (local.set $95
   (f64.add
    (local.get $93)
    (local.get $94)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $95)
  )
  (local.set $96
   (f64.load offset=32
    (local.get $3)
   )
  )
  (local.set $97
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $98
   (f64.div
    (local.get $96)
    (local.get $97)
   )
  )
  (local.set $99
   (f64.const 1)
  )
  (local.set $100
   (f64.add
    (local.get $99)
    (local.get $98)
   )
  )
  (return
   (local.get $100)
  )
 )
 (func $qone (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 i32)
  (local $44 f64)
  (local $45 f64)
  (local $46 i32)
  (local $47 f64)
  (local $48 f64)
  (local $49 i32)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 f64)
  (local $54 f64)
  (local $55 i32)
  (local $56 f64)
  (local $57 f64)
  (local $58 i32)
  (local $59 f64)
  (local $60 f64)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 i32)
  (local $72 f64)
  (local $73 f64)
  (local $74 i32)
  (local $75 f64)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 f64)
  (local $82 f64)
  (local $83 i32)
  (local $84 f64)
  (local $85 f64)
  (local $86 i32)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f64.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=56
    (local.get $3)
   )
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=12
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1075838976)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 2896)
    )
    (i32.store offset=52
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 2944)
    )
    (i32.store offset=48
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1074933387)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 2992)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 3040)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=20
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1074191213)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 3088)
      )
      (i32.store offset=52
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 3136)
      )
      (i32.store offset=48
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 3184)
     )
     (i32.store offset=52
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 3232)
     )
     (i32.store offset=48
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $39
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $40
   (f64.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f64.const 1)
  )
  (local.set $42
   (f64.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $44
   (f64.load
    (local.get $43)
   )
  )
  (local.set $45
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $47
   (f64.load offset=8
    (local.get $46)
   )
  )
  (local.set $48
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $50
   (f64.load offset=16
    (local.get $49)
   )
  )
  (local.set $51
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $53
   (f64.load offset=24
    (local.get $52)
   )
  )
  (local.set $54
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $56
   (f64.load offset=32
    (local.get $55)
   )
  )
  (local.set $57
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=52
    (local.get $3)
   )
  )
  (local.set $59
   (f64.load offset=40
    (local.get $58)
   )
  )
  (local.set $60
   (f64.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f64.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f64.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f64.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f64.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f64.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f64.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f64.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f64.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f64.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f64.store offset=32
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $72
   (f64.load
    (local.get $71)
   )
  )
  (local.set $73
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $75
   (f64.load offset=8
    (local.get $74)
   )
  )
  (local.set $76
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $78
   (f64.load offset=16
    (local.get $77)
   )
  )
  (local.set $79
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $81
   (f64.load offset=24
    (local.get $80)
   )
  )
  (local.set $82
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $84
   (f64.load offset=32
    (local.get $83)
   )
  )
  (local.set $85
   (f64.load offset=24
    (local.get $3)
   )
  )
  (local.set $86
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $87
   (f64.load offset=40
    (local.get $86)
   )
  )
  (local.set $88
   (f64.mul
    (local.get $85)
    (local.get $87)
   )
  )
  (local.set $89
   (f64.add
    (local.get $88)
    (local.get $84)
   )
  )
  (local.set $90
   (f64.mul
    (local.get $82)
    (local.get $89)
   )
  )
  (local.set $91
   (f64.add
    (local.get $90)
    (local.get $81)
   )
  )
  (local.set $92
   (f64.mul
    (local.get $79)
    (local.get $91)
   )
  )
  (local.set $93
   (f64.add
    (local.get $92)
    (local.get $78)
   )
  )
  (local.set $94
   (f64.mul
    (local.get $76)
    (local.get $93)
   )
  )
  (local.set $95
   (f64.add
    (local.get $94)
    (local.get $75)
   )
  )
  (local.set $96
   (f64.mul
    (local.get $73)
    (local.get $95)
   )
  )
  (local.set $97
   (f64.add
    (local.get $96)
    (local.get $72)
   )
  )
  (local.set $98
   (f64.mul
    (local.get $70)
    (local.get $97)
   )
  )
  (local.set $99
   (f64.const 1)
  )
  (local.set $100
   (f64.add
    (local.get $98)
    (local.get $99)
   )
  )
  (f64.store offset=40
   (local.get $3)
   (local.get $100)
  )
  (local.set $101
   (f64.load offset=32
    (local.get $3)
   )
  )
  (local.set $102
   (f64.load offset=40
    (local.get $3)
   )
  )
  (local.set $103
   (f64.div
    (local.get $101)
    (local.get $102)
   )
  )
  (local.set $104
   (f64.const 0.375)
  )
  (local.set $105
   (f64.add
    (local.get $104)
    (local.get $103)
   )
  )
  (local.set $106
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $107
   (f64.div
    (local.get $105)
    (local.get $106)
   )
  )
  (return
   (local.get $107)
  )
 )
 (func $y1 (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 f64)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 f64)
  (local $44 f64)
  (local $45 f64)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 f64)
  (local $53 f64)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 f64)
  (local $62 f64)
  (local $63 f64)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 i32)
  (local $69 f64)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 f64)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 i32)
  (local $123 f64)
  (local $124 f64)
  (local $125 i32)
  (local $126 f64)
  (local $127 f64)
  (local $128 i32)
  (local $129 f64)
  (local $130 f64)
  (local $131 i32)
  (local $132 f64)
  (local $133 f64)
  (local $134 i32)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 i32)
  (local $146 f64)
  (local $147 f64)
  (local $148 i32)
  (local $149 f64)
  (local $150 f64)
  (local $151 i32)
  (local $152 f64)
  (local $153 f64)
  (local $154 i32)
  (local $155 f64)
  (local $156 f64)
  (local $157 i32)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 f64)
  (local $163 f64)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 i32)
  (local $190 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 96)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=80
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=80
    (local.get $3)
   )
  )
  (f64.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=4
    (local.get $3)
   )
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $11
   (i32.const 2146435072)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (local.get $11)
  )
  (local.set $14
   (i32.ge_s
    (local.get $12)
    (local.get $13)
   )
  )
  (local.set $15
   (i32.const 1)
  )
  (local.set $16
   (i32.and
    (local.get $14)
    (local.get $15)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $16)
     )
    )
    (local.set $17
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $18
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $19
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $20
     (f64.mul
      (local.get $18)
      (local.get $19)
     )
    )
    (local.set $21
     (f64.add
      (local.get $20)
      (local.get $17)
     )
    )
    (local.set $22
     (f64.const 1)
    )
    (local.set $23
     (f64.div
      (local.get $22)
      (local.get $21)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $23)
    )
    (br $label$1)
   )
   (local.set $24
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $25
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $26
    (i32.or
     (local.get $24)
     (local.get $25)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $26)
    )
    (local.set $27
     (f64.const -inf)
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $27)
    )
    (br $label$1)
   )
   (local.set $28
    (i32.load offset=20
     (local.get $3)
    )
   )
   (local.set $29
    (i32.const 0)
   )
   (local.set $30
    (local.get $28)
   )
   (local.set $31
    (local.get $29)
   )
   (local.set $32
    (i32.lt_s
     (local.get $30)
     (local.get $31)
    )
   )
   (local.set $33
    (i32.const 1)
   )
   (local.set $34
    (i32.and
     (local.get $32)
     (local.get $33)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $34)
     )
    )
    (local.set $35
     (f64.const nan:0x8000000000000)
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $35)
    )
    (br $label$1)
   )
   (local.set $36
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $37
    (i32.const 1073741824)
   )
   (local.set $38
    (local.get $36)
   )
   (local.set $39
    (local.get $37)
   )
   (local.set $40
    (i32.ge_s
     (local.get $38)
     (local.get $39)
    )
   )
   (local.set $41
    (i32.const 1)
   )
   (local.set $42
    (i32.and
     (local.get $40)
     (local.get $41)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $42)
     )
    )
    (local.set $43
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $44
     (call $sin
      (local.get $43)
     )
    )
    (f64.store offset=64
     (local.get $3)
     (local.get $44)
    )
    (local.set $45
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $46
     (call $cos
      (local.get $45)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $46)
    )
    (local.set $47
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $48
     (f64.neg
      (local.get $47)
     )
    )
    (local.set $49
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $50
     (f64.sub
      (local.get $48)
      (local.get $49)
     )
    )
    (f64.store offset=48
     (local.get $3)
     (local.get $50)
    )
    (local.set $51
     (f64.load offset=64
      (local.get $3)
     )
    )
    (local.set $52
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $53
     (f64.sub
      (local.get $51)
      (local.get $52)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $53)
    )
    (local.set $54
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $55
     (i32.const 2145386496)
    )
    (local.set $56
     (local.get $54)
    )
    (local.set $57
     (local.get $55)
    )
    (local.set $58
     (i32.lt_s
      (local.get $56)
      (local.get $57)
     )
    )
    (local.set $59
     (i32.const 1)
    )
    (local.set $60
     (i32.and
      (local.get $58)
      (local.get $59)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $60)
      )
     )
     (local.set $61
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $62
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $63
      (f64.add
       (local.get $61)
       (local.get $62)
      )
     )
     (local.set $64
      (call $cos
       (local.get $63)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $64)
     )
     (local.set $65
      (f64.load offset=64
       (local.get $3)
      )
     )
     (local.set $66
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $67
      (f64.mul
       (local.get $65)
       (local.get $66)
      )
     )
     (local.set $68
      (i32.const 0)
     )
     (local.set $69
      (f64.convert_i32_s
       (local.get $68)
      )
     )
     (local.set $70
      (f64.gt
       (local.get $67)
       (local.get $69)
      )
     )
     (local.set $71
      (i32.const 1)
     )
     (local.set $72
      (i32.and
       (local.get $70)
       (local.get $71)
      )
     )
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (local.get $72)
        )
       )
       (local.set $73
        (f64.load offset=72
         (local.get $3)
        )
       )
       (local.set $74
        (f64.load offset=48
         (local.get $3)
        )
       )
       (local.set $75
        (f64.div
         (local.get $73)
         (local.get $74)
        )
       )
       (f64.store offset=40
        (local.get $3)
        (local.get $75)
       )
       (br $label$7)
      )
      (local.set $76
       (f64.load offset=72
        (local.get $3)
       )
      )
      (local.set $77
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $78
       (f64.div
        (local.get $76)
        (local.get $77)
       )
      )
      (f64.store offset=48
       (local.get $3)
       (local.get $78)
      )
     )
    )
    (local.set $79
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $80
     (i32.const 1207959552)
    )
    (local.set $81
     (local.get $79)
    )
    (local.set $82
     (local.get $80)
    )
    (local.set $83
     (i32.gt_s
      (local.get $81)
      (local.get $82)
     )
    )
    (local.set $84
     (i32.const 1)
    )
    (local.set $85
     (i32.and
      (local.get $83)
      (local.get $84)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $85)
       )
      )
      (local.set $86
       (f64.load offset=48
        (local.get $3)
       )
      )
      (local.set $87
       (f64.const 0.5641895835477563)
      )
      (local.set $88
       (f64.mul
        (local.get $87)
        (local.get $86)
       )
      )
      (local.set $89
       (f64.load offset=80
        (local.get $3)
       )
      )
      (local.set $90
       (call $sqrt
        (local.get $89)
       )
      )
      (local.set $91
       (f64.div
        (local.get $88)
        (local.get $90)
       )
      )
      (f64.store offset=72
       (local.get $3)
       (local.get $91)
      )
      (br $label$9)
     )
     (local.set $92
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $93
      (call $pone
       (local.get $92)
      )
     )
     (f64.store offset=32
      (local.get $3)
      (local.get $93)
     )
     (local.set $94
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $95
      (call $qone
       (local.get $94)
      )
     )
     (f64.store offset=24
      (local.get $3)
      (local.get $95)
     )
     (local.set $96
      (f64.load offset=32
       (local.get $3)
      )
     )
     (local.set $97
      (f64.load offset=48
       (local.get $3)
      )
     )
     (local.set $98
      (f64.load offset=24
       (local.get $3)
      )
     )
     (local.set $99
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $100
      (f64.mul
       (local.get $98)
       (local.get $99)
      )
     )
     (local.set $101
      (f64.mul
       (local.get $96)
       (local.get $97)
      )
     )
     (local.set $102
      (f64.add
       (local.get $101)
       (local.get $100)
      )
     )
     (local.set $103
      (f64.const 0.5641895835477563)
     )
     (local.set $104
      (f64.mul
       (local.get $103)
       (local.get $102)
      )
     )
     (local.set $105
      (f64.load offset=80
       (local.get $3)
      )
     )
     (local.set $106
      (call $sqrt
       (local.get $105)
      )
     )
     (local.set $107
      (f64.div
       (local.get $104)
       (local.get $106)
      )
     )
     (f64.store offset=72
      (local.get $3)
      (local.get $107)
     )
    )
    (local.set $108
     (f64.load offset=72
      (local.get $3)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $108)
    )
    (br $label$1)
   )
   (local.set $109
    (i32.load offset=16
     (local.get $3)
    )
   )
   (local.set $110
    (i32.const 1016070144)
   )
   (local.set $111
    (local.get $109)
   )
   (local.set $112
    (local.get $110)
   )
   (local.set $113
    (i32.le_s
     (local.get $111)
     (local.get $112)
    )
   )
   (local.set $114
    (i32.const 1)
   )
   (local.set $115
    (i32.and
     (local.get $113)
     (local.get $114)
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (local.get $115)
     )
    )
    (local.set $116
     (f64.load offset=80
      (local.get $3)
     )
    )
    (local.set $117
     (f64.const -0.6366197723675814)
    )
    (local.set $118
     (f64.div
      (local.get $117)
      (local.get $116)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $118)
    )
    (br $label$1)
   )
   (local.set $119
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $120
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $121
    (f64.mul
     (local.get $119)
     (local.get $120)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $121)
   )
   (local.set $122
    (i32.const 0)
   )
   (local.set $123
    (f64.load offset=2416
     (local.get $122)
    )
   )
   (local.set $124
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $125
    (i32.const 0)
   )
   (local.set $126
    (f64.load offset=2424
     (local.get $125)
    )
   )
   (local.set $127
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $128
    (i32.const 0)
   )
   (local.set $129
    (f64.load offset=2432
     (local.get $128)
    )
   )
   (local.set $130
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $131
    (i32.const 0)
   )
   (local.set $132
    (f64.load offset=2440
     (local.get $131)
    )
   )
   (local.set $133
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $134
    (i32.const 0)
   )
   (local.set $135
    (f64.load offset=2448
     (local.get $134)
    )
   )
   (local.set $136
    (f64.mul
     (local.get $133)
     (local.get $135)
    )
   )
   (local.set $137
    (f64.add
     (local.get $136)
     (local.get $132)
    )
   )
   (local.set $138
    (f64.mul
     (local.get $130)
     (local.get $137)
    )
   )
   (local.set $139
    (f64.add
     (local.get $138)
     (local.get $129)
    )
   )
   (local.set $140
    (f64.mul
     (local.get $127)
     (local.get $139)
    )
   )
   (local.set $141
    (f64.add
     (local.get $140)
     (local.get $126)
    )
   )
   (local.set $142
    (f64.mul
     (local.get $124)
     (local.get $141)
    )
   )
   (local.set $143
    (f64.add
     (local.get $142)
     (local.get $123)
    )
   )
   (f64.store offset=32
    (local.get $3)
    (local.get $143)
   )
   (local.set $144
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $145
    (i32.const 0)
   )
   (local.set $146
    (f64.load offset=2464
     (local.get $145)
    )
   )
   (local.set $147
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $148
    (i32.const 0)
   )
   (local.set $149
    (f64.load offset=2472
     (local.get $148)
    )
   )
   (local.set $150
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $151
    (i32.const 0)
   )
   (local.set $152
    (f64.load offset=2480
     (local.get $151)
    )
   )
   (local.set $153
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $154
    (i32.const 0)
   )
   (local.set $155
    (f64.load offset=2488
     (local.get $154)
    )
   )
   (local.set $156
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $157
    (i32.const 0)
   )
   (local.set $158
    (f64.load offset=2496
     (local.get $157)
    )
   )
   (local.set $159
    (f64.mul
     (local.get $156)
     (local.get $158)
    )
   )
   (local.set $160
    (f64.add
     (local.get $159)
     (local.get $155)
    )
   )
   (local.set $161
    (f64.mul
     (local.get $153)
     (local.get $160)
    )
   )
   (local.set $162
    (f64.add
     (local.get $161)
     (local.get $152)
    )
   )
   (local.set $163
    (f64.mul
     (local.get $150)
     (local.get $162)
    )
   )
   (local.set $164
    (f64.add
     (local.get $163)
     (local.get $149)
    )
   )
   (local.set $165
    (f64.mul
     (local.get $147)
     (local.get $164)
    )
   )
   (local.set $166
    (f64.add
     (local.get $165)
     (local.get $146)
    )
   )
   (local.set $167
    (f64.mul
     (local.get $144)
     (local.get $166)
    )
   )
   (local.set $168
    (f64.const 1)
   )
   (local.set $169
    (f64.add
     (local.get $167)
     (local.get $168)
    )
   )
   (f64.store offset=24
    (local.get $3)
    (local.get $169)
   )
   (local.set $170
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $171
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $172
    (f64.load offset=24
     (local.get $3)
    )
   )
   (local.set $173
    (f64.div
     (local.get $171)
     (local.get $172)
    )
   )
   (local.set $174
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $175
    (call $j1
     (local.get $174)
    )
   )
   (local.set $176
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $177
    (call $log
     (local.get $176)
    )
   )
   (local.set $178
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $179
    (f64.const 1)
   )
   (local.set $180
    (f64.div
     (local.get $179)
     (local.get $178)
    )
   )
   (local.set $181
    (f64.neg
     (local.get $180)
    )
   )
   (local.set $182
    (f64.mul
     (local.get $175)
     (local.get $177)
    )
   )
   (local.set $183
    (f64.add
     (local.get $182)
     (local.get $181)
    )
   )
   (local.set $184
    (f64.const 0.6366197723675814)
   )
   (local.set $185
    (f64.mul
     (local.get $184)
     (local.get $183)
    )
   )
   (local.set $186
    (f64.mul
     (local.get $170)
     (local.get $173)
    )
   )
   (local.set $187
    (f64.add
     (local.get $186)
     (local.get $185)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $187)
   )
  )
  (local.set $188
   (f64.load offset=88
    (local.get $3)
   )
  )
  (local.set $189
   (i32.const 96)
  )
  (local.set $190
   (i32.add
    (local.get $3)
    (local.get $189)
   )
  )
  (global.set $__stack_pointer
   (local.get $190)
  )
  (return
   (local.get $188)
  )
 )
 (func $j1f (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 f32)
  (local $47 f32)
  (local $48 f32)
  (local $49 f32)
  (local $50 f32)
  (local $51 f32)
  (local $52 f32)
  (local $53 i32)
  (local $54 f32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 f32)
  (local $80 f32)
  (local $81 f32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 f32)
  (local $112 f32)
  (local $113 f32)
  (local $114 f32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 f32)
  (local $126 f32)
  (local $127 f32)
  (local $128 f32)
  (local $129 f32)
  (local $130 f32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 f32)
  (local $137 f32)
  (local $138 f32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 f32)
  (local $143 f32)
  (local $144 f32)
  (local $145 f32)
  (local $146 f32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 f32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 f32)
  (local $162 f32)
  (local $163 f32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 i32)
  (local $172 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=56
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=56
    (local.get $3)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=8
    (local.get $3)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2139095040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $17
     (f32.const 1)
    )
    (local.set $18
     (f32.div
      (local.get $17)
      (local.get $16)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $18)
    )
    (br $label$1)
   )
   (local.set $19
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $20
    (call $fabsf
     (local.get $19)
    )
   )
   (f32.store offset=20
    (local.get $3)
    (local.get $20)
   )
   (local.set $21
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $22
    (i32.const 1073741824)
   )
   (local.set $23
    (local.get $21)
   )
   (local.set $24
    (local.get $22)
   )
   (local.set $25
    (i32.ge_s
     (local.get $23)
     (local.get $24)
    )
   )
   (local.set $26
    (i32.const 1)
   )
   (local.set $27
    (i32.and
     (local.get $25)
     (local.get $26)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $27)
     )
    )
    (local.set $28
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $29
     (call $sinf
      (local.get $28)
     )
    )
    (f32.store offset=48
     (local.get $3)
     (local.get $29)
    )
    (local.set $30
     (f32.load offset=20
      (local.get $3)
     )
    )
    (local.set $31
     (call $cosf
      (local.get $30)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $31)
    )
    (local.set $32
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $33
     (f32.neg
      (local.get $32)
     )
    )
    (local.set $34
     (f32.load offset=44
      (local.get $3)
     )
    )
    (local.set $35
     (f32.sub
      (local.get $33)
      (local.get $34)
     )
    )
    (f32.store offset=40
     (local.get $3)
     (local.get $35)
    )
    (local.set $36
     (f32.load offset=48
      (local.get $3)
     )
    )
    (local.set $37
     (f32.load offset=44
      (local.get $3)
     )
    )
    (local.set $38
     (f32.sub
      (local.get $36)
      (local.get $37)
     )
    )
    (f32.store offset=36
     (local.get $3)
     (local.get $38)
    )
    (local.set $39
     (i32.load offset=12
      (local.get $3)
     )
    )
    (local.set $40
     (i32.const 2130706432)
    )
    (local.set $41
     (local.get $39)
    )
    (local.set $42
     (local.get $40)
    )
    (local.set $43
     (i32.lt_s
      (local.get $41)
      (local.get $42)
     )
    )
    (local.set $44
     (i32.const 1)
    )
    (local.set $45
     (i32.and
      (local.get $43)
      (local.get $44)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $45)
      )
     )
     (local.set $46
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $47
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $48
      (f32.add
       (local.get $46)
       (local.get $47)
      )
     )
     (local.set $49
      (call $cosf
       (local.get $48)
      )
     )
     (f32.store offset=52
      (local.get $3)
      (local.get $49)
     )
     (local.set $50
      (f32.load offset=48
       (local.get $3)
      )
     )
     (local.set $51
      (f32.load offset=44
       (local.get $3)
      )
     )
     (local.set $52
      (f32.mul
       (local.get $50)
       (local.get $51)
      )
     )
     (local.set $53
      (i32.const 0)
     )
     (local.set $54
      (f32.convert_i32_s
       (local.get $53)
      )
     )
     (local.set $55
      (f32.gt
       (local.get $52)
       (local.get $54)
      )
     )
     (local.set $56
      (i32.const 1)
     )
     (local.set $57
      (i32.and
       (local.get $55)
       (local.get $56)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (local.get $57)
        )
       )
       (local.set $58
        (f32.load offset=52
         (local.get $3)
        )
       )
       (local.set $59
        (f32.load offset=40
         (local.get $3)
        )
       )
       (local.set $60
        (f32.div
         (local.get $58)
         (local.get $59)
        )
       )
       (f32.store offset=36
        (local.get $3)
        (local.get $60)
       )
       (br $label$5)
      )
      (local.set $61
       (f32.load offset=52
        (local.get $3)
       )
      )
      (local.set $62
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $63
       (f32.div
        (local.get $61)
        (local.get $62)
       )
      )
      (f32.store offset=40
       (local.get $3)
       (local.get $63)
      )
     )
    )
    (local.set $64
     (i32.load offset=12
      (local.get $3)
     )
    )
    (local.set $65
     (i32.const 1476395008)
    )
    (local.set $66
     (local.get $64)
    )
    (local.set $67
     (local.get $65)
    )
    (local.set $68
     (i32.gt_s
      (local.get $66)
      (local.get $67)
     )
    )
    (local.set $69
     (i32.const 1)
    )
    (local.set $70
     (i32.and
      (local.get $68)
      (local.get $69)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $70)
       )
      )
      (local.set $71
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $72
       (f32.const 0.564189612865448)
      )
      (local.set $73
       (f32.mul
        (local.get $72)
        (local.get $71)
       )
      )
      (local.set $74
       (f32.load offset=20
        (local.get $3)
       )
      )
      (local.set $75
       (call $sqrtf
        (local.get $74)
       )
      )
      (local.set $76
       (f32.div
        (local.get $73)
        (local.get $75)
       )
      )
      (f32.store offset=52
       (local.get $3)
       (local.get $76)
      )
      (br $label$7)
     )
     (local.set $77
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $78
      (call $ponef
       (local.get $77)
      )
     )
     (f32.store offset=28
      (local.get $3)
      (local.get $78)
     )
     (local.set $79
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $80
      (call $qonef
       (local.get $79)
      )
     )
     (f32.store offset=24
      (local.get $3)
      (local.get $80)
     )
     (local.set $81
      (f32.load offset=28
       (local.get $3)
      )
     )
     (local.set $82
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $83
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $84
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $85
      (f32.mul
       (local.get $83)
       (local.get $84)
      )
     )
     (local.set $86
      (f32.neg
       (local.get $85)
      )
     )
     (local.set $87
      (f32.mul
       (local.get $81)
       (local.get $82)
      )
     )
     (local.set $88
      (f32.add
       (local.get $87)
       (local.get $86)
      )
     )
     (local.set $89
      (f32.const 0.564189612865448)
     )
     (local.set $90
      (f32.mul
       (local.get $89)
       (local.get $88)
      )
     )
     (local.set $91
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $92
      (call $sqrtf
       (local.get $91)
      )
     )
     (local.set $93
      (f32.div
       (local.get $90)
       (local.get $92)
      )
     )
     (f32.store offset=52
      (local.get $3)
      (local.get $93)
     )
    )
    (local.set $94
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $95
     (i32.const 0)
    )
    (local.set $96
     (local.get $94)
    )
    (local.set $97
     (local.get $95)
    )
    (local.set $98
     (i32.lt_s
      (local.get $96)
      (local.get $97)
     )
    )
    (local.set $99
     (i32.const 1)
    )
    (local.set $100
     (i32.and
      (local.get $98)
      (local.get $99)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (local.get $100)
      )
     )
     (local.set $101
      (f32.load offset=52
       (local.get $3)
      )
     )
     (local.set $102
      (f32.neg
       (local.get $101)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $102)
     )
     (br $label$1)
    )
    (local.set $103
     (f32.load offset=52
      (local.get $3)
     )
    )
    (f32.store offset=60
     (local.get $3)
     (local.get $103)
    )
    (br $label$1)
   )
   (local.set $104
    (i32.load offset=12
     (local.get $3)
    )
   )
   (local.set $105
    (i32.const 956301312)
   )
   (local.set $106
    (local.get $104)
   )
   (local.set $107
    (local.get $105)
   )
   (local.set $108
    (i32.lt_s
     (local.get $106)
     (local.get $107)
    )
   )
   (local.set $109
    (i32.const 1)
   )
   (local.set $110
    (i32.and
     (local.get $108)
     (local.get $109)
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (local.get $110)
     )
    )
    (local.set $111
     (f32.load offset=56
      (local.get $3)
     )
    )
    (local.set $112
     (f32.const 1000000015047466219876688e6)
    )
    (local.set $113
     (f32.add
      (local.get $112)
      (local.get $111)
     )
    )
    (local.set $114
     (f32.const 1)
    )
    (local.set $115
     (f32.gt
      (local.get $113)
      (local.get $114)
     )
    )
    (local.set $116
     (i32.const 1)
    )
    (local.set $117
     (i32.and
      (local.get $115)
      (local.get $116)
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (local.get $117)
      )
     )
     (local.set $118
      (f32.load offset=56
       (local.get $3)
      )
     )
     (local.set $119
      (f32.const 0.5)
     )
     (local.set $120
      (f32.mul
       (local.get $119)
       (local.get $118)
      )
     )
     (f32.store offset=60
      (local.get $3)
      (local.get $120)
     )
     (br $label$1)
    )
   )
   (local.set $121
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $122
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $123
    (f32.mul
     (local.get $121)
     (local.get $122)
    )
   )
   (f32.store offset=52
    (local.get $3)
    (local.get $123)
   )
   (local.set $124
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $125
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $126
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $127
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $128
    (f32.const 4.9672799207201024e-08)
   )
   (local.set $129
    (f32.mul
     (local.get $127)
     (local.get $128)
    )
   )
   (local.set $130
    (f32.const -1.5995563444448635e-05)
   )
   (local.set $131
    (f32.add
     (local.get $129)
     (local.get $130)
    )
   )
   (local.set $132
    (f32.mul
     (local.get $126)
     (local.get $131)
    )
   )
   (local.set $133
    (f32.const 1.4070566976442933e-03)
   )
   (local.set $134
    (f32.add
     (local.get $132)
     (local.get $133)
    )
   )
   (local.set $135
    (f32.mul
     (local.get $125)
     (local.get $134)
    )
   )
   (local.set $136
    (f32.const -0.0625)
   )
   (local.set $137
    (f32.add
     (local.get $135)
     (local.get $136)
    )
   )
   (local.set $138
    (f32.mul
     (local.get $124)
     (local.get $137)
    )
   )
   (f32.store offset=32
    (local.get $3)
    (local.get $138)
   )
   (local.set $139
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $140
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $141
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $142
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $143
    (f32.load offset=52
     (local.get $3)
    )
   )
   (local.set $144
    (f32.const 1.2354227016397878e-11)
   )
   (local.set $145
    (f32.mul
     (local.get $143)
     (local.get $144)
    )
   )
   (local.set $146
    (f32.const 5.046362439031782e-09)
   )
   (local.set $147
    (f32.add
     (local.get $145)
     (local.get $146)
    )
   )
   (local.set $148
    (f32.mul
     (local.get $142)
     (local.get $147)
    )
   )
   (local.set $149
    (f32.const 1.177184685730026e-06)
   )
   (local.set $150
    (f32.add
     (local.get $148)
     (local.get $149)
    )
   )
   (local.set $151
    (f32.mul
     (local.get $141)
     (local.get $150)
    )
   )
   (local.set $152
    (f32.const 1.8594678840599954e-04)
   )
   (local.set $153
    (f32.add
     (local.get $151)
     (local.get $152)
    )
   )
   (local.set $154
    (f32.mul
     (local.get $140)
     (local.get $153)
    )
   )
   (local.set $155
    (f32.const 0.019153760746121407)
   )
   (local.set $156
    (f32.add
     (local.get $154)
     (local.get $155)
    )
   )
   (local.set $157
    (f32.mul
     (local.get $139)
     (local.get $156)
    )
   )
   (local.set $158
    (f32.const 1)
   )
   (local.set $159
    (f32.add
     (local.get $157)
     (local.get $158)
    )
   )
   (f32.store offset=48
    (local.get $3)
    (local.get $159)
   )
   (local.set $160
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $161
    (f32.load offset=32
     (local.get $3)
    )
   )
   (local.set $162
    (f32.mul
     (local.get $161)
     (local.get $160)
    )
   )
   (f32.store offset=32
    (local.get $3)
    (local.get $162)
   )
   (local.set $163
    (f32.load offset=56
     (local.get $3)
    )
   )
   (local.set $164
    (f32.load offset=32
     (local.get $3)
    )
   )
   (local.set $165
    (f32.load offset=48
     (local.get $3)
    )
   )
   (local.set $166
    (f32.div
     (local.get $164)
     (local.get $165)
    )
   )
   (local.set $167
    (f32.const 0.5)
   )
   (local.set $168
    (f32.mul
     (local.get $163)
     (local.get $167)
    )
   )
   (local.set $169
    (f32.add
     (local.get $168)
     (local.get $166)
    )
   )
   (f32.store offset=60
    (local.get $3)
    (local.get $169)
   )
  )
  (local.set $170
   (f32.load offset=60
    (local.get $3)
   )
  )
  (local.set $171
   (i32.const 64)
  )
  (local.set $172
   (i32.add
    (local.get $3)
    (local.get $171)
   )
  )
  (global.set $__stack_pointer
   (local.get $172)
  )
  (return
   (local.get $170)
  )
 )
 (func $ponef (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 i32)
  (local $44 f32)
  (local $45 f32)
  (local $46 i32)
  (local $47 f32)
  (local $48 f32)
  (local $49 i32)
  (local $50 f32)
  (local $51 f32)
  (local $52 i32)
  (local $53 f32)
  (local $54 f32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 f32)
  (local $73 f32)
  (local $74 i32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 f32)
  (local $79 f32)
  (local $80 i32)
  (local $81 f32)
  (local $82 f32)
  (local $83 i32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f32.store offset=28
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=28
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1090519040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 3344)
    )
    (i32.store offset=24
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 3376)
    )
    (i32.store offset=20
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1083274219)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 3408)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 3440)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1077336343)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 3472)
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 3504)
      )
      (i32.store offset=20
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 3536)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 3568)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $39
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $40
   (f32.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f32.const 1)
  )
  (local.set $42
   (f32.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $44
   (f32.load
    (local.get $43)
   )
  )
  (local.set $45
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $47
   (f32.load offset=4
    (local.get $46)
   )
  )
  (local.set $48
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $50
   (f32.load offset=8
    (local.get $49)
   )
  )
  (local.set $51
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $53
   (f32.load offset=12
    (local.get $52)
   )
  )
  (local.set $54
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $56
   (f32.load offset=16
    (local.get $55)
   )
  )
  (local.set $57
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $59
   (f32.load offset=20
    (local.get $58)
   )
  )
  (local.set $60
   (f32.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f32.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f32.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f32.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f32.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f32.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f32.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f32.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f32.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f32.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f32.store offset=12
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $72
   (f32.load
    (local.get $71)
   )
  )
  (local.set $73
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $75
   (f32.load offset=4
    (local.get $74)
   )
  )
  (local.set $76
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $78
   (f32.load offset=8
    (local.get $77)
   )
  )
  (local.set $79
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $81
   (f32.load offset=12
    (local.get $80)
   )
  )
  (local.set $82
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $84
   (f32.load offset=16
    (local.get $83)
   )
  )
  (local.set $85
   (f32.mul
    (local.get $82)
    (local.get $84)
   )
  )
  (local.set $86
   (f32.add
    (local.get $85)
    (local.get $81)
   )
  )
  (local.set $87
   (f32.mul
    (local.get $79)
    (local.get $86)
   )
  )
  (local.set $88
   (f32.add
    (local.get $87)
    (local.get $78)
   )
  )
  (local.set $89
   (f32.mul
    (local.get $76)
    (local.get $88)
   )
  )
  (local.set $90
   (f32.add
    (local.get $89)
    (local.get $75)
   )
  )
  (local.set $91
   (f32.mul
    (local.get $73)
    (local.get $90)
   )
  )
  (local.set $92
   (f32.add
    (local.get $91)
    (local.get $72)
   )
  )
  (local.set $93
   (f32.mul
    (local.get $70)
    (local.get $92)
   )
  )
  (local.set $94
   (f32.const 1)
  )
  (local.set $95
   (f32.add
    (local.get $93)
    (local.get $94)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $95)
  )
  (local.set $96
   (f32.load offset=12
    (local.get $3)
   )
  )
  (local.set $97
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $98
   (f32.div
    (local.get $96)
    (local.get $97)
   )
  )
  (local.set $99
   (f32.const 1)
  )
  (local.set $100
   (f32.add
    (local.get $99)
    (local.get $98)
   )
  )
  (return
   (local.get $100)
  )
 )
 (func $qonef (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 i32)
  (local $44 f32)
  (local $45 f32)
  (local $46 i32)
  (local $47 f32)
  (local $48 f32)
  (local $49 i32)
  (local $50 f32)
  (local $51 f32)
  (local $52 i32)
  (local $53 f32)
  (local $54 f32)
  (local $55 i32)
  (local $56 f32)
  (local $57 f32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 f32)
  (local $66 f32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 f32)
  (local $73 f32)
  (local $74 i32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 f32)
  (local $79 f32)
  (local $80 i32)
  (local $81 f32)
  (local $82 f32)
  (local $83 i32)
  (local $84 f32)
  (local $85 f32)
  (local $86 i32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f32)
  (local $107 f32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 32)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (f32.store offset=28
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=28
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1090519040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (i32.const 3600)
    )
    (i32.store offset=24
     (local.get $3)
     (local.get $16)
    )
    (local.set $17
     (i32.const 3632)
    )
    (i32.store offset=20
     (local.get $3)
     (local.get $17)
    )
    (br $label$1)
   )
   (local.set $18
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $19
    (i32.const 1083274219)
   )
   (local.set $20
    (local.get $18)
   )
   (local.set $21
    (local.get $19)
   )
   (local.set $22
    (i32.ge_s
     (local.get $20)
     (local.get $21)
    )
   )
   (local.set $23
    (i32.const 1)
   )
   (local.set $24
    (i32.and
     (local.get $22)
     (local.get $23)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $24)
      )
     )
     (local.set $25
      (i32.const 3664)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $25)
     )
     (local.set $26
      (i32.const 3696)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $26)
     )
     (br $label$3)
    )
    (local.set $27
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $28
     (i32.const 1077336343)
    )
    (local.set $29
     (local.get $27)
    )
    (local.set $30
     (local.get $28)
    )
    (local.set $31
     (i32.ge_s
      (local.get $29)
      (local.get $30)
     )
    )
    (local.set $32
     (i32.const 1)
    )
    (local.set $33
     (i32.and
      (local.get $31)
      (local.get $32)
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (local.get $33)
       )
      )
      (local.set $34
       (i32.const 3728)
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $34)
      )
      (local.set $35
       (i32.const 3760)
      )
      (i32.store offset=20
       (local.get $3)
       (local.get $35)
      )
      (br $label$5)
     )
     (local.set $36
      (i32.const 3792)
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $36)
     )
     (local.set $37
      (i32.const 3824)
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $37)
     )
    )
   )
  )
  (local.set $38
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $39
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $40
   (f32.mul
    (local.get $38)
    (local.get $39)
   )
  )
  (local.set $41
   (f32.const 1)
  )
  (local.set $42
   (f32.div
    (local.get $41)
    (local.get $40)
   )
  )
  (f32.store offset=8
   (local.get $3)
   (local.get $42)
  )
  (local.set $43
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $44
   (f32.load
    (local.get $43)
   )
  )
  (local.set $45
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $46
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $47
   (f32.load offset=4
    (local.get $46)
   )
  )
  (local.set $48
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $49
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $50
   (f32.load offset=8
    (local.get $49)
   )
  )
  (local.set $51
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $52
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $53
   (f32.load offset=12
    (local.get $52)
   )
  )
  (local.set $54
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $55
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $56
   (f32.load offset=16
    (local.get $55)
   )
  )
  (local.set $57
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $58
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $59
   (f32.load offset=20
    (local.get $58)
   )
  )
  (local.set $60
   (f32.mul
    (local.get $57)
    (local.get $59)
   )
  )
  (local.set $61
   (f32.add
    (local.get $60)
    (local.get $56)
   )
  )
  (local.set $62
   (f32.mul
    (local.get $54)
    (local.get $61)
   )
  )
  (local.set $63
   (f32.add
    (local.get $62)
    (local.get $53)
   )
  )
  (local.set $64
   (f32.mul
    (local.get $51)
    (local.get $63)
   )
  )
  (local.set $65
   (f32.add
    (local.get $64)
    (local.get $50)
   )
  )
  (local.set $66
   (f32.mul
    (local.get $48)
    (local.get $65)
   )
  )
  (local.set $67
   (f32.add
    (local.get $66)
    (local.get $47)
   )
  )
  (local.set $68
   (f32.mul
    (local.get $45)
    (local.get $67)
   )
  )
  (local.set $69
   (f32.add
    (local.get $68)
    (local.get $44)
   )
  )
  (f32.store offset=12
   (local.get $3)
   (local.get $69)
  )
  (local.set $70
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $71
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $72
   (f32.load
    (local.get $71)
   )
  )
  (local.set $73
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $74
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $75
   (f32.load offset=4
    (local.get $74)
   )
  )
  (local.set $76
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $77
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $78
   (f32.load offset=8
    (local.get $77)
   )
  )
  (local.set $79
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $80
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $81
   (f32.load offset=12
    (local.get $80)
   )
  )
  (local.set $82
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $83
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $84
   (f32.load offset=16
    (local.get $83)
   )
  )
  (local.set $85
   (f32.load offset=8
    (local.get $3)
   )
  )
  (local.set $86
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $87
   (f32.load offset=20
    (local.get $86)
   )
  )
  (local.set $88
   (f32.mul
    (local.get $85)
    (local.get $87)
   )
  )
  (local.set $89
   (f32.add
    (local.get $88)
    (local.get $84)
   )
  )
  (local.set $90
   (f32.mul
    (local.get $82)
    (local.get $89)
   )
  )
  (local.set $91
   (f32.add
    (local.get $90)
    (local.get $81)
   )
  )
  (local.set $92
   (f32.mul
    (local.get $79)
    (local.get $91)
   )
  )
  (local.set $93
   (f32.add
    (local.get $92)
    (local.get $78)
   )
  )
  (local.set $94
   (f32.mul
    (local.get $76)
    (local.get $93)
   )
  )
  (local.set $95
   (f32.add
    (local.get $94)
    (local.get $75)
   )
  )
  (local.set $96
   (f32.mul
    (local.get $73)
    (local.get $95)
   )
  )
  (local.set $97
   (f32.add
    (local.get $96)
    (local.get $72)
   )
  )
  (local.set $98
   (f32.mul
    (local.get $70)
    (local.get $97)
   )
  )
  (local.set $99
   (f32.const 1)
  )
  (local.set $100
   (f32.add
    (local.get $98)
    (local.get $99)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $100)
  )
  (local.set $101
   (f32.load offset=12
    (local.get $3)
   )
  )
  (local.set $102
   (f32.load offset=16
    (local.get $3)
   )
  )
  (local.set $103
   (f32.div
    (local.get $101)
    (local.get $102)
   )
  )
  (local.set $104
   (f32.const 0.375)
  )
  (local.set $105
   (f32.add
    (local.get $104)
    (local.get $103)
   )
  )
  (local.set $106
   (f32.load offset=28
    (local.get $3)
   )
  )
  (local.set $107
   (f32.div
    (local.get $105)
    (local.get $106)
   )
  )
  (return
   (local.get $107)
  )
 )
 (func $y1f (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 i32)
  (local $24 f32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 f32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 f32)
  (local $45 f32)
  (local $46 f32)
  (local $47 f32)
  (local $48 f32)
  (local $49 f32)
  (local $50 f32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 i32)
  (local $66 f32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f32)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 f32)
  (local $114 f32)
  (local $115 f32)
  (local $116 f32)
  (local $117 f32)
  (local $118 f32)
  (local $119 i32)
  (local $120 f32)
  (local $121 f32)
  (local $122 i32)
  (local $123 f32)
  (local $124 f32)
  (local $125 i32)
  (local $126 f32)
  (local $127 f32)
  (local $128 i32)
  (local $129 f32)
  (local $130 f32)
  (local $131 i32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 f32)
  (local $137 f32)
  (local $138 f32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 i32)
  (local $143 f32)
  (local $144 f32)
  (local $145 i32)
  (local $146 f32)
  (local $147 f32)
  (local $148 i32)
  (local $149 f32)
  (local $150 f32)
  (local $151 i32)
  (local $152 f32)
  (local $153 f32)
  (local $154 i32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 f32)
  (local $161 f32)
  (local $162 f32)
  (local $163 f32)
  (local $164 f32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 f32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 f32)
  (local $184 f32)
  (local $185 f32)
  (local $186 i32)
  (local $187 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=40
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=40
    (local.get $3)
   )
  )
  (f32.store
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load
    (local.get $3)
   )
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=8
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=4
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 2139095040)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.ge_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $17
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $18
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $19
     (f32.mul
      (local.get $17)
      (local.get $18)
     )
    )
    (local.set $20
     (f32.add
      (local.get $19)
      (local.get $16)
     )
    )
    (local.set $21
     (f32.const 1)
    )
    (local.set $22
     (f32.div
      (local.get $21)
      (local.get $20)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $22)
    )
    (br $label$1)
   )
   (local.set $23
    (i32.load offset=4
     (local.get $3)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $23)
    )
    (local.set $24
     (f32.const -inf)
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $24)
    )
    (br $label$1)
   )
   (local.set $25
    (i32.load offset=8
     (local.get $3)
    )
   )
   (local.set $26
    (i32.const 0)
   )
   (local.set $27
    (local.get $25)
   )
   (local.set $28
    (local.get $26)
   )
   (local.set $29
    (i32.lt_s
     (local.get $27)
     (local.get $28)
    )
   )
   (local.set $30
    (i32.const 1)
   )
   (local.set $31
    (i32.and
     (local.get $29)
     (local.get $30)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $31)
     )
    )
    (local.set $32
     (f32.const nan:0x400000)
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $32)
    )
    (br $label$1)
   )
   (local.set $33
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $34
    (i32.const 1073741824)
   )
   (local.set $35
    (local.get $33)
   )
   (local.set $36
    (local.get $34)
   )
   (local.set $37
    (i32.ge_s
     (local.get $35)
     (local.get $36)
    )
   )
   (local.set $38
    (i32.const 1)
   )
   (local.set $39
    (i32.and
     (local.get $37)
     (local.get $38)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $39)
     )
    )
    (local.set $40
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $41
     (call $sinf
      (local.get $40)
     )
    )
    (f32.store offset=32
     (local.get $3)
     (local.get $41)
    )
    (local.set $42
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $43
     (call $cosf
      (local.get $42)
     )
    )
    (f32.store offset=28
     (local.get $3)
     (local.get $43)
    )
    (local.set $44
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $45
     (f32.neg
      (local.get $44)
     )
    )
    (local.set $46
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $47
     (f32.sub
      (local.get $45)
      (local.get $46)
     )
    )
    (f32.store offset=24
     (local.get $3)
     (local.get $47)
    )
    (local.set $48
     (f32.load offset=32
      (local.get $3)
     )
    )
    (local.set $49
     (f32.load offset=28
      (local.get $3)
     )
    )
    (local.set $50
     (f32.sub
      (local.get $48)
      (local.get $49)
     )
    )
    (f32.store offset=20
     (local.get $3)
     (local.get $50)
    )
    (local.set $51
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $52
     (i32.const 2130706432)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (local.get $52)
    )
    (local.set $55
     (i32.lt_s
      (local.get $53)
      (local.get $54)
     )
    )
    (local.set $56
     (i32.const 1)
    )
    (local.set $57
     (i32.and
      (local.get $55)
      (local.get $56)
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (local.get $57)
      )
     )
     (local.set $58
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $59
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $60
      (f32.add
       (local.get $58)
       (local.get $59)
      )
     )
     (local.set $61
      (call $cosf
       (local.get $60)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $61)
     )
     (local.set $62
      (f32.load offset=32
       (local.get $3)
      )
     )
     (local.set $63
      (f32.load offset=28
       (local.get $3)
      )
     )
     (local.set $64
      (f32.mul
       (local.get $62)
       (local.get $63)
      )
     )
     (local.set $65
      (i32.const 0)
     )
     (local.set $66
      (f32.convert_i32_s
       (local.get $65)
      )
     )
     (local.set $67
      (f32.gt
       (local.get $64)
       (local.get $66)
      )
     )
     (local.set $68
      (i32.const 1)
     )
     (local.set $69
      (i32.and
       (local.get $67)
       (local.get $68)
      )
     )
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (local.get $69)
        )
       )
       (local.set $70
        (f32.load offset=36
         (local.get $3)
        )
       )
       (local.set $71
        (f32.load offset=24
         (local.get $3)
        )
       )
       (local.set $72
        (f32.div
         (local.get $70)
         (local.get $71)
        )
       )
       (f32.store offset=20
        (local.get $3)
        (local.get $72)
       )
       (br $label$7)
      )
      (local.set $73
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $74
       (f32.load offset=20
        (local.get $3)
       )
      )
      (local.set $75
       (f32.div
        (local.get $73)
        (local.get $74)
       )
      )
      (f32.store offset=24
       (local.get $3)
       (local.get $75)
      )
     )
    )
    (local.set $76
     (i32.load offset=4
      (local.get $3)
     )
    )
    (local.set $77
     (i32.const 1476395008)
    )
    (local.set $78
     (local.get $76)
    )
    (local.set $79
     (local.get $77)
    )
    (local.set $80
     (i32.gt_s
      (local.get $78)
      (local.get $79)
     )
    )
    (local.set $81
     (i32.const 1)
    )
    (local.set $82
     (i32.and
      (local.get $80)
      (local.get $81)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $82)
       )
      )
      (local.set $83
       (f32.load offset=24
        (local.get $3)
       )
      )
      (local.set $84
       (f32.const 0.564189612865448)
      )
      (local.set $85
       (f32.mul
        (local.get $84)
        (local.get $83)
       )
      )
      (local.set $86
       (f32.load offset=40
        (local.get $3)
       )
      )
      (local.set $87
       (call $sqrtf
        (local.get $86)
       )
      )
      (local.set $88
       (f32.div
        (local.get $85)
        (local.get $87)
       )
      )
      (f32.store offset=36
       (local.get $3)
       (local.get $88)
      )
      (br $label$9)
     )
     (local.set $89
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $90
      (call $ponef
       (local.get $89)
      )
     )
     (f32.store offset=16
      (local.get $3)
      (local.get $90)
     )
     (local.set $91
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $92
      (call $qonef
       (local.get $91)
      )
     )
     (f32.store offset=12
      (local.get $3)
      (local.get $92)
     )
     (local.set $93
      (f32.load offset=16
       (local.get $3)
      )
     )
     (local.set $94
      (f32.load offset=24
       (local.get $3)
      )
     )
     (local.set $95
      (f32.load offset=12
       (local.get $3)
      )
     )
     (local.set $96
      (f32.load offset=20
       (local.get $3)
      )
     )
     (local.set $97
      (f32.mul
       (local.get $95)
       (local.get $96)
      )
     )
     (local.set $98
      (f32.mul
       (local.get $93)
       (local.get $94)
      )
     )
     (local.set $99
      (f32.add
       (local.get $98)
       (local.get $97)
      )
     )
     (local.set $100
      (f32.const 0.564189612865448)
     )
     (local.set $101
      (f32.mul
       (local.get $100)
       (local.get $99)
      )
     )
     (local.set $102
      (f32.load offset=40
       (local.get $3)
      )
     )
     (local.set $103
      (call $sqrtf
       (local.get $102)
      )
     )
     (local.set $104
      (f32.div
       (local.get $101)
       (local.get $103)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $104)
     )
    )
    (local.set $105
     (f32.load offset=36
      (local.get $3)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $105)
    )
    (br $label$1)
   )
   (local.set $106
    (i32.load offset=4
     (local.get $3)
    )
   )
   (local.set $107
    (i32.const 855638016)
   )
   (local.set $108
    (local.get $106)
   )
   (local.set $109
    (local.get $107)
   )
   (local.set $110
    (i32.le_s
     (local.get $108)
     (local.get $109)
    )
   )
   (local.set $111
    (i32.const 1)
   )
   (local.set $112
    (i32.and
     (local.get $110)
     (local.get $111)
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (local.get $112)
     )
    )
    (local.set $113
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $114
     (f32.const -0.6366197466850281)
    )
    (local.set $115
     (f32.div
      (local.get $114)
      (local.get $113)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $115)
    )
    (br $label$1)
   )
   (local.set $116
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $117
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $118
    (f32.mul
     (local.get $116)
     (local.get $117)
    )
   )
   (f32.store offset=36
    (local.get $3)
    (local.get $118)
   )
   (local.set $119
    (i32.const 0)
   )
   (local.set $120
    (f32.load offset=3280
     (local.get $119)
    )
   )
   (local.set $121
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $122
    (i32.const 0)
   )
   (local.set $123
    (f32.load offset=3284
     (local.get $122)
    )
   )
   (local.set $124
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $125
    (i32.const 0)
   )
   (local.set $126
    (f32.load offset=3288
     (local.get $125)
    )
   )
   (local.set $127
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $128
    (i32.const 0)
   )
   (local.set $129
    (f32.load offset=3292
     (local.get $128)
    )
   )
   (local.set $130
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $131
    (i32.const 0)
   )
   (local.set $132
    (f32.load offset=3296
     (local.get $131)
    )
   )
   (local.set $133
    (f32.mul
     (local.get $130)
     (local.get $132)
    )
   )
   (local.set $134
    (f32.add
     (local.get $133)
     (local.get $129)
    )
   )
   (local.set $135
    (f32.mul
     (local.get $127)
     (local.get $134)
    )
   )
   (local.set $136
    (f32.add
     (local.get $135)
     (local.get $126)
    )
   )
   (local.set $137
    (f32.mul
     (local.get $124)
     (local.get $136)
    )
   )
   (local.set $138
    (f32.add
     (local.get $137)
     (local.get $123)
    )
   )
   (local.set $139
    (f32.mul
     (local.get $121)
     (local.get $138)
    )
   )
   (local.set $140
    (f32.add
     (local.get $139)
     (local.get $120)
    )
   )
   (f32.store offset=16
    (local.get $3)
    (local.get $140)
   )
   (local.set $141
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $142
    (i32.const 0)
   )
   (local.set $143
    (f32.load offset=3312
     (local.get $142)
    )
   )
   (local.set $144
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $145
    (i32.const 0)
   )
   (local.set $146
    (f32.load offset=3316
     (local.get $145)
    )
   )
   (local.set $147
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $148
    (i32.const 0)
   )
   (local.set $149
    (f32.load offset=3320
     (local.get $148)
    )
   )
   (local.set $150
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $151
    (i32.const 0)
   )
   (local.set $152
    (f32.load offset=3324
     (local.get $151)
    )
   )
   (local.set $153
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $154
    (i32.const 0)
   )
   (local.set $155
    (f32.load offset=3328
     (local.get $154)
    )
   )
   (local.set $156
    (f32.mul
     (local.get $153)
     (local.get $155)
    )
   )
   (local.set $157
    (f32.add
     (local.get $156)
     (local.get $152)
    )
   )
   (local.set $158
    (f32.mul
     (local.get $150)
     (local.get $157)
    )
   )
   (local.set $159
    (f32.add
     (local.get $158)
     (local.get $149)
    )
   )
   (local.set $160
    (f32.mul
     (local.get $147)
     (local.get $159)
    )
   )
   (local.set $161
    (f32.add
     (local.get $160)
     (local.get $146)
    )
   )
   (local.set $162
    (f32.mul
     (local.get $144)
     (local.get $161)
    )
   )
   (local.set $163
    (f32.add
     (local.get $162)
     (local.get $143)
    )
   )
   (local.set $164
    (f32.mul
     (local.get $141)
     (local.get $163)
    )
   )
   (local.set $165
    (f32.const 1)
   )
   (local.set $166
    (f32.add
     (local.get $164)
     (local.get $165)
    )
   )
   (f32.store offset=12
    (local.get $3)
    (local.get $166)
   )
   (local.set $167
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $168
    (f32.load offset=16
     (local.get $3)
    )
   )
   (local.set $169
    (f32.load offset=12
     (local.get $3)
    )
   )
   (local.set $170
    (f32.div
     (local.get $168)
     (local.get $169)
    )
   )
   (local.set $171
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $172
    (call $j1f
     (local.get $171)
    )
   )
   (local.set $173
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $174
    (call $logf
     (local.get $173)
    )
   )
   (local.set $175
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $176
    (f32.const 1)
   )
   (local.set $177
    (f32.div
     (local.get $176)
     (local.get $175)
    )
   )
   (local.set $178
    (f32.neg
     (local.get $177)
    )
   )
   (local.set $179
    (f32.mul
     (local.get $172)
     (local.get $174)
    )
   )
   (local.set $180
    (f32.add
     (local.get $179)
     (local.get $178)
    )
   )
   (local.set $181
    (f32.const 0.6366197466850281)
   )
   (local.set $182
    (f32.mul
     (local.get $181)
     (local.get $180)
    )
   )
   (local.set $183
    (f32.mul
     (local.get $167)
     (local.get $170)
    )
   )
   (local.set $184
    (f32.add
     (local.get $183)
     (local.get $182)
    )
   )
   (f32.store offset=44
    (local.get $3)
    (local.get $184)
   )
  )
  (local.set $185
   (f32.load offset=44
    (local.get $3)
   )
  )
  (local.set $186
   (i32.const 48)
  )
  (local.set $187
   (i32.add
    (local.get $3)
    (local.get $186)
   )
  )
  (global.set $__stack_pointer
   (local.get $187)
  )
  (return
   (local.get $185)
  )
 )
 (func $jn (param $0 i32) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 f64)
  (local $40 f64)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 f64)
  (local $46 f64)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 f64)
  (local $55 f64)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 f64)
  (local $64 f64)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 f64)
  (local $77 i32)
  (local $78 f64)
  (local $79 f64)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 f64)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 f64)
  (local $134 f64)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 f64)
  (local $145 f64)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 i32)
  (local $186 i32)
  (local $187 i32)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 i32)
  (local $192 i32)
  (local $193 i32)
  (local $194 f64)
  (local $195 f64)
  (local $196 f64)
  (local $197 f64)
  (local $198 f64)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 f64)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 i32)
  (local $210 f64)
  (local $211 f64)
  (local $212 i32)
  (local $213 i32)
  (local $214 i32)
  (local $215 i32)
  (local $216 i32)
  (local $217 i32)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 i32)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 f64)
  (local $234 i32)
  (local $235 i32)
  (local $236 i32)
  (local $237 i32)
  (local $238 i32)
  (local $239 i32)
  (local $240 i32)
  (local $241 i32)
  (local $242 i32)
  (local $243 i32)
  (local $244 i32)
  (local $245 i32)
  (local $246 i32)
  (local $247 f64)
  (local $248 f64)
  (local $249 f64)
  (local $250 f64)
  (local $251 f64)
  (local $252 f64)
  (local $253 f64)
  (local $254 i32)
  (local $255 i32)
  (local $256 i32)
  (local $257 f64)
  (local $258 f64)
  (local $259 i32)
  (local $260 f64)
  (local $261 f64)
  (local $262 f64)
  (local $263 f64)
  (local $264 f64)
  (local $265 f64)
  (local $266 f64)
  (local $267 f64)
  (local $268 f64)
  (local $269 f64)
  (local $270 f64)
  (local $271 f64)
  (local $272 f64)
  (local $273 i32)
  (local $274 i32)
  (local $275 i32)
  (local $276 i32)
  (local $277 i32)
  (local $278 i32)
  (local $279 i32)
  (local $280 i32)
  (local $281 i32)
  (local $282 f64)
  (local $283 i32)
  (local $284 i32)
  (local $285 i32)
  (local $286 i32)
  (local $287 i32)
  (local $288 i32)
  (local $289 i32)
  (local $290 f64)
  (local $291 f64)
  (local $292 f64)
  (local $293 f64)
  (local $294 f64)
  (local $295 f64)
  (local $296 f64)
  (local $297 f64)
  (local $298 f64)
  (local $299 f64)
  (local $300 f64)
  (local $301 f64)
  (local $302 f64)
  (local $303 i32)
  (local $304 i32)
  (local $305 i32)
  (local $306 i32)
  (local $307 i32)
  (local $308 i32)
  (local $309 i32)
  (local $310 i32)
  (local $311 i32)
  (local $312 f64)
  (local $313 i32)
  (local $314 i32)
  (local $315 i32)
  (local $316 i32)
  (local $317 i32)
  (local $318 i32)
  (local $319 i32)
  (local $320 f64)
  (local $321 f64)
  (local $322 f64)
  (local $323 f64)
  (local $324 f64)
  (local $325 f64)
  (local $326 f64)
  (local $327 f64)
  (local $328 f64)
  (local $329 f64)
  (local $330 f64)
  (local $331 f64)
  (local $332 f64)
  (local $333 f64)
  (local $334 f64)
  (local $335 i32)
  (local $336 i32)
  (local $337 i32)
  (local $338 f64)
  (local $339 f64)
  (local $340 f64)
  (local $341 f64)
  (local $342 f64)
  (local $343 f64)
  (local $344 f64)
  (local $345 i32)
  (local $346 i32)
  (local $347 i32)
  (local $348 f64)
  (local $349 f64)
  (local $350 f64)
  (local $351 f64)
  (local $352 f64)
  (local $353 f64)
  (local $354 f64)
  (local $355 f64)
  (local $356 i32)
  (local $357 i32)
  (local $358 i32)
  (local $359 f64)
  (local $360 f64)
  (local $361 f64)
  (local $362 f64)
  (local $363 f64)
  (local $364 f64)
  (local $365 f64)
  (local $366 f64)
  (local $367 f64)
  (local $368 f64)
  (local $369 i32)
  (local $370 i32)
  (local $371 i32)
  (local $372 i32)
  (local $373 i32)
  (local $374 i32)
  (local $375 i32)
  (local $376 f64)
  (local $377 f64)
  (local $378 f64)
  (local $379 f64)
  (local $380 i32)
  (local $381 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 160)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (i32.store offset=148
   (local.get $4)
   (local.get $0)
  )
  (f64.store offset=136
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=136
    (local.get $4)
   )
  )
  (f64.store offset=56
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=60
    (local.get $4)
   )
  )
  (i32.store offset=128
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=56
    (local.get $4)
   )
  )
  (i32.store offset=120
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=128
    (local.get $4)
   )
  )
  (local.set $9
   (i32.const 2147483647)
  )
  (local.set $10
   (i32.and
    (local.get $8)
    (local.get $9)
   )
  )
  (i32.store offset=124
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=124
    (local.get $4)
   )
  )
  (local.set $12
   (i32.load offset=120
    (local.get $4)
   )
  )
  (local.set $13
   (i32.load offset=120
    (local.get $4)
   )
  )
  (local.set $14
   (i32.const 0)
  )
  (local.set $15
   (i32.sub
    (local.get $14)
    (local.get $13)
   )
  )
  (local.set $16
   (i32.or
    (local.get $12)
    (local.get $15)
   )
  )
  (local.set $17
   (i32.const 31)
  )
  (local.set $18
   (i32.shr_u
    (local.get $16)
    (local.get $17)
   )
  )
  (local.set $19
   (i32.or
    (local.get $11)
    (local.get $18)
   )
  )
  (local.set $20
   (i32.const 2146435072)
  )
  (local.set $21
   (local.get $19)
  )
  (local.set $22
   (local.get $20)
  )
  (local.set $23
   (i32.gt_u
    (local.get $21)
    (local.get $22)
   )
  )
  (local.set $24
   (i32.const 1)
  )
  (local.set $25
   (i32.and
    (local.get $23)
    (local.get $24)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $27
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $28
     (f64.add
      (local.get $26)
      (local.get $27)
     )
    )
    (f64.store offset=152
     (local.get $4)
     (local.get $28)
    )
    (br $label$1)
   )
   (local.set $29
    (i32.load offset=148
     (local.get $4)
    )
   )
   (local.set $30
    (i32.const 0)
   )
   (local.set $31
    (local.get $29)
   )
   (local.set $32
    (local.get $30)
   )
   (local.set $33
    (i32.lt_s
     (local.get $31)
     (local.get $32)
    )
   )
   (local.set $34
    (i32.const 1)
   )
   (local.set $35
    (i32.and
     (local.get $33)
     (local.get $34)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $35)
     )
    )
    (local.set $36
     (i32.load offset=148
      (local.get $4)
     )
    )
    (local.set $37
     (i32.const 0)
    )
    (local.set $38
     (i32.sub
      (local.get $37)
      (local.get $36)
     )
    )
    (i32.store offset=148
     (local.get $4)
     (local.get $38)
    )
    (local.set $39
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $40
     (f64.neg
      (local.get $39)
     )
    )
    (f64.store offset=136
     (local.get $4)
     (local.get $40)
    )
    (local.set $41
     (i32.load offset=128
      (local.get $4)
     )
    )
    (local.set $42
     (i32.const -2147483648)
    )
    (local.set $43
     (i32.xor
      (local.get $41)
      (local.get $42)
     )
    )
    (i32.store offset=128
     (local.get $4)
     (local.get $43)
    )
   )
   (local.set $44
    (i32.load offset=148
     (local.get $4)
    )
   )
   (block $label$4
    (br_if $label$4
     (local.get $44)
    )
    (local.set $45
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $46
     (call $j0
      (local.get $45)
     )
    )
    (f64.store offset=152
     (local.get $4)
     (local.get $46)
    )
    (br $label$1)
   )
   (local.set $47
    (i32.load offset=148
     (local.get $4)
    )
   )
   (local.set $48
    (i32.const 1)
   )
   (local.set $49
    (local.get $47)
   )
   (local.set $50
    (local.get $48)
   )
   (local.set $51
    (i32.eq
     (local.get $49)
     (local.get $50)
    )
   )
   (local.set $52
    (i32.const 1)
   )
   (local.set $53
    (i32.and
     (local.get $51)
     (local.get $52)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $53)
     )
    )
    (local.set $54
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $55
     (call $j1
      (local.get $54)
     )
    )
    (f64.store offset=152
     (local.get $4)
     (local.get $55)
    )
    (br $label$1)
   )
   (local.set $56
    (i32.load offset=148
     (local.get $4)
    )
   )
   (local.set $57
    (i32.const 1)
   )
   (local.set $58
    (i32.and
     (local.get $56)
     (local.get $57)
    )
   )
   (local.set $59
    (i32.load offset=128
     (local.get $4)
    )
   )
   (local.set $60
    (i32.const 31)
   )
   (local.set $61
    (i32.shr_s
     (local.get $59)
     (local.get $60)
    )
   )
   (local.set $62
    (i32.and
     (local.get $58)
     (local.get $61)
    )
   )
   (i32.store offset=116
    (local.get $4)
    (local.get $62)
   )
   (local.set $63
    (f64.load offset=136
     (local.get $4)
    )
   )
   (local.set $64
    (call $fabs
     (local.get $63)
    )
   )
   (f64.store offset=136
    (local.get $4)
    (local.get $64)
   )
   (local.set $65
    (i32.load offset=124
     (local.get $4)
    )
   )
   (local.set $66
    (i32.load offset=120
     (local.get $4)
    )
   )
   (local.set $67
    (i32.or
     (local.get $65)
     (local.get $66)
    )
   )
   (block $label$6
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $67)
       )
      )
      (local.set $68
       (i32.load offset=124
        (local.get $4)
       )
      )
      (local.set $69
       (i32.const 2146435072)
      )
      (local.set $70
       (local.get $68)
      )
      (local.set $71
       (local.get $69)
      )
      (local.set $72
       (i32.ge_s
        (local.get $70)
        (local.get $71)
       )
      )
      (local.set $73
       (i32.const 1)
      )
      (local.set $74
       (i32.and
        (local.get $72)
        (local.get $73)
       )
      )
      (br_if $label$7
       (i32.eqz
        (local.get $74)
       )
      )
     )
     (local.set $75
      (i32.const 0)
     )
     (local.set $76
      (f64.convert_i32_s
       (local.get $75)
      )
     )
     (f64.store offset=96
      (local.get $4)
      (local.get $76)
     )
     (br $label$6)
    )
    (local.set $77
     (i32.load offset=148
      (local.get $4)
     )
    )
    (local.set $78
     (f64.convert_i32_s
      (local.get $77)
     )
    )
    (local.set $79
     (f64.load offset=136
      (local.get $4)
     )
    )
    (local.set $80
     (f64.le
      (local.get $78)
      (local.get $79)
     )
    )
    (local.set $81
     (i32.const 1)
    )
    (local.set $82
     (i32.and
      (local.get $80)
      (local.get $81)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $82)
       )
      )
      (local.set $83
       (i32.load offset=124
        (local.get $4)
       )
      )
      (local.set $84
       (i32.const 1389363200)
      )
      (local.set $85
       (local.get $83)
      )
      (local.set $86
       (local.get $84)
      )
      (local.set $87
       (i32.ge_s
        (local.get $85)
        (local.get $86)
       )
      )
      (local.set $88
       (i32.const 1)
      )
      (local.set $89
       (i32.and
        (local.get $87)
        (local.get $88)
       )
      )
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i32.eqz
          (local.get $89)
         )
        )
        (local.set $90
         (i32.load offset=148
          (local.get $4)
         )
        )
        (local.set $91
         (i32.const 3)
        )
        (local.set $92
         (i32.and
          (local.get $90)
          (local.get $91)
         )
        )
        (drop
         (i32.gt_u
          (local.get $92)
          (local.get $91)
         )
        )
        (block $label$13
         (block $label$14
          (block $label$15
           (block $label$16
            (block $label$17
             (br_table $label$17 $label$16 $label$15 $label$14 $label$13
              (local.get $92)
             )
            )
            (local.set $93
             (f64.load offset=136
              (local.get $4)
             )
            )
            (local.set $94
             (call $cos
              (local.get $93)
             )
            )
            (local.set $95
             (f64.load offset=136
              (local.get $4)
             )
            )
            (local.set $96
             (call $sin
              (local.get $95)
             )
            )
            (local.set $97
             (f64.add
              (local.get $94)
              (local.get $96)
             )
            )
            (f64.store offset=88
             (local.get $4)
             (local.get $97)
            )
            (br $label$13)
           )
           (local.set $98
            (f64.load offset=136
             (local.get $4)
            )
           )
           (local.set $99
            (call $cos
             (local.get $98)
            )
           )
           (local.set $100
            (f64.neg
             (local.get $99)
            )
           )
           (local.set $101
            (f64.load offset=136
             (local.get $4)
            )
           )
           (local.set $102
            (call $sin
             (local.get $101)
            )
           )
           (local.set $103
            (f64.add
             (local.get $100)
             (local.get $102)
            )
           )
           (f64.store offset=88
            (local.get $4)
            (local.get $103)
           )
           (br $label$13)
          )
          (local.set $104
           (f64.load offset=136
            (local.get $4)
           )
          )
          (local.set $105
           (call $cos
            (local.get $104)
           )
          )
          (local.set $106
           (f64.neg
            (local.get $105)
           )
          )
          (local.set $107
           (f64.load offset=136
            (local.get $4)
           )
          )
          (local.set $108
           (call $sin
            (local.get $107)
           )
          )
          (local.set $109
           (f64.sub
            (local.get $106)
            (local.get $108)
           )
          )
          (f64.store offset=88
           (local.get $4)
           (local.get $109)
          )
          (br $label$13)
         )
         (local.set $110
          (f64.load offset=136
           (local.get $4)
          )
         )
         (local.set $111
          (call $cos
           (local.get $110)
          )
         )
         (local.set $112
          (f64.load offset=136
           (local.get $4)
          )
         )
         (local.set $113
          (call $sin
           (local.get $112)
          )
         )
         (local.set $114
          (f64.sub
           (local.get $111)
           (local.get $113)
          )
         )
         (f64.store offset=88
          (local.get $4)
          (local.get $114)
         )
        )
        (local.set $115
         (f64.load offset=88
          (local.get $4)
         )
        )
        (local.set $116
         (f64.const 0.5641895835477563)
        )
        (local.set $117
         (f64.mul
          (local.get $116)
          (local.get $115)
         )
        )
        (local.set $118
         (f64.load offset=136
          (local.get $4)
         )
        )
        (local.set $119
         (call $sqrt
          (local.get $118)
         )
        )
        (local.set $120
         (f64.div
          (local.get $117)
          (local.get $119)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $120)
        )
        (br $label$11)
       )
       (local.set $121
        (f64.load offset=136
         (local.get $4)
        )
       )
       (local.set $122
        (call $j0
         (local.get $121)
        )
       )
       (f64.store offset=104
        (local.get $4)
        (local.get $122)
       )
       (local.set $123
        (f64.load offset=136
         (local.get $4)
        )
       )
       (local.set $124
        (call $j1
         (local.get $123)
        )
       )
       (f64.store offset=96
        (local.get $4)
        (local.get $124)
       )
       (local.set $125
        (i32.const 1)
       )
       (i32.store offset=132
        (local.get $4)
        (local.get $125)
       )
       (block $label$18
        (loop $label$19
         (local.set $126
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $127
          (i32.load offset=148
           (local.get $4)
          )
         )
         (local.set $128
          (local.get $126)
         )
         (local.set $129
          (local.get $127)
         )
         (local.set $130
          (i32.lt_s
           (local.get $128)
           (local.get $129)
          )
         )
         (local.set $131
          (i32.const 1)
         )
         (local.set $132
          (i32.and
           (local.get $130)
           (local.get $131)
          )
         )
         (br_if $label$18
          (i32.eqz
           (local.get $132)
          )
         )
         (local.set $133
          (f64.load offset=96
           (local.get $4)
          )
         )
         (f64.store offset=88
          (local.get $4)
          (local.get $133)
         )
         (local.set $134
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $135
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $136
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $137
          (i32.add
           (local.get $135)
           (local.get $136)
          )
         )
         (local.set $138
          (f64.convert_i32_s
           (local.get $137)
          )
         )
         (local.set $139
          (f64.load offset=136
           (local.get $4)
          )
         )
         (local.set $140
          (f64.div
           (local.get $138)
           (local.get $139)
          )
         )
         (local.set $141
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $142
          (f64.neg
           (local.get $141)
          )
         )
         (local.set $143
          (f64.mul
           (local.get $134)
           (local.get $140)
          )
         )
         (local.set $144
          (f64.add
           (local.get $143)
           (local.get $142)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $144)
         )
         (local.set $145
          (f64.load offset=88
           (local.get $4)
          )
         )
         (f64.store offset=104
          (local.get $4)
          (local.get $145)
         )
         (local.set $146
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $147
          (i32.const 1)
         )
         (local.set $148
          (i32.add
           (local.get $146)
           (local.get $147)
          )
         )
         (i32.store offset=132
          (local.get $4)
          (local.get $148)
         )
         (br $label$19)
        )
       )
      )
      (br $label$9)
     )
     (local.set $149
      (i32.load offset=124
       (local.get $4)
      )
     )
     (local.set $150
      (i32.const 1041235968)
     )
     (local.set $151
      (local.get $149)
     )
     (local.set $152
      (local.get $150)
     )
     (local.set $153
      (i32.lt_s
       (local.get $151)
       (local.get $152)
      )
     )
     (local.set $154
      (i32.const 1)
     )
     (local.set $155
      (i32.and
       (local.get $153)
       (local.get $154)
      )
     )
     (block $label$20
      (block $label$21
       (br_if $label$21
        (i32.eqz
         (local.get $155)
        )
       )
       (local.set $156
        (i32.load offset=148
         (local.get $4)
        )
       )
       (local.set $157
        (i32.const 33)
       )
       (local.set $158
        (local.get $156)
       )
       (local.set $159
        (local.get $157)
       )
       (local.set $160
        (i32.gt_s
         (local.get $158)
         (local.get $159)
        )
       )
       (local.set $161
        (i32.const 1)
       )
       (local.set $162
        (i32.and
         (local.get $160)
         (local.get $161)
        )
       )
       (block $label$22
        (block $label$23
         (br_if $label$23
          (i32.eqz
           (local.get $162)
          )
         )
         (local.set $163
          (i32.const 0)
         )
         (local.set $164
          (f64.convert_i32_s
           (local.get $163)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $164)
         )
         (br $label$22)
        )
        (local.set $165
         (f64.load offset=136
          (local.get $4)
         )
        )
        (local.set $166
         (f64.const 0.5)
        )
        (local.set $167
         (f64.mul
          (local.get $165)
          (local.get $166)
         )
        )
        (f64.store offset=88
         (local.get $4)
         (local.get $167)
        )
        (local.set $168
         (f64.load offset=88
          (local.get $4)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $168)
        )
        (local.set $169
         (f64.const 1)
        )
        (f64.store offset=104
         (local.get $4)
         (local.get $169)
        )
        (local.set $170
         (i32.const 2)
        )
        (i32.store offset=132
         (local.get $4)
         (local.get $170)
        )
        (block $label$24
         (loop $label$25
          (local.set $171
           (i32.load offset=132
            (local.get $4)
           )
          )
          (local.set $172
           (i32.load offset=148
            (local.get $4)
           )
          )
          (local.set $173
           (local.get $171)
          )
          (local.set $174
           (local.get $172)
          )
          (local.set $175
           (i32.le_s
            (local.get $173)
            (local.get $174)
           )
          )
          (local.set $176
           (i32.const 1)
          )
          (local.set $177
           (i32.and
            (local.get $175)
            (local.get $176)
           )
          )
          (br_if $label$24
           (i32.eqz
            (local.get $177)
           )
          )
          (local.set $178
           (i32.load offset=132
            (local.get $4)
           )
          )
          (local.set $179
           (f64.convert_i32_s
            (local.get $178)
           )
          )
          (local.set $180
           (f64.load offset=104
            (local.get $4)
           )
          )
          (local.set $181
           (f64.mul
            (local.get $180)
            (local.get $179)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $181)
          )
          (local.set $182
           (f64.load offset=88
            (local.get $4)
           )
          )
          (local.set $183
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $184
           (f64.mul
            (local.get $183)
            (local.get $182)
           )
          )
          (f64.store offset=96
           (local.get $4)
           (local.get $184)
          )
          (local.set $185
           (i32.load offset=132
            (local.get $4)
           )
          )
          (local.set $186
           (i32.const 1)
          )
          (local.set $187
           (i32.add
            (local.get $185)
            (local.get $186)
           )
          )
          (i32.store offset=132
           (local.get $4)
           (local.get $187)
          )
          (br $label$25)
         )
        )
        (local.set $188
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $189
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $190
         (f64.div
          (local.get $188)
          (local.get $189)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $190)
        )
       )
       (br $label$20)
      )
      (local.set $191
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $192
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $193
       (i32.add
        (local.get $191)
        (local.get $192)
       )
      )
      (local.set $194
       (f64.convert_i32_s
        (local.get $193)
       )
      )
      (local.set $195
       (f64.load offset=136
        (local.get $4)
       )
      )
      (local.set $196
       (f64.div
        (local.get $194)
        (local.get $195)
       )
      )
      (f64.store offset=64
       (local.get $4)
       (local.get $196)
      )
      (local.set $197
       (f64.load offset=136
        (local.get $4)
       )
      )
      (local.set $198
       (f64.const 2)
      )
      (local.set $199
       (f64.div
        (local.get $198)
        (local.get $197)
       )
      )
      (f64.store offset=16
       (local.get $4)
       (local.get $199)
      )
      (local.set $200
       (f64.load offset=64
        (local.get $4)
       )
      )
      (f64.store offset=32
       (local.get $4)
       (local.get $200)
      )
      (local.set $201
       (f64.load offset=64
        (local.get $4)
       )
      )
      (local.set $202
       (f64.load offset=16
        (local.get $4)
       )
      )
      (local.set $203
       (f64.add
        (local.get $201)
        (local.get $202)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $203)
      )
      (local.set $204
       (f64.load offset=64
        (local.get $4)
       )
      )
      (local.set $205
       (f64.load offset=72
        (local.get $4)
       )
      )
      (local.set $206
       (f64.mul
        (local.get $204)
        (local.get $205)
       )
      )
      (local.set $207
       (f64.const -1)
      )
      (local.set $208
       (f64.add
        (local.get $206)
        (local.get $207)
       )
      )
      (f64.store offset=24
       (local.get $4)
       (local.get $208)
      )
      (local.set $209
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $4)
       (local.get $209)
      )
      (block $label$26
       (loop $label$27
        (local.set $210
         (f64.load offset=24
          (local.get $4)
         )
        )
        (local.set $211
         (f64.const 1e9)
        )
        (local.set $212
         (f64.lt
          (local.get $210)
          (local.get $211)
         )
        )
        (local.set $213
         (i32.const 1)
        )
        (local.set $214
         (i32.and
          (local.get $212)
          (local.get $213)
         )
        )
        (br_if $label$26
         (i32.eqz
          (local.get $214)
         )
        )
        (local.set $215
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.set $216
         (i32.const 1)
        )
        (local.set $217
         (i32.add
          (local.get $215)
          (local.get $216)
         )
        )
        (i32.store offset=4
         (local.get $4)
         (local.get $217)
        )
        (local.set $218
         (f64.load offset=16
          (local.get $4)
         )
        )
        (local.set $219
         (f64.load offset=72
          (local.get $4)
         )
        )
        (local.set $220
         (f64.add
          (local.get $219)
          (local.get $218)
         )
        )
        (f64.store offset=72
         (local.get $4)
         (local.get $220)
        )
        (local.set $221
         (f64.load offset=72
          (local.get $4)
         )
        )
        (local.set $222
         (f64.load offset=24
          (local.get $4)
         )
        )
        (local.set $223
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $224
         (f64.neg
          (local.get $223)
         )
        )
        (local.set $225
         (f64.mul
          (local.get $221)
          (local.get $222)
         )
        )
        (local.set $226
         (f64.add
          (local.get $225)
          (local.get $224)
         )
        )
        (f64.store offset=8
         (local.get $4)
         (local.get $226)
        )
        (local.set $227
         (f64.load offset=24
          (local.get $4)
         )
        )
        (f64.store offset=32
         (local.get $4)
         (local.get $227)
        )
        (local.set $228
         (f64.load offset=8
          (local.get $4)
         )
        )
        (f64.store offset=24
         (local.get $4)
         (local.get $228)
        )
        (br $label$27)
       )
      )
      (local.set $229
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $230
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $231
       (i32.add
        (local.get $229)
        (local.get $230)
       )
      )
      (i32.store
       (local.get $4)
       (local.get $231)
      )
      (local.set $232
       (i32.const 0)
      )
      (local.set $233
       (f64.convert_i32_s
        (local.get $232)
       )
      )
      (f64.store offset=48
       (local.get $4)
       (local.get $233)
      )
      (local.set $234
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $235
       (i32.load offset=4
        (local.get $4)
       )
      )
      (local.set $236
       (i32.add
        (local.get $234)
        (local.get $235)
       )
      )
      (local.set $237
       (i32.const 1)
      )
      (local.set $238
       (i32.shl
        (local.get $236)
        (local.get $237)
       )
      )
      (i32.store offset=132
       (local.get $4)
       (local.get $238)
      )
      (block $label$28
       (loop $label$29
        (local.set $239
         (i32.load offset=132
          (local.get $4)
         )
        )
        (local.set $240
         (i32.load
          (local.get $4)
         )
        )
        (local.set $241
         (local.get $239)
        )
        (local.set $242
         (local.get $240)
        )
        (local.set $243
         (i32.ge_s
          (local.get $241)
          (local.get $242)
         )
        )
        (local.set $244
         (i32.const 1)
        )
        (local.set $245
         (i32.and
          (local.get $243)
          (local.get $244)
         )
        )
        (br_if $label$28
         (i32.eqz
          (local.get $245)
         )
        )
        (local.set $246
         (i32.load offset=132
          (local.get $4)
         )
        )
        (local.set $247
         (f64.convert_i32_s
          (local.get $246)
         )
        )
        (local.set $248
         (f64.load offset=136
          (local.get $4)
         )
        )
        (local.set $249
         (f64.div
          (local.get $247)
          (local.get $248)
         )
        )
        (local.set $250
         (f64.load offset=48
          (local.get $4)
         )
        )
        (local.set $251
         (f64.sub
          (local.get $249)
          (local.get $250)
         )
        )
        (local.set $252
         (f64.const 1)
        )
        (local.set $253
         (f64.div
          (local.get $252)
          (local.get $251)
         )
        )
        (f64.store offset=48
         (local.get $4)
         (local.get $253)
        )
        (local.set $254
         (i32.load offset=132
          (local.get $4)
         )
        )
        (local.set $255
         (i32.const 2)
        )
        (local.set $256
         (i32.sub
          (local.get $254)
          (local.get $255)
         )
        )
        (i32.store offset=132
         (local.get $4)
         (local.get $256)
        )
        (br $label$29)
       )
      )
      (local.set $257
       (f64.load offset=48
        (local.get $4)
       )
      )
      (f64.store offset=104
       (local.get $4)
       (local.get $257)
      )
      (local.set $258
       (f64.const 1)
      )
      (f64.store offset=96
       (local.get $4)
       (local.get $258)
      )
      (local.set $259
       (i32.load offset=148
        (local.get $4)
       )
      )
      (local.set $260
       (f64.convert_i32_s
        (local.get $259)
       )
      )
      (f64.store offset=8
       (local.get $4)
       (local.get $260)
      )
      (local.set $261
       (f64.load offset=136
        (local.get $4)
       )
      )
      (local.set $262
       (f64.const 2)
      )
      (local.set $263
       (f64.div
        (local.get $262)
        (local.get $261)
       )
      )
      (f64.store offset=40
       (local.get $4)
       (local.get $263)
      )
      (local.set $264
       (f64.load offset=8
        (local.get $4)
       )
      )
      (local.set $265
       (f64.load offset=40
        (local.get $4)
       )
      )
      (local.set $266
       (f64.load offset=8
        (local.get $4)
       )
      )
      (local.set $267
       (f64.mul
        (local.get $265)
        (local.get $266)
       )
      )
      (local.set $268
       (call $fabs
        (local.get $267)
       )
      )
      (local.set $269
       (call $log
        (local.get $268)
       )
      )
      (local.set $270
       (f64.mul
        (local.get $264)
        (local.get $269)
       )
      )
      (f64.store offset=8
       (local.get $4)
       (local.get $270)
      )
      (local.set $271
       (f64.load offset=8
        (local.get $4)
       )
      )
      (local.set $272
       (f64.const 709.782712893384)
      )
      (local.set $273
       (f64.lt
        (local.get $271)
        (local.get $272)
       )
      )
      (local.set $274
       (i32.const 1)
      )
      (local.set $275
       (i32.and
        (local.get $273)
        (local.get $274)
       )
      )
      (block $label$30
       (block $label$31
        (br_if $label$31
         (i32.eqz
          (local.get $275)
         )
        )
        (local.set $276
         (i32.load offset=148
          (local.get $4)
         )
        )
        (local.set $277
         (i32.const 1)
        )
        (local.set $278
         (i32.sub
          (local.get $276)
          (local.get $277)
         )
        )
        (i32.store offset=132
         (local.get $4)
         (local.get $278)
        )
        (local.set $279
         (i32.load offset=132
          (local.get $4)
         )
        )
        (local.set $280
         (i32.load offset=132
          (local.get $4)
         )
        )
        (local.set $281
         (i32.add
          (local.get $279)
          (local.get $280)
         )
        )
        (local.set $282
         (f64.convert_i32_s
          (local.get $281)
         )
        )
        (f64.store offset=80
         (local.get $4)
         (local.get $282)
        )
        (block $label$32
         (loop $label$33
          (local.set $283
           (i32.load offset=132
            (local.get $4)
           )
          )
          (local.set $284
           (i32.const 0)
          )
          (local.set $285
           (local.get $283)
          )
          (local.set $286
           (local.get $284)
          )
          (local.set $287
           (i32.gt_s
            (local.get $285)
            (local.get $286)
           )
          )
          (local.set $288
           (i32.const 1)
          )
          (local.set $289
           (i32.and
            (local.get $287)
            (local.get $288)
           )
          )
          (br_if $label$32
           (i32.eqz
            (local.get $289)
           )
          )
          (local.set $290
           (f64.load offset=96
            (local.get $4)
           )
          )
          (f64.store offset=88
           (local.get $4)
           (local.get $290)
          )
          (local.set $291
           (f64.load offset=80
            (local.get $4)
           )
          )
          (local.set $292
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $293
           (f64.mul
            (local.get $292)
            (local.get $291)
           )
          )
          (f64.store offset=96
           (local.get $4)
           (local.get $293)
          )
          (local.set $294
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $295
           (f64.load offset=136
            (local.get $4)
           )
          )
          (local.set $296
           (f64.div
            (local.get $294)
            (local.get $295)
           )
          )
          (local.set $297
           (f64.load offset=104
            (local.get $4)
           )
          )
          (local.set $298
           (f64.sub
            (local.get $296)
            (local.get $297)
           )
          )
          (f64.store offset=96
           (local.get $4)
           (local.get $298)
          )
          (local.set $299
           (f64.load offset=88
            (local.get $4)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $299)
          )
          (local.set $300
           (f64.load offset=80
            (local.get $4)
           )
          )
          (local.set $301
           (f64.const 2)
          )
          (local.set $302
           (f64.sub
            (local.get $300)
            (local.get $301)
           )
          )
          (f64.store offset=80
           (local.get $4)
           (local.get $302)
          )
          (local.set $303
           (i32.load offset=132
            (local.get $4)
           )
          )
          (local.set $304
           (i32.const -1)
          )
          (local.set $305
           (i32.add
            (local.get $303)
            (local.get $304)
           )
          )
          (i32.store offset=132
           (local.get $4)
           (local.get $305)
          )
          (br $label$33)
         )
        )
        (br $label$30)
       )
       (local.set $306
        (i32.load offset=148
         (local.get $4)
        )
       )
       (local.set $307
        (i32.const 1)
       )
       (local.set $308
        (i32.sub
         (local.get $306)
         (local.get $307)
        )
       )
       (i32.store offset=132
        (local.get $4)
        (local.get $308)
       )
       (local.set $309
        (i32.load offset=132
         (local.get $4)
        )
       )
       (local.set $310
        (i32.load offset=132
         (local.get $4)
        )
       )
       (local.set $311
        (i32.add
         (local.get $309)
         (local.get $310)
        )
       )
       (local.set $312
        (f64.convert_i32_s
         (local.get $311)
        )
       )
       (f64.store offset=80
        (local.get $4)
        (local.get $312)
       )
       (block $label$34
        (loop $label$35
         (local.set $313
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $314
          (i32.const 0)
         )
         (local.set $315
          (local.get $313)
         )
         (local.set $316
          (local.get $314)
         )
         (local.set $317
          (i32.gt_s
           (local.get $315)
           (local.get $316)
          )
         )
         (local.set $318
          (i32.const 1)
         )
         (local.set $319
          (i32.and
           (local.get $317)
           (local.get $318)
          )
         )
         (br_if $label$34
          (i32.eqz
           (local.get $319)
          )
         )
         (local.set $320
          (f64.load offset=96
           (local.get $4)
          )
         )
         (f64.store offset=88
          (local.get $4)
          (local.get $320)
         )
         (local.set $321
          (f64.load offset=80
           (local.get $4)
          )
         )
         (local.set $322
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $323
          (f64.mul
           (local.get $322)
           (local.get $321)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $323)
         )
         (local.set $324
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $325
          (f64.load offset=136
           (local.get $4)
          )
         )
         (local.set $326
          (f64.div
           (local.get $324)
           (local.get $325)
          )
         )
         (local.set $327
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $328
          (f64.sub
           (local.get $326)
           (local.get $327)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $328)
         )
         (local.set $329
          (f64.load offset=88
           (local.get $4)
          )
         )
         (f64.store offset=104
          (local.get $4)
          (local.get $329)
         )
         (local.set $330
          (f64.load offset=80
           (local.get $4)
          )
         )
         (local.set $331
          (f64.const 2)
         )
         (local.set $332
          (f64.sub
           (local.get $330)
           (local.get $331)
          )
         )
         (f64.store offset=80
          (local.get $4)
          (local.get $332)
         )
         (local.set $333
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $334
          (f64.const 1.e+100)
         )
         (local.set $335
          (f64.gt
           (local.get $333)
           (local.get $334)
          )
         )
         (local.set $336
          (i32.const 1)
         )
         (local.set $337
          (i32.and
           (local.get $335)
           (local.get $336)
          )
         )
         (block $label$36
          (br_if $label$36
           (i32.eqz
            (local.get $337)
           )
          )
          (local.set $338
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $339
           (f64.load offset=104
            (local.get $4)
           )
          )
          (local.set $340
           (f64.div
            (local.get $339)
            (local.get $338)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $340)
          )
          (local.set $341
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $342
           (f64.load offset=48
            (local.get $4)
           )
          )
          (local.set $343
           (f64.div
            (local.get $342)
            (local.get $341)
           )
          )
          (f64.store offset=48
           (local.get $4)
           (local.get $343)
          )
          (local.set $344
           (f64.const 1)
          )
          (f64.store offset=96
           (local.get $4)
           (local.get $344)
          )
         )
         (local.set $345
          (i32.load offset=132
           (local.get $4)
          )
         )
         (local.set $346
          (i32.const -1)
         )
         (local.set $347
          (i32.add
           (local.get $345)
           (local.get $346)
          )
         )
         (i32.store offset=132
          (local.get $4)
          (local.get $347)
         )
         (br $label$35)
        )
       )
      )
      (local.set $348
       (f64.load offset=136
        (local.get $4)
       )
      )
      (local.set $349
       (call $j0
        (local.get $348)
       )
      )
      (f64.store offset=72
       (local.get $4)
       (local.get $349)
      )
      (local.set $350
       (f64.load offset=136
        (local.get $4)
       )
      )
      (local.set $351
       (call $j1
        (local.get $350)
       )
      )
      (f64.store offset=64
       (local.get $4)
       (local.get $351)
      )
      (local.set $352
       (f64.load offset=72
        (local.get $4)
       )
      )
      (local.set $353
       (call $fabs
        (local.get $352)
       )
      )
      (local.set $354
       (f64.load offset=64
        (local.get $4)
       )
      )
      (local.set $355
       (call $fabs
        (local.get $354)
       )
      )
      (local.set $356
       (f64.ge
        (local.get $353)
        (local.get $355)
       )
      )
      (local.set $357
       (i32.const 1)
      )
      (local.set $358
       (i32.and
        (local.get $356)
        (local.get $357)
       )
      )
      (block $label$37
       (block $label$38
        (br_if $label$38
         (i32.eqz
          (local.get $358)
         )
        )
        (local.set $359
         (f64.load offset=48
          (local.get $4)
         )
        )
        (local.set $360
         (f64.load offset=72
          (local.get $4)
         )
        )
        (local.set $361
         (f64.mul
          (local.get $359)
          (local.get $360)
         )
        )
        (local.set $362
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $363
         (f64.div
          (local.get $361)
          (local.get $362)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $363)
        )
        (br $label$37)
       )
       (local.set $364
        (f64.load offset=48
         (local.get $4)
        )
       )
       (local.set $365
        (f64.load offset=64
         (local.get $4)
        )
       )
       (local.set $366
        (f64.mul
         (local.get $364)
         (local.get $365)
        )
       )
       (local.set $367
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $368
        (f64.div
         (local.get $366)
         (local.get $367)
        )
       )
       (f64.store offset=96
        (local.get $4)
        (local.get $368)
       )
      )
     )
    )
   )
   (local.set $369
    (i32.load offset=116
     (local.get $4)
    )
   )
   (local.set $370
    (i32.const 1)
   )
   (local.set $371
    (local.get $369)
   )
   (local.set $372
    (local.get $370)
   )
   (local.set $373
    (i32.eq
     (local.get $371)
     (local.get $372)
    )
   )
   (local.set $374
    (i32.const 1)
   )
   (local.set $375
    (i32.and
     (local.get $373)
     (local.get $374)
    )
   )
   (block $label$39
    (br_if $label$39
     (i32.eqz
      (local.get $375)
     )
    )
    (local.set $376
     (f64.load offset=96
      (local.get $4)
     )
    )
    (local.set $377
     (f64.neg
      (local.get $376)
     )
    )
    (f64.store offset=152
     (local.get $4)
     (local.get $377)
    )
    (br $label$1)
   )
   (local.set $378
    (f64.load offset=96
     (local.get $4)
    )
   )
   (f64.store offset=152
    (local.get $4)
    (local.get $378)
   )
  )
  (local.set $379
   (f64.load offset=152
    (local.get $4)
   )
  )
  (local.set $380
   (i32.const 160)
  )
  (local.set $381
   (i32.add
    (local.get $4)
    (local.get $380)
   )
  )
  (global.set $__stack_pointer
   (local.get $381)
  )
  (return
   (local.get $379)
  )
 )
 (func $yn (param $0 i32) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 f64)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 f64)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 f64)
  (local $61 f64)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 f64)
  (local $71 f64)
  (local $72 f64)
  (local $73 f64)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 f64)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 f64)
  (local $94 f64)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 f64)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 f64)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 f64)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 f64)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 f64)
  (local $150 f64)
  (local $151 f64)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 f64)
  (local $157 f64)
  (local $158 i32)
  (local $159 f64)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 i32)
  (local $175 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 112)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (i32.store offset=100
   (local.get $4)
   (local.get $0)
  )
  (f64.store offset=88
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=88
    (local.get $4)
   )
  )
  (f64.store offset=32
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=36
    (local.get $4)
   )
  )
  (i32.store offset=80
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=32
    (local.get $4)
   )
  )
  (i32.store offset=72
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=80
    (local.get $4)
   )
  )
  (local.set $9
   (i32.const 2147483647)
  )
  (local.set $10
   (i32.and
    (local.get $8)
    (local.get $9)
   )
  )
  (i32.store offset=76
   (local.get $4)
   (local.get $10)
  )
  (local.set $11
   (i32.load offset=76
    (local.get $4)
   )
  )
  (local.set $12
   (i32.load offset=72
    (local.get $4)
   )
  )
  (local.set $13
   (i32.load offset=72
    (local.get $4)
   )
  )
  (local.set $14
   (i32.const 0)
  )
  (local.set $15
   (i32.sub
    (local.get $14)
    (local.get $13)
   )
  )
  (local.set $16
   (i32.or
    (local.get $12)
    (local.get $15)
   )
  )
  (local.set $17
   (i32.const 31)
  )
  (local.set $18
   (i32.shr_u
    (local.get $16)
    (local.get $17)
   )
  )
  (local.set $19
   (i32.or
    (local.get $11)
    (local.get $18)
   )
  )
  (local.set $20
   (i32.const 2146435072)
  )
  (local.set $21
   (local.get $19)
  )
  (local.set $22
   (local.get $20)
  )
  (local.set $23
   (i32.gt_u
    (local.get $21)
    (local.get $22)
   )
  )
  (local.set $24
   (i32.const 1)
  )
  (local.set $25
   (i32.and
    (local.get $23)
    (local.get $24)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $25)
     )
    )
    (local.set $26
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $27
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $28
     (f64.add
      (local.get $26)
      (local.get $27)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $28)
    )
    (br $label$1)
   )
   (local.set $29
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $30
    (i32.load offset=72
     (local.get $4)
    )
   )
   (local.set $31
    (i32.or
     (local.get $29)
     (local.get $30)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $31)
    )
    (local.set $32
     (f64.const -inf)
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $32)
    )
    (br $label$1)
   )
   (local.set $33
    (i32.load offset=80
     (local.get $4)
    )
   )
   (local.set $34
    (i32.const 0)
   )
   (local.set $35
    (local.get $33)
   )
   (local.set $36
    (local.get $34)
   )
   (local.set $37
    (i32.lt_s
     (local.get $35)
     (local.get $36)
    )
   )
   (local.set $38
    (i32.const 1)
   )
   (local.set $39
    (i32.and
     (local.get $37)
     (local.get $38)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $39)
     )
    )
    (local.set $40
     (f64.const nan:0x8000000000000)
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $40)
    )
    (br $label$1)
   )
   (local.set $41
    (i32.const 1)
   )
   (i32.store offset=68
    (local.get $4)
    (local.get $41)
   )
   (local.set $42
    (i32.load offset=100
     (local.get $4)
    )
   )
   (local.set $43
    (i32.const 0)
   )
   (local.set $44
    (local.get $42)
   )
   (local.set $45
    (local.get $43)
   )
   (local.set $46
    (i32.lt_s
     (local.get $44)
     (local.get $45)
    )
   )
   (local.set $47
    (i32.const 1)
   )
   (local.set $48
    (i32.and
     (local.get $46)
     (local.get $47)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $48)
     )
    )
    (local.set $49
     (i32.load offset=100
      (local.get $4)
     )
    )
    (local.set $50
     (i32.const 0)
    )
    (local.set $51
     (i32.sub
      (local.get $50)
      (local.get $49)
     )
    )
    (i32.store offset=100
     (local.get $4)
     (local.get $51)
    )
    (local.set $52
     (i32.load offset=100
      (local.get $4)
     )
    )
    (local.set $53
     (i32.const 1)
    )
    (local.set $54
     (i32.and
      (local.get $52)
      (local.get $53)
     )
    )
    (local.set $55
     (i32.const 1)
    )
    (local.set $56
     (i32.shl
      (local.get $54)
      (local.get $55)
     )
    )
    (local.set $57
     (i32.const 1)
    )
    (local.set $58
     (i32.sub
      (local.get $57)
      (local.get $56)
     )
    )
    (i32.store offset=68
     (local.get $4)
     (local.get $58)
    )
   )
   (local.set $59
    (i32.load offset=100
     (local.get $4)
    )
   )
   (block $label$6
    (br_if $label$6
     (local.get $59)
    )
    (local.set $60
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $61
     (call $y0
      (local.get $60)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $61)
    )
    (br $label$1)
   )
   (local.set $62
    (i32.load offset=100
     (local.get $4)
    )
   )
   (local.set $63
    (i32.const 1)
   )
   (local.set $64
    (local.get $62)
   )
   (local.set $65
    (local.get $63)
   )
   (local.set $66
    (i32.eq
     (local.get $64)
     (local.get $65)
    )
   )
   (local.set $67
    (i32.const 1)
   )
   (local.set $68
    (i32.and
     (local.get $66)
     (local.get $67)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $68)
     )
    )
    (local.set $69
     (i32.load offset=68
      (local.get $4)
     )
    )
    (local.set $70
     (f64.convert_i32_s
      (local.get $69)
     )
    )
    (local.set $71
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $72
     (call $y1
      (local.get $71)
     )
    )
    (local.set $73
     (f64.mul
      (local.get $70)
      (local.get $72)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $73)
    )
    (br $label$1)
   )
   (local.set $74
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $75
    (i32.const 2146435072)
   )
   (local.set $76
    (local.get $74)
   )
   (local.set $77
    (local.get $75)
   )
   (local.set $78
    (i32.eq
     (local.get $76)
     (local.get $77)
    )
   )
   (local.set $79
    (i32.const 1)
   )
   (local.set $80
    (i32.and
     (local.get $78)
     (local.get $79)
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eqz
      (local.get $80)
     )
    )
    (local.set $81
     (i32.const 0)
    )
    (local.set $82
     (f64.convert_i32_s
      (local.get $81)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $82)
    )
    (br $label$1)
   )
   (local.set $83
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $84
    (i32.const 1389363200)
   )
   (local.set $85
    (local.get $83)
   )
   (local.set $86
    (local.get $84)
   )
   (local.set $87
    (i32.ge_s
     (local.get $85)
     (local.get $86)
    )
   )
   (local.set $88
    (i32.const 1)
   )
   (local.set $89
    (i32.and
     (local.get $87)
     (local.get $88)
    )
   )
   (block $label$9
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $89)
      )
     )
     (local.set $90
      (i32.load offset=100
       (local.get $4)
      )
     )
     (local.set $91
      (i32.const 3)
     )
     (local.set $92
      (i32.and
       (local.get $90)
       (local.get $91)
      )
     )
     (drop
      (i32.gt_u
       (local.get $92)
       (local.get $91)
      )
     )
     (block $label$11
      (block $label$12
       (block $label$13
        (block $label$14
         (block $label$15
          (br_table $label$15 $label$14 $label$13 $label$12 $label$11
           (local.get $92)
          )
         )
         (local.set $93
          (f64.load offset=88
           (local.get $4)
          )
         )
         (local.set $94
          (call $sin
           (local.get $93)
          )
         )
         (local.set $95
          (f64.load offset=88
           (local.get $4)
          )
         )
         (local.set $96
          (call $cos
           (local.get $95)
          )
         )
         (local.set $97
          (f64.sub
           (local.get $94)
           (local.get $96)
          )
         )
         (f64.store offset=40
          (local.get $4)
          (local.get $97)
         )
         (br $label$11)
        )
        (local.set $98
         (f64.load offset=88
          (local.get $4)
         )
        )
        (local.set $99
         (call $sin
          (local.get $98)
         )
        )
        (local.set $100
         (f64.neg
          (local.get $99)
         )
        )
        (local.set $101
         (f64.load offset=88
          (local.get $4)
         )
        )
        (local.set $102
         (call $cos
          (local.get $101)
         )
        )
        (local.set $103
         (f64.sub
          (local.get $100)
          (local.get $102)
         )
        )
        (f64.store offset=40
         (local.get $4)
         (local.get $103)
        )
        (br $label$11)
       )
       (local.set $104
        (f64.load offset=88
         (local.get $4)
        )
       )
       (local.set $105
        (call $sin
         (local.get $104)
        )
       )
       (local.set $106
        (f64.neg
         (local.get $105)
        )
       )
       (local.set $107
        (f64.load offset=88
         (local.get $4)
        )
       )
       (local.set $108
        (call $cos
         (local.get $107)
        )
       )
       (local.set $109
        (f64.add
         (local.get $106)
         (local.get $108)
        )
       )
       (f64.store offset=40
        (local.get $4)
        (local.get $109)
       )
       (br $label$11)
      )
      (local.set $110
       (f64.load offset=88
        (local.get $4)
       )
      )
      (local.set $111
       (call $sin
        (local.get $110)
       )
      )
      (local.set $112
       (f64.load offset=88
        (local.get $4)
       )
      )
      (local.set $113
       (call $cos
        (local.get $112)
       )
      )
      (local.set $114
       (f64.add
        (local.get $111)
        (local.get $113)
       )
      )
      (f64.store offset=40
       (local.get $4)
       (local.get $114)
      )
     )
     (local.set $115
      (f64.load offset=40
       (local.get $4)
      )
     )
     (local.set $116
      (f64.const 0.5641895835477563)
     )
     (local.set $117
      (f64.mul
       (local.get $116)
       (local.get $115)
      )
     )
     (local.set $118
      (f64.load offset=88
       (local.get $4)
      )
     )
     (local.set $119
      (call $sqrt
       (local.get $118)
      )
     )
     (local.set $120
      (f64.div
       (local.get $117)
       (local.get $119)
      )
     )
     (f64.store offset=48
      (local.get $4)
      (local.get $120)
     )
     (br $label$9)
    )
    (local.set $121
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $122
     (call $y0
      (local.get $121)
     )
    )
    (f64.store offset=56
     (local.get $4)
     (local.get $122)
    )
    (local.set $123
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $124
     (call $y1
      (local.get $123)
     )
    )
    (f64.store offset=48
     (local.get $4)
     (local.get $124)
    )
    (local.set $125
     (f64.load offset=48
      (local.get $4)
     )
    )
    (f64.store offset=16
     (local.get $4)
     (local.get $125)
    )
    (local.set $126
     (i32.load offset=20
      (local.get $4)
     )
    )
    (i32.store offset=28
     (local.get $4)
     (local.get $126)
    )
    (local.set $127
     (i32.const 1)
    )
    (i32.store offset=84
     (local.get $4)
     (local.get $127)
    )
    (loop $label$16
     (local.set $128
      (i32.load offset=84
       (local.get $4)
      )
     )
     (local.set $129
      (i32.load offset=100
       (local.get $4)
      )
     )
     (local.set $130
      (local.get $128)
     )
     (local.set $131
      (local.get $129)
     )
     (local.set $132
      (i32.lt_s
       (local.get $130)
       (local.get $131)
      )
     )
     (local.set $133
      (i32.const 0)
     )
     (local.set $134
      (i32.const 1)
     )
     (local.set $135
      (i32.and
       (local.get $132)
       (local.get $134)
      )
     )
     (local.set $136
      (local.get $133)
     )
     (block $label$17
      (br_if $label$17
       (i32.eqz
        (local.get $135)
       )
      )
      (local.set $137
       (i32.load offset=28
        (local.get $4)
       )
      )
      (local.set $138
       (i32.const -1048576)
      )
      (local.set $139
       (local.get $137)
      )
      (local.set $140
       (local.get $138)
      )
      (local.set $141
       (i32.ne
        (local.get $139)
        (local.get $140)
       )
      )
      (local.set $136
       (local.get $141)
      )
     )
     (local.set $142
      (local.get $136)
     )
     (local.set $143
      (i32.const 1)
     )
     (local.set $144
      (i32.and
       (local.get $142)
       (local.get $143)
      )
     )
     (block $label$18
      (br_if $label$18
       (i32.eqz
        (local.get $144)
       )
      )
      (local.set $145
       (f64.load offset=48
        (local.get $4)
       )
      )
      (f64.store offset=40
       (local.get $4)
       (local.get $145)
      )
      (local.set $146
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $147
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $148
       (i32.add
        (local.get $146)
        (local.get $147)
       )
      )
      (local.set $149
       (f64.convert_i32_s
        (local.get $148)
       )
      )
      (local.set $150
       (f64.load offset=88
        (local.get $4)
       )
      )
      (local.set $151
       (f64.div
        (local.get $149)
        (local.get $150)
       )
      )
      (local.set $152
       (f64.load offset=48
        (local.get $4)
       )
      )
      (local.set $153
       (f64.load offset=56
        (local.get $4)
       )
      )
      (local.set $154
       (f64.neg
        (local.get $153)
       )
      )
      (local.set $155
       (f64.mul
        (local.get $151)
        (local.get $152)
       )
      )
      (local.set $156
       (f64.add
        (local.get $155)
        (local.get $154)
       )
      )
      (f64.store offset=48
       (local.get $4)
       (local.get $156)
      )
      (local.set $157
       (f64.load offset=48
        (local.get $4)
       )
      )
      (f64.store offset=8
       (local.get $4)
       (local.get $157)
      )
      (local.set $158
       (i32.load offset=12
        (local.get $4)
       )
      )
      (i32.store offset=28
       (local.get $4)
       (local.get $158)
      )
      (local.set $159
       (f64.load offset=40
        (local.get $4)
       )
      )
      (f64.store offset=56
       (local.get $4)
       (local.get $159)
      )
      (local.set $160
       (i32.load offset=84
        (local.get $4)
       )
      )
      (local.set $161
       (i32.const 1)
      )
      (local.set $162
       (i32.add
        (local.get $160)
        (local.get $161)
       )
      )
      (i32.store offset=84
       (local.get $4)
       (local.get $162)
      )
      (br $label$16)
     )
    )
   )
   (local.set $163
    (i32.load offset=68
     (local.get $4)
    )
   )
   (local.set $164
    (i32.const 0)
   )
   (local.set $165
    (local.get $163)
   )
   (local.set $166
    (local.get $164)
   )
   (local.set $167
    (i32.gt_s
     (local.get $165)
     (local.get $166)
    )
   )
   (local.set $168
    (i32.const 1)
   )
   (local.set $169
    (i32.and
     (local.get $167)
     (local.get $168)
    )
   )
   (block $label$19
    (br_if $label$19
     (i32.eqz
      (local.get $169)
     )
    )
    (local.set $170
     (f64.load offset=48
      (local.get $4)
     )
    )
    (f64.store offset=104
     (local.get $4)
     (local.get $170)
    )
    (br $label$1)
   )
   (local.set $171
    (f64.load offset=48
     (local.get $4)
    )
   )
   (local.set $172
    (f64.neg
     (local.get $171)
    )
   )
   (f64.store offset=104
    (local.get $4)
    (local.get $172)
   )
  )
  (local.set $173
   (f64.load offset=104
    (local.get $4)
   )
  )
  (local.set $174
   (i32.const 112)
  )
  (local.set $175
   (i32.add
    (local.get $4)
    (local.get $174)
   )
  )
  (global.set $__stack_pointer
   (local.get $175)
  )
  (return
   (local.get $173)
  )
 )
 (func $jnf (param $0 i32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 f32)
  (local $31 f32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 f32)
  (local $37 f32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 f32)
  (local $46 f32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 f32)
  (local $55 f32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 f32)
  (local $66 i32)
  (local $67 f32)
  (local $68 f32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 f32)
  (local $85 f32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f32)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 f32)
  (local $116 f32)
  (local $117 f32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 f32)
  (local $131 f32)
  (local $132 f32)
  (local $133 f32)
  (local $134 f32)
  (local $135 f32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 f32)
  (local $146 f32)
  (local $147 f32)
  (local $148 f32)
  (local $149 f32)
  (local $150 f32)
  (local $151 f32)
  (local $152 f32)
  (local $153 f32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 f32)
  (local $158 f32)
  (local $159 f32)
  (local $160 i32)
  (local $161 f32)
  (local $162 f32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 f32)
  (local $173 f32)
  (local $174 f32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 f32)
  (local $185 i32)
  (local $186 i32)
  (local $187 i32)
  (local $188 i32)
  (local $189 i32)
  (local $190 i32)
  (local $191 i32)
  (local $192 i32)
  (local $193 i32)
  (local $194 i32)
  (local $195 i32)
  (local $196 i32)
  (local $197 i32)
  (local $198 f32)
  (local $199 f32)
  (local $200 f32)
  (local $201 f32)
  (local $202 f32)
  (local $203 f32)
  (local $204 f32)
  (local $205 i32)
  (local $206 i32)
  (local $207 i32)
  (local $208 f32)
  (local $209 f32)
  (local $210 i32)
  (local $211 f32)
  (local $212 f32)
  (local $213 f32)
  (local $214 f32)
  (local $215 f32)
  (local $216 f32)
  (local $217 f32)
  (local $218 f32)
  (local $219 f32)
  (local $220 f32)
  (local $221 f32)
  (local $222 f32)
  (local $223 f32)
  (local $224 i32)
  (local $225 i32)
  (local $226 i32)
  (local $227 i32)
  (local $228 i32)
  (local $229 i32)
  (local $230 i32)
  (local $231 i32)
  (local $232 i32)
  (local $233 f32)
  (local $234 i32)
  (local $235 i32)
  (local $236 i32)
  (local $237 i32)
  (local $238 i32)
  (local $239 i32)
  (local $240 i32)
  (local $241 f32)
  (local $242 f32)
  (local $243 f32)
  (local $244 f32)
  (local $245 f32)
  (local $246 f32)
  (local $247 f32)
  (local $248 f32)
  (local $249 f32)
  (local $250 f32)
  (local $251 f32)
  (local $252 f32)
  (local $253 f32)
  (local $254 i32)
  (local $255 i32)
  (local $256 i32)
  (local $257 i32)
  (local $258 i32)
  (local $259 i32)
  (local $260 i32)
  (local $261 i32)
  (local $262 i32)
  (local $263 f32)
  (local $264 i32)
  (local $265 i32)
  (local $266 i32)
  (local $267 i32)
  (local $268 i32)
  (local $269 i32)
  (local $270 i32)
  (local $271 f32)
  (local $272 f32)
  (local $273 f32)
  (local $274 f32)
  (local $275 f32)
  (local $276 f32)
  (local $277 f32)
  (local $278 f32)
  (local $279 f32)
  (local $280 f32)
  (local $281 f32)
  (local $282 f32)
  (local $283 f32)
  (local $284 f32)
  (local $285 f32)
  (local $286 i32)
  (local $287 i32)
  (local $288 i32)
  (local $289 f32)
  (local $290 f32)
  (local $291 f32)
  (local $292 f32)
  (local $293 f32)
  (local $294 f32)
  (local $295 f32)
  (local $296 i32)
  (local $297 i32)
  (local $298 i32)
  (local $299 f32)
  (local $300 f32)
  (local $301 f32)
  (local $302 f32)
  (local $303 f32)
  (local $304 f32)
  (local $305 f32)
  (local $306 f32)
  (local $307 i32)
  (local $308 i32)
  (local $309 i32)
  (local $310 f32)
  (local $311 f32)
  (local $312 f32)
  (local $313 f32)
  (local $314 f32)
  (local $315 f32)
  (local $316 f32)
  (local $317 f32)
  (local $318 f32)
  (local $319 f32)
  (local $320 i32)
  (local $321 i32)
  (local $322 i32)
  (local $323 i32)
  (local $324 i32)
  (local $325 i32)
  (local $326 i32)
  (local $327 f32)
  (local $328 f32)
  (local $329 f32)
  (local $330 f32)
  (local $331 i32)
  (local $332 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 96)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (i32.store offset=88
   (local.get $4)
   (local.get $0)
  )
  (f32.store offset=84
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=84
    (local.get $4)
   )
  )
  (f32.store offset=40
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=40
    (local.get $4)
   )
  )
  (i32.store offset=76
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=76
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=72
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=72
    (local.get $4)
   )
  )
  (local.set $11
   (i32.const 2139095040)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (local.get $11)
  )
  (local.set $14
   (i32.gt_s
    (local.get $12)
    (local.get $13)
   )
  )
  (local.set $15
   (i32.const 1)
  )
  (local.set $16
   (i32.and
    (local.get $14)
    (local.get $15)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $16)
     )
    )
    (local.set $17
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $18
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $19
     (f32.add
      (local.get $17)
      (local.get $18)
     )
    )
    (f32.store offset=92
     (local.get $4)
     (local.get $19)
    )
    (br $label$1)
   )
   (local.set $20
    (i32.load offset=88
     (local.get $4)
    )
   )
   (local.set $21
    (i32.const 0)
   )
   (local.set $22
    (local.get $20)
   )
   (local.set $23
    (local.get $21)
   )
   (local.set $24
    (i32.lt_s
     (local.get $22)
     (local.get $23)
    )
   )
   (local.set $25
    (i32.const 1)
   )
   (local.set $26
    (i32.and
     (local.get $24)
     (local.get $25)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (local.get $26)
     )
    )
    (local.set $27
     (i32.load offset=88
      (local.get $4)
     )
    )
    (local.set $28
     (i32.const 0)
    )
    (local.set $29
     (i32.sub
      (local.get $28)
      (local.get $27)
     )
    )
    (i32.store offset=88
     (local.get $4)
     (local.get $29)
    )
    (local.set $30
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $31
     (f32.neg
      (local.get $30)
     )
    )
    (f32.store offset=84
     (local.get $4)
     (local.get $31)
    )
    (local.set $32
     (i32.load offset=76
      (local.get $4)
     )
    )
    (local.set $33
     (i32.const -2147483648)
    )
    (local.set $34
     (i32.xor
      (local.get $32)
      (local.get $33)
     )
    )
    (i32.store offset=76
     (local.get $4)
     (local.get $34)
    )
   )
   (local.set $35
    (i32.load offset=88
     (local.get $4)
    )
   )
   (block $label$4
    (br_if $label$4
     (local.get $35)
    )
    (local.set $36
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $37
     (call $j0f
      (local.get $36)
     )
    )
    (f32.store offset=92
     (local.get $4)
     (local.get $37)
    )
    (br $label$1)
   )
   (local.set $38
    (i32.load offset=88
     (local.get $4)
    )
   )
   (local.set $39
    (i32.const 1)
   )
   (local.set $40
    (local.get $38)
   )
   (local.set $41
    (local.get $39)
   )
   (local.set $42
    (i32.eq
     (local.get $40)
     (local.get $41)
    )
   )
   (local.set $43
    (i32.const 1)
   )
   (local.set $44
    (i32.and
     (local.get $42)
     (local.get $43)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $44)
     )
    )
    (local.set $45
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $46
     (call $j1f
      (local.get $45)
     )
    )
    (f32.store offset=92
     (local.get $4)
     (local.get $46)
    )
    (br $label$1)
   )
   (local.set $47
    (i32.load offset=88
     (local.get $4)
    )
   )
   (local.set $48
    (i32.const 1)
   )
   (local.set $49
    (i32.and
     (local.get $47)
     (local.get $48)
    )
   )
   (local.set $50
    (i32.load offset=76
     (local.get $4)
    )
   )
   (local.set $51
    (i32.const 31)
   )
   (local.set $52
    (i32.shr_s
     (local.get $50)
     (local.get $51)
    )
   )
   (local.set $53
    (i32.and
     (local.get $49)
     (local.get $52)
    )
   )
   (i32.store offset=68
    (local.get $4)
    (local.get $53)
   )
   (local.set $54
    (f32.load offset=84
     (local.get $4)
    )
   )
   (local.set $55
    (call $fabsf
     (local.get $54)
    )
   )
   (f32.store offset=84
    (local.get $4)
    (local.get $55)
   )
   (local.set $56
    (i32.load offset=72
     (local.get $4)
    )
   )
   (block $label$6
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $56)
       )
      )
      (local.set $57
       (i32.load offset=72
        (local.get $4)
       )
      )
      (local.set $58
       (i32.const 2139095040)
      )
      (local.set $59
       (local.get $57)
      )
      (local.set $60
       (local.get $58)
      )
      (local.set $61
       (i32.ge_s
        (local.get $59)
        (local.get $60)
       )
      )
      (local.set $62
       (i32.const 1)
      )
      (local.set $63
       (i32.and
        (local.get $61)
        (local.get $62)
       )
      )
      (br_if $label$7
       (i32.eqz
        (local.get $63)
       )
      )
     )
     (local.set $64
      (i32.const 0)
     )
     (local.set $65
      (f32.convert_i32_s
       (local.get $64)
      )
     )
     (f32.store offset=60
      (local.get $4)
      (local.get $65)
     )
     (br $label$6)
    )
    (local.set $66
     (i32.load offset=88
      (local.get $4)
     )
    )
    (local.set $67
     (f32.convert_i32_s
      (local.get $66)
     )
    )
    (local.set $68
     (f32.load offset=84
      (local.get $4)
     )
    )
    (local.set $69
     (f32.le
      (local.get $67)
      (local.get $68)
     )
    )
    (local.set $70
     (i32.const 1)
    )
    (local.set $71
     (i32.and
      (local.get $69)
      (local.get $70)
     )
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (local.get $71)
       )
      )
      (local.set $72
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $73
       (call $j0f
        (local.get $72)
       )
      )
      (f32.store offset=64
       (local.get $4)
       (local.get $73)
      )
      (local.set $74
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $75
       (call $j1f
        (local.get $74)
       )
      )
      (f32.store offset=60
       (local.get $4)
       (local.get $75)
      )
      (local.set $76
       (i32.const 1)
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $76)
      )
      (block $label$11
       (loop $label$12
        (local.set $77
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $78
         (i32.load offset=88
          (local.get $4)
         )
        )
        (local.set $79
         (local.get $77)
        )
        (local.set $80
         (local.get $78)
        )
        (local.set $81
         (i32.lt_s
          (local.get $79)
          (local.get $80)
         )
        )
        (local.set $82
         (i32.const 1)
        )
        (local.set $83
         (i32.and
          (local.get $81)
          (local.get $82)
         )
        )
        (br_if $label$11
         (i32.eqz
          (local.get $83)
         )
        )
        (local.set $84
         (f32.load offset=60
          (local.get $4)
         )
        )
        (f32.store offset=56
         (local.get $4)
         (local.get $84)
        )
        (local.set $85
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $86
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $87
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $88
         (i32.add
          (local.get $86)
          (local.get $87)
         )
        )
        (local.set $89
         (f32.convert_i32_s
          (local.get $88)
         )
        )
        (local.set $90
         (f32.load offset=84
          (local.get $4)
         )
        )
        (local.set $91
         (f32.div
          (local.get $89)
          (local.get $90)
         )
        )
        (local.set $92
         (f32.load offset=64
          (local.get $4)
         )
        )
        (local.set $93
         (f32.neg
          (local.get $92)
         )
        )
        (local.set $94
         (f32.mul
          (local.get $85)
          (local.get $91)
         )
        )
        (local.set $95
         (f32.add
          (local.get $94)
          (local.get $93)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $95)
        )
        (local.set $96
         (f32.load offset=56
          (local.get $4)
         )
        )
        (f32.store offset=64
         (local.get $4)
         (local.get $96)
        )
        (local.set $97
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $98
         (i32.const 1)
        )
        (local.set $99
         (i32.add
          (local.get $97)
          (local.get $98)
         )
        )
        (i32.store offset=80
         (local.get $4)
         (local.get $99)
        )
        (br $label$12)
       )
      )
      (br $label$9)
     )
     (local.set $100
      (i32.load offset=72
       (local.get $4)
      )
     )
     (local.set $101
      (i32.const 813694976)
     )
     (local.set $102
      (local.get $100)
     )
     (local.set $103
      (local.get $101)
     )
     (local.set $104
      (i32.lt_s
       (local.get $102)
       (local.get $103)
      )
     )
     (local.set $105
      (i32.const 1)
     )
     (local.set $106
      (i32.and
       (local.get $104)
       (local.get $105)
      )
     )
     (block $label$13
      (block $label$14
       (br_if $label$14
        (i32.eqz
         (local.get $106)
        )
       )
       (local.set $107
        (i32.load offset=88
         (local.get $4)
        )
       )
       (local.set $108
        (i32.const 33)
       )
       (local.set $109
        (local.get $107)
       )
       (local.set $110
        (local.get $108)
       )
       (local.set $111
        (i32.gt_s
         (local.get $109)
         (local.get $110)
        )
       )
       (local.set $112
        (i32.const 1)
       )
       (local.set $113
        (i32.and
         (local.get $111)
         (local.get $112)
        )
       )
       (block $label$15
        (block $label$16
         (br_if $label$16
          (i32.eqz
           (local.get $113)
          )
         )
         (local.set $114
          (i32.const 0)
         )
         (local.set $115
          (f32.convert_i32_s
           (local.get $114)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $115)
         )
         (br $label$15)
        )
        (local.set $116
         (f32.load offset=84
          (local.get $4)
         )
        )
        (local.set $117
         (f32.const 0.5)
        )
        (local.set $118
         (f32.mul
          (local.get $116)
          (local.get $117)
         )
        )
        (f32.store offset=56
         (local.get $4)
         (local.get $118)
        )
        (local.set $119
         (f32.load offset=56
          (local.get $4)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $119)
        )
        (local.set $120
         (f32.const 1)
        )
        (f32.store offset=64
         (local.get $4)
         (local.get $120)
        )
        (local.set $121
         (i32.const 2)
        )
        (i32.store offset=80
         (local.get $4)
         (local.get $121)
        )
        (block $label$17
         (loop $label$18
          (local.set $122
           (i32.load offset=80
            (local.get $4)
           )
          )
          (local.set $123
           (i32.load offset=88
            (local.get $4)
           )
          )
          (local.set $124
           (local.get $122)
          )
          (local.set $125
           (local.get $123)
          )
          (local.set $126
           (i32.le_s
            (local.get $124)
            (local.get $125)
           )
          )
          (local.set $127
           (i32.const 1)
          )
          (local.set $128
           (i32.and
            (local.get $126)
            (local.get $127)
           )
          )
          (br_if $label$17
           (i32.eqz
            (local.get $128)
           )
          )
          (local.set $129
           (i32.load offset=80
            (local.get $4)
           )
          )
          (local.set $130
           (f32.convert_i32_s
            (local.get $129)
           )
          )
          (local.set $131
           (f32.load offset=64
            (local.get $4)
           )
          )
          (local.set $132
           (f32.mul
            (local.get $131)
            (local.get $130)
           )
          )
          (f32.store offset=64
           (local.get $4)
           (local.get $132)
          )
          (local.set $133
           (f32.load offset=56
            (local.get $4)
           )
          )
          (local.set $134
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $135
           (f32.mul
            (local.get $134)
            (local.get $133)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $135)
          )
          (local.set $136
           (i32.load offset=80
            (local.get $4)
           )
          )
          (local.set $137
           (i32.const 1)
          )
          (local.set $138
           (i32.add
            (local.get $136)
            (local.get $137)
           )
          )
          (i32.store offset=80
           (local.get $4)
           (local.get $138)
          )
          (br $label$18)
         )
        )
        (local.set $139
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $140
         (f32.load offset=64
          (local.get $4)
         )
        )
        (local.set $141
         (f32.div
          (local.get $139)
          (local.get $140)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $141)
        )
       )
       (br $label$13)
      )
      (local.set $142
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $143
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $144
       (i32.add
        (local.get $142)
        (local.get $143)
       )
      )
      (local.set $145
       (f32.convert_i32_s
        (local.get $144)
       )
      )
      (local.set $146
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $147
       (f32.div
        (local.get $145)
        (local.get $146)
       )
      )
      (f32.store offset=44
       (local.get $4)
       (local.get $147)
      )
      (local.set $148
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $149
       (f32.const 2)
      )
      (local.set $150
       (f32.div
        (local.get $149)
        (local.get $148)
       )
      )
      (f32.store offset=20
       (local.get $4)
       (local.get $150)
      )
      (local.set $151
       (f32.load offset=44
        (local.get $4)
       )
      )
      (f32.store offset=28
       (local.get $4)
       (local.get $151)
      )
      (local.set $152
       (f32.load offset=44
        (local.get $4)
       )
      )
      (local.set $153
       (f32.load offset=20
        (local.get $4)
       )
      )
      (local.set $154
       (f32.add
        (local.get $152)
        (local.get $153)
       )
      )
      (f32.store offset=48
       (local.get $4)
       (local.get $154)
      )
      (local.set $155
       (f32.load offset=44
        (local.get $4)
       )
      )
      (local.set $156
       (f32.load offset=48
        (local.get $4)
       )
      )
      (local.set $157
       (f32.mul
        (local.get $155)
        (local.get $156)
       )
      )
      (local.set $158
       (f32.const -1)
      )
      (local.set $159
       (f32.add
        (local.get $157)
        (local.get $158)
       )
      )
      (f32.store offset=24
       (local.get $4)
       (local.get $159)
      )
      (local.set $160
       (i32.const 1)
      )
      (i32.store offset=12
       (local.get $4)
       (local.get $160)
      )
      (block $label$19
       (loop $label$20
        (local.set $161
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $162
         (f32.const 1e9)
        )
        (local.set $163
         (f32.lt
          (local.get $161)
          (local.get $162)
         )
        )
        (local.set $164
         (i32.const 1)
        )
        (local.set $165
         (i32.and
          (local.get $163)
          (local.get $164)
         )
        )
        (br_if $label$19
         (i32.eqz
          (local.get $165)
         )
        )
        (local.set $166
         (i32.load offset=12
          (local.get $4)
         )
        )
        (local.set $167
         (i32.const 1)
        )
        (local.set $168
         (i32.add
          (local.get $166)
          (local.get $167)
         )
        )
        (i32.store offset=12
         (local.get $4)
         (local.get $168)
        )
        (local.set $169
         (f32.load offset=20
          (local.get $4)
         )
        )
        (local.set $170
         (f32.load offset=48
          (local.get $4)
         )
        )
        (local.set $171
         (f32.add
          (local.get $170)
          (local.get $169)
         )
        )
        (f32.store offset=48
         (local.get $4)
         (local.get $171)
        )
        (local.set $172
         (f32.load offset=48
          (local.get $4)
         )
        )
        (local.set $173
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $174
         (f32.load offset=28
          (local.get $4)
         )
        )
        (local.set $175
         (f32.neg
          (local.get $174)
         )
        )
        (local.set $176
         (f32.mul
          (local.get $172)
          (local.get $173)
         )
        )
        (local.set $177
         (f32.add
          (local.get $176)
          (local.get $175)
         )
        )
        (f32.store offset=16
         (local.get $4)
         (local.get $177)
        )
        (local.set $178
         (f32.load offset=24
          (local.get $4)
         )
        )
        (f32.store offset=28
         (local.get $4)
         (local.get $178)
        )
        (local.set $179
         (f32.load offset=16
          (local.get $4)
         )
        )
        (f32.store offset=24
         (local.get $4)
         (local.get $179)
        )
        (br $label$20)
       )
      )
      (local.set $180
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $181
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $182
       (i32.add
        (local.get $180)
        (local.get $181)
       )
      )
      (i32.store offset=8
       (local.get $4)
       (local.get $182)
      )
      (local.set $183
       (i32.const 0)
      )
      (local.set $184
       (f32.convert_i32_s
        (local.get $183)
       )
      )
      (f32.store offset=36
       (local.get $4)
       (local.get $184)
      )
      (local.set $185
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $186
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $187
       (i32.add
        (local.get $185)
        (local.get $186)
       )
      )
      (local.set $188
       (i32.const 1)
      )
      (local.set $189
       (i32.shl
        (local.get $187)
        (local.get $188)
       )
      )
      (i32.store offset=80
       (local.get $4)
       (local.get $189)
      )
      (block $label$21
       (loop $label$22
        (local.set $190
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $191
         (i32.load offset=8
          (local.get $4)
         )
        )
        (local.set $192
         (local.get $190)
        )
        (local.set $193
         (local.get $191)
        )
        (local.set $194
         (i32.ge_s
          (local.get $192)
          (local.get $193)
         )
        )
        (local.set $195
         (i32.const 1)
        )
        (local.set $196
         (i32.and
          (local.get $194)
          (local.get $195)
         )
        )
        (br_if $label$21
         (i32.eqz
          (local.get $196)
         )
        )
        (local.set $197
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $198
         (f32.convert_i32_s
          (local.get $197)
         )
        )
        (local.set $199
         (f32.load offset=84
          (local.get $4)
         )
        )
        (local.set $200
         (f32.div
          (local.get $198)
          (local.get $199)
         )
        )
        (local.set $201
         (f32.load offset=36
          (local.get $4)
         )
        )
        (local.set $202
         (f32.sub
          (local.get $200)
          (local.get $201)
         )
        )
        (local.set $203
         (f32.const 1)
        )
        (local.set $204
         (f32.div
          (local.get $203)
          (local.get $202)
         )
        )
        (f32.store offset=36
         (local.get $4)
         (local.get $204)
        )
        (local.set $205
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $206
         (i32.const 2)
        )
        (local.set $207
         (i32.sub
          (local.get $205)
          (local.get $206)
         )
        )
        (i32.store offset=80
         (local.get $4)
         (local.get $207)
        )
        (br $label$22)
       )
      )
      (local.set $208
       (f32.load offset=36
        (local.get $4)
       )
      )
      (f32.store offset=64
       (local.get $4)
       (local.get $208)
      )
      (local.set $209
       (f32.const 1)
      )
      (f32.store offset=60
       (local.get $4)
       (local.get $209)
      )
      (local.set $210
       (i32.load offset=88
        (local.get $4)
       )
      )
      (local.set $211
       (f32.convert_i32_s
        (local.get $210)
       )
      )
      (f32.store offset=16
       (local.get $4)
       (local.get $211)
      )
      (local.set $212
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $213
       (f32.const 2)
      )
      (local.set $214
       (f32.div
        (local.get $213)
        (local.get $212)
       )
      )
      (f32.store offset=32
       (local.get $4)
       (local.get $214)
      )
      (local.set $215
       (f32.load offset=16
        (local.get $4)
       )
      )
      (local.set $216
       (f32.load offset=32
        (local.get $4)
       )
      )
      (local.set $217
       (f32.load offset=16
        (local.get $4)
       )
      )
      (local.set $218
       (f32.mul
        (local.get $216)
        (local.get $217)
       )
      )
      (local.set $219
       (call $fabsf
        (local.get $218)
       )
      )
      (local.set $220
       (call $logf
        (local.get $219)
       )
      )
      (local.set $221
       (f32.mul
        (local.get $215)
        (local.get $220)
       )
      )
      (f32.store offset=16
       (local.get $4)
       (local.get $221)
      )
      (local.set $222
       (f32.load offset=16
        (local.get $4)
       )
      )
      (local.set $223
       (f32.const 88.7216796875)
      )
      (local.set $224
       (f32.lt
        (local.get $222)
        (local.get $223)
       )
      )
      (local.set $225
       (i32.const 1)
      )
      (local.set $226
       (i32.and
        (local.get $224)
        (local.get $225)
       )
      )
      (block $label$23
       (block $label$24
        (br_if $label$24
         (i32.eqz
          (local.get $226)
         )
        )
        (local.set $227
         (i32.load offset=88
          (local.get $4)
         )
        )
        (local.set $228
         (i32.const 1)
        )
        (local.set $229
         (i32.sub
          (local.get $227)
          (local.get $228)
         )
        )
        (i32.store offset=80
         (local.get $4)
         (local.get $229)
        )
        (local.set $230
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $231
         (i32.load offset=80
          (local.get $4)
         )
        )
        (local.set $232
         (i32.add
          (local.get $230)
          (local.get $231)
         )
        )
        (local.set $233
         (f32.convert_i32_s
          (local.get $232)
         )
        )
        (f32.store offset=52
         (local.get $4)
         (local.get $233)
        )
        (block $label$25
         (loop $label$26
          (local.set $234
           (i32.load offset=80
            (local.get $4)
           )
          )
          (local.set $235
           (i32.const 0)
          )
          (local.set $236
           (local.get $234)
          )
          (local.set $237
           (local.get $235)
          )
          (local.set $238
           (i32.gt_s
            (local.get $236)
            (local.get $237)
           )
          )
          (local.set $239
           (i32.const 1)
          )
          (local.set $240
           (i32.and
            (local.get $238)
            (local.get $239)
           )
          )
          (br_if $label$25
           (i32.eqz
            (local.get $240)
           )
          )
          (local.set $241
           (f32.load offset=60
            (local.get $4)
           )
          )
          (f32.store offset=56
           (local.get $4)
           (local.get $241)
          )
          (local.set $242
           (f32.load offset=52
            (local.get $4)
           )
          )
          (local.set $243
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $244
           (f32.mul
            (local.get $243)
            (local.get $242)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $244)
          )
          (local.set $245
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $246
           (f32.load offset=84
            (local.get $4)
           )
          )
          (local.set $247
           (f32.div
            (local.get $245)
            (local.get $246)
           )
          )
          (local.set $248
           (f32.load offset=64
            (local.get $4)
           )
          )
          (local.set $249
           (f32.sub
            (local.get $247)
            (local.get $248)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $249)
          )
          (local.set $250
           (f32.load offset=56
            (local.get $4)
           )
          )
          (f32.store offset=64
           (local.get $4)
           (local.get $250)
          )
          (local.set $251
           (f32.load offset=52
            (local.get $4)
           )
          )
          (local.set $252
           (f32.const 2)
          )
          (local.set $253
           (f32.sub
            (local.get $251)
            (local.get $252)
           )
          )
          (f32.store offset=52
           (local.get $4)
           (local.get $253)
          )
          (local.set $254
           (i32.load offset=80
            (local.get $4)
           )
          )
          (local.set $255
           (i32.const -1)
          )
          (local.set $256
           (i32.add
            (local.get $254)
            (local.get $255)
           )
          )
          (i32.store offset=80
           (local.get $4)
           (local.get $256)
          )
          (br $label$26)
         )
        )
        (br $label$23)
       )
       (local.set $257
        (i32.load offset=88
         (local.get $4)
        )
       )
       (local.set $258
        (i32.const 1)
       )
       (local.set $259
        (i32.sub
         (local.get $257)
         (local.get $258)
        )
       )
       (i32.store offset=80
        (local.get $4)
        (local.get $259)
       )
       (local.set $260
        (i32.load offset=80
         (local.get $4)
        )
       )
       (local.set $261
        (i32.load offset=80
         (local.get $4)
        )
       )
       (local.set $262
        (i32.add
         (local.get $260)
         (local.get $261)
        )
       )
       (local.set $263
        (f32.convert_i32_s
         (local.get $262)
        )
       )
       (f32.store offset=52
        (local.get $4)
        (local.get $263)
       )
       (block $label$27
        (loop $label$28
         (local.set $264
          (i32.load offset=80
           (local.get $4)
          )
         )
         (local.set $265
          (i32.const 0)
         )
         (local.set $266
          (local.get $264)
         )
         (local.set $267
          (local.get $265)
         )
         (local.set $268
          (i32.gt_s
           (local.get $266)
           (local.get $267)
          )
         )
         (local.set $269
          (i32.const 1)
         )
         (local.set $270
          (i32.and
           (local.get $268)
           (local.get $269)
          )
         )
         (br_if $label$27
          (i32.eqz
           (local.get $270)
          )
         )
         (local.set $271
          (f32.load offset=60
           (local.get $4)
          )
         )
         (f32.store offset=56
          (local.get $4)
          (local.get $271)
         )
         (local.set $272
          (f32.load offset=52
           (local.get $4)
          )
         )
         (local.set $273
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $274
          (f32.mul
           (local.get $273)
           (local.get $272)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $274)
         )
         (local.set $275
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $276
          (f32.load offset=84
           (local.get $4)
          )
         )
         (local.set $277
          (f32.div
           (local.get $275)
           (local.get $276)
          )
         )
         (local.set $278
          (f32.load offset=64
           (local.get $4)
          )
         )
         (local.set $279
          (f32.sub
           (local.get $277)
           (local.get $278)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $279)
         )
         (local.set $280
          (f32.load offset=56
           (local.get $4)
          )
         )
         (f32.store offset=64
          (local.get $4)
          (local.get $280)
         )
         (local.set $281
          (f32.load offset=52
           (local.get $4)
          )
         )
         (local.set $282
          (f32.const 2)
         )
         (local.set $283
          (f32.sub
           (local.get $281)
           (local.get $282)
          )
         )
         (f32.store offset=52
          (local.get $4)
          (local.get $283)
         )
         (local.set $284
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $285
          (f32.const 1e10)
         )
         (local.set $286
          (f32.gt
           (local.get $284)
           (local.get $285)
          )
         )
         (local.set $287
          (i32.const 1)
         )
         (local.set $288
          (i32.and
           (local.get $286)
           (local.get $287)
          )
         )
         (block $label$29
          (br_if $label$29
           (i32.eqz
            (local.get $288)
           )
          )
          (local.set $289
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $290
           (f32.load offset=64
            (local.get $4)
           )
          )
          (local.set $291
           (f32.div
            (local.get $290)
            (local.get $289)
           )
          )
          (f32.store offset=64
           (local.get $4)
           (local.get $291)
          )
          (local.set $292
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $293
           (f32.load offset=36
            (local.get $4)
           )
          )
          (local.set $294
           (f32.div
            (local.get $293)
            (local.get $292)
           )
          )
          (f32.store offset=36
           (local.get $4)
           (local.get $294)
          )
          (local.set $295
           (f32.const 1)
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $295)
          )
         )
         (local.set $296
          (i32.load offset=80
           (local.get $4)
          )
         )
         (local.set $297
          (i32.const -1)
         )
         (local.set $298
          (i32.add
           (local.get $296)
           (local.get $297)
          )
         )
         (i32.store offset=80
          (local.get $4)
          (local.get $298)
         )
         (br $label$28)
        )
       )
      )
      (local.set $299
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $300
       (call $j0f
        (local.get $299)
       )
      )
      (f32.store offset=48
       (local.get $4)
       (local.get $300)
      )
      (local.set $301
       (f32.load offset=84
        (local.get $4)
       )
      )
      (local.set $302
       (call $j1f
        (local.get $301)
       )
      )
      (f32.store offset=44
       (local.get $4)
       (local.get $302)
      )
      (local.set $303
       (f32.load offset=48
        (local.get $4)
       )
      )
      (local.set $304
       (call $fabsf
        (local.get $303)
       )
      )
      (local.set $305
       (f32.load offset=44
        (local.get $4)
       )
      )
      (local.set $306
       (call $fabsf
        (local.get $305)
       )
      )
      (local.set $307
       (f32.ge
        (local.get $304)
        (local.get $306)
       )
      )
      (local.set $308
       (i32.const 1)
      )
      (local.set $309
       (i32.and
        (local.get $307)
        (local.get $308)
       )
      )
      (block $label$30
       (block $label$31
        (br_if $label$31
         (i32.eqz
          (local.get $309)
         )
        )
        (local.set $310
         (f32.load offset=36
          (local.get $4)
         )
        )
        (local.set $311
         (f32.load offset=48
          (local.get $4)
         )
        )
        (local.set $312
         (f32.mul
          (local.get $310)
          (local.get $311)
         )
        )
        (local.set $313
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $314
         (f32.div
          (local.get $312)
          (local.get $313)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $314)
        )
        (br $label$30)
       )
       (local.set $315
        (f32.load offset=36
         (local.get $4)
        )
       )
       (local.set $316
        (f32.load offset=44
         (local.get $4)
        )
       )
       (local.set $317
        (f32.mul
         (local.get $315)
         (local.get $316)
        )
       )
       (local.set $318
        (f32.load offset=64
         (local.get $4)
        )
       )
       (local.set $319
        (f32.div
         (local.get $317)
         (local.get $318)
        )
       )
       (f32.store offset=60
        (local.get $4)
        (local.get $319)
       )
      )
     )
    )
   )
   (local.set $320
    (i32.load offset=68
     (local.get $4)
    )
   )
   (local.set $321
    (i32.const 1)
   )
   (local.set $322
    (local.get $320)
   )
   (local.set $323
    (local.get $321)
   )
   (local.set $324
    (i32.eq
     (local.get $322)
     (local.get $323)
    )
   )
   (local.set $325
    (i32.const 1)
   )
   (local.set $326
    (i32.and
     (local.get $324)
     (local.get $325)
    )
   )
   (block $label$32
    (br_if $label$32
     (i32.eqz
      (local.get $326)
     )
    )
    (local.set $327
     (f32.load offset=60
      (local.get $4)
     )
    )
    (local.set $328
     (f32.neg
      (local.get $327)
     )
    )
    (f32.store offset=92
     (local.get $4)
     (local.get $328)
    )
    (br $label$1)
   )
   (local.set $329
    (f32.load offset=60
     (local.get $4)
    )
   )
   (f32.store offset=92
    (local.get $4)
    (local.get $329)
   )
  )
  (local.set $330
   (f32.load offset=92
    (local.get $4)
   )
  )
  (local.set $331
   (i32.const 96)
  )
  (local.set $332
   (i32.add
    (local.get $4)
    (local.get $331)
   )
  )
  (global.set $__stack_pointer
   (local.get $332)
  )
  (return
   (local.get $330)
  )
 )
 (func $ynf (param $0 i32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 i32)
  (local $21 f32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 f32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f32)
  (local $50 f32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 f32)
  (local $60 f32)
  (local $61 f32)
  (local $62 f32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 f32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f32)
  (local $107 f32)
  (local $108 f32)
  (local $109 i32)
  (local $110 f32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 f32)
  (local $122 f32)
  (local $123 f32)
  (local $124 f32)
  (local $125 i32)
  (local $126 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 64)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (i32.store offset=56
   (local.get $4)
   (local.get $0)
  )
  (f32.store offset=52
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=52
    (local.get $4)
   )
  )
  (f32.store offset=16
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=16
    (local.get $4)
   )
  )
  (i32.store offset=44
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=44
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 2147483647)
  )
  (local.set $9
   (i32.and
    (local.get $7)
    (local.get $8)
   )
  )
  (i32.store offset=40
   (local.get $4)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=40
    (local.get $4)
   )
  )
  (local.set $11
   (i32.const 2139095040)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (local.get $11)
  )
  (local.set $14
   (i32.gt_s
    (local.get $12)
    (local.get $13)
   )
  )
  (local.set $15
   (i32.const 1)
  )
  (local.set $16
   (i32.and
    (local.get $14)
    (local.get $15)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $16)
     )
    )
    (local.set $17
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $18
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $19
     (f32.add
      (local.get $17)
      (local.get $18)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $19)
    )
    (br $label$1)
   )
   (local.set $20
    (i32.load offset=40
     (local.get $4)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $20)
    )
    (local.set $21
     (f32.const -inf)
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $21)
    )
    (br $label$1)
   )
   (local.set $22
    (i32.load offset=44
     (local.get $4)
    )
   )
   (local.set $23
    (i32.const 0)
   )
   (local.set $24
    (local.get $22)
   )
   (local.set $25
    (local.get $23)
   )
   (local.set $26
    (i32.lt_s
     (local.get $24)
     (local.get $25)
    )
   )
   (local.set $27
    (i32.const 1)
   )
   (local.set $28
    (i32.and
     (local.get $26)
     (local.get $27)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $28)
     )
    )
    (local.set $29
     (f32.const nan:0x400000)
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $29)
    )
    (br $label$1)
   )
   (local.set $30
    (i32.const 1)
   )
   (i32.store offset=32
    (local.get $4)
    (local.get $30)
   )
   (local.set $31
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $32
    (i32.const 0)
   )
   (local.set $33
    (local.get $31)
   )
   (local.set $34
    (local.get $32)
   )
   (local.set $35
    (i32.lt_s
     (local.get $33)
     (local.get $34)
    )
   )
   (local.set $36
    (i32.const 1)
   )
   (local.set $37
    (i32.and
     (local.get $35)
     (local.get $36)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $37)
     )
    )
    (local.set $38
     (i32.load offset=56
      (local.get $4)
     )
    )
    (local.set $39
     (i32.const 0)
    )
    (local.set $40
     (i32.sub
      (local.get $39)
      (local.get $38)
     )
    )
    (i32.store offset=56
     (local.get $4)
     (local.get $40)
    )
    (local.set $41
     (i32.load offset=56
      (local.get $4)
     )
    )
    (local.set $42
     (i32.const 1)
    )
    (local.set $43
     (i32.and
      (local.get $41)
      (local.get $42)
     )
    )
    (local.set $44
     (i32.const 1)
    )
    (local.set $45
     (i32.shl
      (local.get $43)
      (local.get $44)
     )
    )
    (local.set $46
     (i32.const 1)
    )
    (local.set $47
     (i32.sub
      (local.get $46)
      (local.get $45)
     )
    )
    (i32.store offset=32
     (local.get $4)
     (local.get $47)
    )
   )
   (local.set $48
    (i32.load offset=56
     (local.get $4)
    )
   )
   (block $label$6
    (br_if $label$6
     (local.get $48)
    )
    (local.set $49
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $50
     (call $y0f
      (local.get $49)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $50)
    )
    (br $label$1)
   )
   (local.set $51
    (i32.load offset=56
     (local.get $4)
    )
   )
   (local.set $52
    (i32.const 1)
   )
   (local.set $53
    (local.get $51)
   )
   (local.set $54
    (local.get $52)
   )
   (local.set $55
    (i32.eq
     (local.get $53)
     (local.get $54)
    )
   )
   (local.set $56
    (i32.const 1)
   )
   (local.set $57
    (i32.and
     (local.get $55)
     (local.get $56)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (local.get $57)
     )
    )
    (local.set $58
     (i32.load offset=32
      (local.get $4)
     )
    )
    (local.set $59
     (f32.convert_i32_s
      (local.get $58)
     )
    )
    (local.set $60
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $61
     (call $y1f
      (local.get $60)
     )
    )
    (local.set $62
     (f32.mul
      (local.get $59)
      (local.get $61)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $62)
    )
    (br $label$1)
   )
   (local.set $63
    (i32.load offset=40
     (local.get $4)
    )
   )
   (local.set $64
    (i32.const 2139095040)
   )
   (local.set $65
    (local.get $63)
   )
   (local.set $66
    (local.get $64)
   )
   (local.set $67
    (i32.eq
     (local.get $65)
     (local.get $66)
    )
   )
   (local.set $68
    (i32.const 1)
   )
   (local.set $69
    (i32.and
     (local.get $67)
     (local.get $68)
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eqz
      (local.get $69)
     )
    )
    (local.set $70
     (i32.const 0)
    )
    (local.set $71
     (f32.convert_i32_s
      (local.get $70)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $71)
    )
    (br $label$1)
   )
   (local.set $72
    (f32.load offset=52
     (local.get $4)
    )
   )
   (local.set $73
    (call $y0f
     (local.get $72)
    )
   )
   (f32.store offset=28
    (local.get $4)
    (local.get $73)
   )
   (local.set $74
    (f32.load offset=52
     (local.get $4)
    )
   )
   (local.set $75
    (call $y1f
     (local.get $74)
    )
   )
   (f32.store offset=24
    (local.get $4)
    (local.get $75)
   )
   (local.set $76
    (f32.load offset=24
     (local.get $4)
    )
   )
   (f32.store offset=8
    (local.get $4)
    (local.get $76)
   )
   (local.set $77
    (i32.load offset=8
     (local.get $4)
    )
   )
   (i32.store offset=36
    (local.get $4)
    (local.get $77)
   )
   (local.set $78
    (i32.const 1)
   )
   (i32.store offset=48
    (local.get $4)
    (local.get $78)
   )
   (loop $label$9
    (local.set $79
     (i32.load offset=48
      (local.get $4)
     )
    )
    (local.set $80
     (i32.load offset=56
      (local.get $4)
     )
    )
    (local.set $81
     (local.get $79)
    )
    (local.set $82
     (local.get $80)
    )
    (local.set $83
     (i32.lt_s
      (local.get $81)
      (local.get $82)
     )
    )
    (local.set $84
     (i32.const 0)
    )
    (local.set $85
     (i32.const 1)
    )
    (local.set $86
     (i32.and
      (local.get $83)
      (local.get $85)
     )
    )
    (local.set $87
     (local.get $84)
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $86)
      )
     )
     (local.set $88
      (i32.load offset=36
       (local.get $4)
      )
     )
     (local.set $89
      (i32.const -8388608)
     )
     (local.set $90
      (local.get $88)
     )
     (local.set $91
      (local.get $89)
     )
     (local.set $92
      (i32.ne
       (local.get $90)
       (local.get $91)
      )
     )
     (local.set $87
      (local.get $92)
     )
    )
    (local.set $93
     (local.get $87)
    )
    (local.set $94
     (i32.const 1)
    )
    (local.set $95
     (i32.and
      (local.get $93)
      (local.get $94)
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (local.get $95)
      )
     )
     (local.set $96
      (f32.load offset=24
       (local.get $4)
      )
     )
     (f32.store offset=20
      (local.get $4)
      (local.get $96)
     )
     (local.set $97
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $98
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $99
      (i32.add
       (local.get $97)
       (local.get $98)
      )
     )
     (local.set $100
      (f32.convert_i32_s
       (local.get $99)
      )
     )
     (local.set $101
      (f32.load offset=52
       (local.get $4)
      )
     )
     (local.set $102
      (f32.div
       (local.get $100)
       (local.get $101)
      )
     )
     (local.set $103
      (f32.load offset=24
       (local.get $4)
      )
     )
     (local.set $104
      (f32.load offset=28
       (local.get $4)
      )
     )
     (local.set $105
      (f32.neg
       (local.get $104)
      )
     )
     (local.set $106
      (f32.mul
       (local.get $102)
       (local.get $103)
      )
     )
     (local.set $107
      (f32.add
       (local.get $106)
       (local.get $105)
      )
     )
     (f32.store offset=24
      (local.get $4)
      (local.get $107)
     )
     (local.set $108
      (f32.load offset=24
       (local.get $4)
      )
     )
     (f32.store
      (local.get $4)
      (local.get $108)
     )
     (local.set $109
      (i32.load
       (local.get $4)
      )
     )
     (i32.store offset=36
      (local.get $4)
      (local.get $109)
     )
     (local.set $110
      (f32.load offset=20
       (local.get $4)
      )
     )
     (f32.store offset=28
      (local.get $4)
      (local.get $110)
     )
     (local.set $111
      (i32.load offset=48
       (local.get $4)
      )
     )
     (local.set $112
      (i32.const 1)
     )
     (local.set $113
      (i32.add
       (local.get $111)
       (local.get $112)
      )
     )
     (i32.store offset=48
      (local.get $4)
      (local.get $113)
     )
     (br $label$9)
    )
   )
   (local.set $114
    (i32.load offset=32
     (local.get $4)
    )
   )
   (local.set $115
    (i32.const 0)
   )
   (local.set $116
    (local.get $114)
   )
   (local.set $117
    (local.get $115)
   )
   (local.set $118
    (i32.gt_s
     (local.get $116)
     (local.get $117)
    )
   )
   (local.set $119
    (i32.const 1)
   )
   (local.set $120
    (i32.and
     (local.get $118)
     (local.get $119)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.eqz
      (local.get $120)
     )
    )
    (local.set $121
     (f32.load offset=24
      (local.get $4)
     )
    )
    (f32.store offset=60
     (local.get $4)
     (local.get $121)
    )
    (br $label$1)
   )
   (local.set $122
    (f32.load offset=24
     (local.get $4)
    )
   )
   (local.set $123
    (f32.neg
     (local.get $122)
    )
   )
   (f32.store offset=60
    (local.get $4)
    (local.get $123)
   )
  )
  (local.set $124
   (f32.load offset=60
    (local.get $4)
   )
  )
  (local.set $125
   (i32.const 64)
  )
  (local.set $126
   (i32.add
    (local.get $4)
    (local.get $125)
   )
  )
  (global.set $__stack_pointer
   (local.get $126)
  )
  (return
   (local.get $124)
  )
 )
 (func $lgamma (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 16)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=8
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=8
    (local.get $3)
   )
  )
  (local.set $5
   (i32.const 11160)
  )
  (local.set $6
   (call $lgamma_r
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $7
   (i32.const 16)
  )
  (local.set $8
   (i32.add
    (local.get $3)
    (local.get $7)
   )
  )
  (global.set $__stack_pointer
   (local.get $8)
  )
  (return
   (local.get $6)
  )
 )
 (func $lgamma_r (param $0 f64) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f64)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 f64)
  (local $44 f64)
  (local $45 f64)
  (local $46 f64)
  (local $47 f64)
  (local $48 f64)
  (local $49 f64)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 f64)
  (local $65 f64)
  (local $66 f64)
  (local $67 f64)
  (local $68 i32)
  (local $69 f64)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 f64)
  (local $75 f64)
  (local $76 f64)
  (local $77 f64)
  (local $78 f64)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 i32)
  (local $83 f64)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 f64)
  (local $90 f64)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 f64)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 i32)
  (local $142 f64)
  (local $143 i32)
  (local $144 i32)
  (local $145 f64)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 f64)
  (local $154 f64)
  (local $155 f64)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 i32)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 f64)
  (local $185 f64)
  (local $186 f64)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 f64)
  (local $191 f64)
  (local $192 f64)
  (local $193 f64)
  (local $194 f64)
  (local $195 f64)
  (local $196 f64)
  (local $197 f64)
  (local $198 f64)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 f64)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 f64)
  (local $230 f64)
  (local $231 f64)
  (local $232 f64)
  (local $233 f64)
  (local $234 f64)
  (local $235 f64)
  (local $236 f64)
  (local $237 f64)
  (local $238 f64)
  (local $239 f64)
  (local $240 f64)
  (local $241 f64)
  (local $242 f64)
  (local $243 f64)
  (local $244 f64)
  (local $245 f64)
  (local $246 f64)
  (local $247 f64)
  (local $248 f64)
  (local $249 f64)
  (local $250 f64)
  (local $251 f64)
  (local $252 f64)
  (local $253 f64)
  (local $254 f64)
  (local $255 f64)
  (local $256 f64)
  (local $257 f64)
  (local $258 f64)
  (local $259 f64)
  (local $260 f64)
  (local $261 f64)
  (local $262 f64)
  (local $263 f64)
  (local $264 f64)
  (local $265 f64)
  (local $266 f64)
  (local $267 f64)
  (local $268 f64)
  (local $269 f64)
  (local $270 f64)
  (local $271 f64)
  (local $272 f64)
  (local $273 f64)
  (local $274 f64)
  (local $275 f64)
  (local $276 f64)
  (local $277 f64)
  (local $278 f64)
  (local $279 f64)
  (local $280 f64)
  (local $281 f64)
  (local $282 f64)
  (local $283 f64)
  (local $284 f64)
  (local $285 f64)
  (local $286 f64)
  (local $287 f64)
  (local $288 f64)
  (local $289 f64)
  (local $290 f64)
  (local $291 f64)
  (local $292 f64)
  (local $293 f64)
  (local $294 f64)
  (local $295 f64)
  (local $296 f64)
  (local $297 f64)
  (local $298 f64)
  (local $299 f64)
  (local $300 f64)
  (local $301 f64)
  (local $302 f64)
  (local $303 f64)
  (local $304 f64)
  (local $305 f64)
  (local $306 f64)
  (local $307 f64)
  (local $308 f64)
  (local $309 f64)
  (local $310 f64)
  (local $311 f64)
  (local $312 f64)
  (local $313 f64)
  (local $314 f64)
  (local $315 f64)
  (local $316 f64)
  (local $317 f64)
  (local $318 f64)
  (local $319 f64)
  (local $320 f64)
  (local $321 f64)
  (local $322 f64)
  (local $323 f64)
  (local $324 f64)
  (local $325 f64)
  (local $326 f64)
  (local $327 f64)
  (local $328 f64)
  (local $329 f64)
  (local $330 f64)
  (local $331 f64)
  (local $332 f64)
  (local $333 f64)
  (local $334 f64)
  (local $335 f64)
  (local $336 f64)
  (local $337 f64)
  (local $338 f64)
  (local $339 f64)
  (local $340 f64)
  (local $341 f64)
  (local $342 f64)
  (local $343 f64)
  (local $344 f64)
  (local $345 f64)
  (local $346 f64)
  (local $347 f64)
  (local $348 f64)
  (local $349 f64)
  (local $350 f64)
  (local $351 f64)
  (local $352 f64)
  (local $353 f64)
  (local $354 f64)
  (local $355 f64)
  (local $356 f64)
  (local $357 f64)
  (local $358 f64)
  (local $359 f64)
  (local $360 f64)
  (local $361 f64)
  (local $362 f64)
  (local $363 i32)
  (local $364 i32)
  (local $365 i32)
  (local $366 i32)
  (local $367 i32)
  (local $368 i32)
  (local $369 i32)
  (local $370 f64)
  (local $371 f64)
  (local $372 f64)
  (local $373 i32)
  (local $374 i32)
  (local $375 i32)
  (local $376 i32)
  (local $377 i32)
  (local $378 i32)
  (local $379 f64)
  (local $380 i32)
  (local $381 f64)
  (local $382 f64)
  (local $383 f64)
  (local $384 f64)
  (local $385 f64)
  (local $386 f64)
  (local $387 f64)
  (local $388 f64)
  (local $389 f64)
  (local $390 f64)
  (local $391 f64)
  (local $392 f64)
  (local $393 f64)
  (local $394 f64)
  (local $395 f64)
  (local $396 f64)
  (local $397 f64)
  (local $398 f64)
  (local $399 f64)
  (local $400 f64)
  (local $401 f64)
  (local $402 f64)
  (local $403 f64)
  (local $404 f64)
  (local $405 f64)
  (local $406 f64)
  (local $407 f64)
  (local $408 f64)
  (local $409 f64)
  (local $410 f64)
  (local $411 f64)
  (local $412 f64)
  (local $413 f64)
  (local $414 f64)
  (local $415 f64)
  (local $416 f64)
  (local $417 f64)
  (local $418 f64)
  (local $419 f64)
  (local $420 f64)
  (local $421 f64)
  (local $422 f64)
  (local $423 f64)
  (local $424 f64)
  (local $425 f64)
  (local $426 f64)
  (local $427 f64)
  (local $428 f64)
  (local $429 f64)
  (local $430 f64)
  (local $431 i64)
  (local $432 i32)
  (local $433 i32)
  (local $434 i32)
  (local $435 i32)
  (local $436 f64)
  (local $437 f64)
  (local $438 f64)
  (local $439 f64)
  (local $440 f64)
  (local $441 f64)
  (local $442 f64)
  (local $443 f64)
  (local $444 f64)
  (local $445 f64)
  (local $446 f64)
  (local $447 f64)
  (local $448 f64)
  (local $449 f64)
  (local $450 f64)
  (local $451 f64)
  (local $452 f64)
  (local $453 f64)
  (local $454 f64)
  (local $455 f64)
  (local $456 f64)
  (local $457 f64)
  (local $458 f64)
  (local $459 f64)
  (local $460 f64)
  (local $461 f64)
  (local $462 f64)
  (local $463 f64)
  (local $464 f64)
  (local $465 i32)
  (local $466 i32)
  (local $467 i32)
  (local $468 i32)
  (local $469 i32)
  (local $470 i32)
  (local $471 i32)
  (local $472 f64)
  (local $473 f64)
  (local $474 f64)
  (local $475 f64)
  (local $476 f64)
  (local $477 f64)
  (local $478 f64)
  (local $479 f64)
  (local $480 f64)
  (local $481 f64)
  (local $482 f64)
  (local $483 f64)
  (local $484 f64)
  (local $485 f64)
  (local $486 f64)
  (local $487 f64)
  (local $488 f64)
  (local $489 f64)
  (local $490 f64)
  (local $491 f64)
  (local $492 f64)
  (local $493 f64)
  (local $494 f64)
  (local $495 f64)
  (local $496 f64)
  (local $497 f64)
  (local $498 f64)
  (local $499 f64)
  (local $500 f64)
  (local $501 f64)
  (local $502 f64)
  (local $503 f64)
  (local $504 f64)
  (local $505 f64)
  (local $506 f64)
  (local $507 f64)
  (local $508 f64)
  (local $509 f64)
  (local $510 f64)
  (local $511 f64)
  (local $512 f64)
  (local $513 f64)
  (local $514 f64)
  (local $515 f64)
  (local $516 f64)
  (local $517 f64)
  (local $518 f64)
  (local $519 f64)
  (local $520 i32)
  (local $521 i32)
  (local $522 i32)
  (local $523 i32)
  (local $524 i32)
  (local $525 i32)
  (local $526 i32)
  (local $527 f64)
  (local $528 f64)
  (local $529 f64)
  (local $530 f64)
  (local $531 f64)
  (local $532 i32)
  (local $533 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 144)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f64.store offset=128
   (local.get $4)
   (local.get $0)
  )
  (i32.store offset=124
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f64.load offset=128
    (local.get $4)
   )
  )
  (f64.store offset=8
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=12
    (local.get $4)
   )
  )
  (i32.store offset=28
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=8
    (local.get $4)
   )
  )
  (i32.store offset=20
   (local.get $4)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=124
    (local.get $4)
   )
  )
  (local.set $9
   (i32.const 1)
  )
  (i32.store
   (local.get $8)
   (local.get $9)
  )
  (local.set $10
   (i32.load offset=28
    (local.get $4)
   )
  )
  (local.set $11
   (i32.const 2147483647)
  )
  (local.set $12
   (i32.and
    (local.get $10)
    (local.get $11)
   )
  )
  (i32.store offset=16
   (local.get $4)
   (local.get $12)
  )
  (local.set $13
   (i32.load offset=16
    (local.get $4)
   )
  )
  (local.set $14
   (i32.const 2146435072)
  )
  (local.set $15
   (local.get $13)
  )
  (local.set $16
   (local.get $14)
  )
  (local.set $17
   (i32.ge_s
    (local.get $15)
    (local.get $16)
   )
  )
  (local.set $18
   (i32.const 1)
  )
  (local.set $19
   (i32.and
    (local.get $17)
    (local.get $18)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $19)
     )
    )
    (local.set $20
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $21
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $22
     (f64.mul
      (local.get $20)
      (local.get $21)
     )
    )
    (f64.store offset=136
     (local.get $4)
     (local.get $22)
    )
    (br $label$1)
   )
   (local.set $23
    (i32.load offset=16
     (local.get $4)
    )
   )
   (local.set $24
    (i32.load offset=20
     (local.get $4)
    )
   )
   (local.set $25
    (i32.or
     (local.get $23)
     (local.get $24)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $25)
    )
    (local.set $26
     (f64.const inf)
    )
    (f64.store offset=136
     (local.get $4)
     (local.get $26)
    )
    (br $label$1)
   )
   (local.set $27
    (i32.load offset=16
     (local.get $4)
    )
   )
   (local.set $28
    (i32.const 999292928)
   )
   (local.set $29
    (local.get $27)
   )
   (local.set $30
    (local.get $28)
   )
   (local.set $31
    (i32.lt_s
     (local.get $29)
     (local.get $30)
    )
   )
   (local.set $32
    (i32.const 1)
   )
   (local.set $33
    (i32.and
     (local.get $31)
     (local.get $32)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $33)
     )
    )
    (local.set $34
     (i32.load offset=28
      (local.get $4)
     )
    )
    (local.set $35
     (i32.const 0)
    )
    (local.set $36
     (local.get $34)
    )
    (local.set $37
     (local.get $35)
    )
    (local.set $38
     (i32.lt_s
      (local.get $36)
      (local.get $37)
     )
    )
    (local.set $39
     (i32.const 1)
    )
    (local.set $40
     (i32.and
      (local.get $38)
      (local.get $39)
     )
    )
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (local.get $40)
      )
     )
     (local.set $41
      (i32.load offset=124
       (local.get $4)
      )
     )
     (local.set $42
      (i32.const -1)
     )
     (i32.store
      (local.get $41)
      (local.get $42)
     )
     (local.set $43
      (f64.load offset=128
       (local.get $4)
      )
     )
     (local.set $44
      (f64.neg
       (local.get $43)
      )
     )
     (local.set $45
      (call $log
       (local.get $44)
      )
     )
     (local.set $46
      (f64.neg
       (local.get $45)
      )
     )
     (f64.store offset=136
      (local.get $4)
      (local.get $46)
     )
     (br $label$1)
    )
    (local.set $47
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $48
     (call $log
      (local.get $47)
     )
    )
    (local.set $49
     (f64.neg
      (local.get $48)
     )
    )
    (f64.store offset=136
     (local.get $4)
     (local.get $49)
    )
    (br $label$1)
   )
   (local.set $50
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $51
    (i32.const 0)
   )
   (local.set $52
    (local.get $50)
   )
   (local.set $53
    (local.get $51)
   )
   (local.set $54
    (i32.lt_s
     (local.get $52)
     (local.get $53)
    )
   )
   (local.set $55
    (i32.const 1)
   )
   (local.set $56
    (i32.and
     (local.get $54)
     (local.get $55)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $56)
     )
    )
    (local.set $57
     (i32.load offset=16
      (local.get $4)
     )
    )
    (local.set $58
     (i32.const 1127219200)
    )
    (local.set $59
     (local.get $57)
    )
    (local.set $60
     (local.get $58)
    )
    (local.set $61
     (i32.ge_s
      (local.get $59)
      (local.get $60)
     )
    )
    (local.set $62
     (i32.const 1)
    )
    (local.set $63
     (i32.and
      (local.get $61)
      (local.get $62)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $63)
      )
     )
     (local.set $64
      (f64.const inf)
     )
     (f64.store offset=136
      (local.get $4)
      (local.get $64)
     )
     (br $label$1)
    )
    (local.set $65
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $66
     (call $sin_pi
      (local.get $65)
     )
    )
    (f64.store offset=112
     (local.get $4)
     (local.get $66)
    )
    (local.set $67
     (f64.load offset=112
      (local.get $4)
     )
    )
    (local.set $68
     (i32.const 0)
    )
    (local.set $69
     (f64.convert_i32_s
      (local.get $68)
     )
    )
    (local.set $70
     (f64.eq
      (local.get $67)
      (local.get $69)
     )
    )
    (local.set $71
     (i32.const 1)
    )
    (local.set $72
     (i32.and
      (local.get $70)
      (local.get $71)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.get $72)
      )
     )
     (local.set $73
      (f64.const inf)
     )
     (f64.store offset=136
      (local.get $4)
      (local.get $73)
     )
     (br $label$1)
    )
    (local.set $74
     (f64.load offset=112
      (local.get $4)
     )
    )
    (local.set $75
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $76
     (f64.mul
      (local.get $74)
      (local.get $75)
     )
    )
    (local.set $77
     (call $fabs
      (local.get $76)
     )
    )
    (local.set $78
     (f64.const 3.141592653589793)
    )
    (local.set $79
     (f64.div
      (local.get $78)
      (local.get $77)
     )
    )
    (local.set $80
     (call $log
      (local.get $79)
     )
    )
    (f64.store offset=88
     (local.get $4)
     (local.get $80)
    )
    (local.set $81
     (f64.load offset=112
      (local.get $4)
     )
    )
    (local.set $82
     (i32.const 0)
    )
    (local.set $83
     (f64.convert_i32_s
      (local.get $82)
     )
    )
    (local.set $84
     (f64.lt
      (local.get $81)
      (local.get $83)
     )
    )
    (local.set $85
     (i32.const 1)
    )
    (local.set $86
     (i32.and
      (local.get $84)
      (local.get $85)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (local.get $86)
      )
     )
     (local.set $87
      (i32.load offset=124
       (local.get $4)
      )
     )
     (local.set $88
      (i32.const -1)
     )
     (i32.store
      (local.get $87)
      (local.get $88)
     )
    )
    (local.set $89
     (f64.load offset=128
      (local.get $4)
     )
    )
    (local.set $90
     (f64.neg
      (local.get $89)
     )
    )
    (f64.store offset=128
     (local.get $4)
     (local.get $90)
    )
   )
   (local.set $91
    (i32.load offset=16
     (local.get $4)
    )
   )
   (local.set $92
    (i32.const 1072693248)
   )
   (local.set $93
    (i32.sub
     (local.get $91)
     (local.get $92)
    )
   )
   (local.set $94
    (i32.load offset=20
     (local.get $4)
    )
   )
   (local.set $95
    (i32.or
     (local.get $93)
     (local.get $94)
    )
   )
   (block $label$10
    (block $label$11
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (local.get $95)
       )
      )
      (local.set $96
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $97
       (i32.const 1073741824)
      )
      (local.set $98
       (i32.sub
        (local.get $96)
        (local.get $97)
       )
      )
      (local.set $99
       (i32.load offset=20
        (local.get $4)
       )
      )
      (local.set $100
       (i32.or
        (local.get $98)
        (local.get $99)
       )
      )
      (br_if $label$11
       (local.get $100)
      )
     )
     (local.set $101
      (i32.const 0)
     )
     (local.set $102
      (f64.convert_i32_s
       (local.get $101)
      )
     )
     (f64.store offset=40
      (local.get $4)
      (local.get $102)
     )
     (br $label$10)
    )
    (local.set $103
     (i32.load offset=16
      (local.get $4)
     )
    )
    (local.set $104
     (i32.const 1073741824)
    )
    (local.set $105
     (local.get $103)
    )
    (local.set $106
     (local.get $104)
    )
    (local.set $107
     (i32.lt_s
      (local.get $105)
      (local.get $106)
     )
    )
    (local.set $108
     (i32.const 1)
    )
    (local.set $109
     (i32.and
      (local.get $107)
      (local.get $108)
     )
    )
    (block $label$13
     (block $label$14
      (br_if $label$14
       (i32.eqz
        (local.get $109)
       )
      )
      (local.set $110
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $111
       (i32.const 1072483532)
      )
      (local.set $112
       (local.get $110)
      )
      (local.set $113
       (local.get $111)
      )
      (local.set $114
       (i32.le_s
        (local.get $112)
        (local.get $113)
       )
      )
      (local.set $115
       (i32.const 1)
      )
      (local.set $116
       (i32.and
        (local.get $114)
        (local.get $115)
       )
      )
      (block $label$15
       (block $label$16
        (br_if $label$16
         (i32.eqz
          (local.get $116)
         )
        )
        (local.set $117
         (f64.load offset=128
          (local.get $4)
         )
        )
        (local.set $118
         (call $log
          (local.get $117)
         )
        )
        (local.set $119
         (f64.neg
          (local.get $118)
         )
        )
        (f64.store offset=40
         (local.get $4)
         (local.get $119)
        )
        (local.set $120
         (i32.load offset=16
          (local.get $4)
         )
        )
        (local.set $121
         (i32.const 1072130372)
        )
        (local.set $122
         (local.get $120)
        )
        (local.set $123
         (local.get $121)
        )
        (local.set $124
         (i32.ge_s
          (local.get $122)
          (local.get $123)
         )
        )
        (local.set $125
         (i32.const 1)
        )
        (local.set $126
         (i32.and
          (local.get $124)
          (local.get $125)
         )
        )
        (block $label$17
         (block $label$18
          (br_if $label$18
           (i32.eqz
            (local.get $126)
           )
          )
          (local.set $127
           (f64.load offset=128
            (local.get $4)
           )
          )
          (local.set $128
           (f64.const 1)
          )
          (local.set $129
           (f64.sub
            (local.get $128)
            (local.get $127)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $129)
          )
          (local.set $130
           (i32.const 0)
          )
          (i32.store offset=24
           (local.get $4)
           (local.get $130)
          )
          (br $label$17)
         )
         (local.set $131
          (i32.load offset=16
           (local.get $4)
          )
         )
         (local.set $132
          (i32.const 1070442081)
         )
         (local.set $133
          (local.get $131)
         )
         (local.set $134
          (local.get $132)
         )
         (local.set $135
          (i32.ge_s
           (local.get $133)
           (local.get $134)
          )
         )
         (local.set $136
          (i32.const 1)
         )
         (local.set $137
          (i32.and
           (local.get $135)
           (local.get $136)
          )
         )
         (block $label$19
          (block $label$20
           (br_if $label$20
            (i32.eqz
             (local.get $137)
            )
           )
           (local.set $138
            (f64.load offset=128
             (local.get $4)
            )
           )
           (local.set $139
            (f64.const 0.46163214496836225)
           )
           (local.set $140
            (f64.sub
             (local.get $138)
             (local.get $139)
            )
           )
           (f64.store offset=104
            (local.get $4)
            (local.get $140)
           )
           (local.set $141
            (i32.const 1)
           )
           (i32.store offset=24
            (local.get $4)
            (local.get $141)
           )
           (br $label$19)
          )
          (local.set $142
           (f64.load offset=128
            (local.get $4)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $142)
          )
          (local.set $143
           (i32.const 2)
          )
          (i32.store offset=24
           (local.get $4)
           (local.get $143)
          )
         )
        )
        (br $label$15)
       )
       (local.set $144
        (i32.const 0)
       )
       (local.set $145
        (f64.convert_i32_s
         (local.get $144)
        )
       )
       (f64.store offset=40
        (local.get $4)
        (local.get $145)
       )
       (local.set $146
        (i32.load offset=16
         (local.get $4)
        )
       )
       (local.set $147
        (i32.const 1073460419)
       )
       (local.set $148
        (local.get $146)
       )
       (local.set $149
        (local.get $147)
       )
       (local.set $150
        (i32.ge_s
         (local.get $148)
         (local.get $149)
        )
       )
       (local.set $151
        (i32.const 1)
       )
       (local.set $152
        (i32.and
         (local.get $150)
         (local.get $151)
        )
       )
       (block $label$21
        (block $label$22
         (br_if $label$22
          (i32.eqz
           (local.get $152)
          )
         )
         (local.set $153
          (f64.load offset=128
           (local.get $4)
          )
         )
         (local.set $154
          (f64.const 2)
         )
         (local.set $155
          (f64.sub
           (local.get $154)
           (local.get $153)
          )
         )
         (f64.store offset=104
          (local.get $4)
          (local.get $155)
         )
         (local.set $156
          (i32.const 0)
         )
         (i32.store offset=24
          (local.get $4)
          (local.get $156)
         )
         (br $label$21)
        )
        (local.set $157
         (i32.load offset=16
          (local.get $4)
         )
        )
        (local.set $158
         (i32.const 1072936132)
        )
        (local.set $159
         (local.get $157)
        )
        (local.set $160
         (local.get $158)
        )
        (local.set $161
         (i32.ge_s
          (local.get $159)
          (local.get $160)
         )
        )
        (local.set $162
         (i32.const 1)
        )
        (local.set $163
         (i32.and
          (local.get $161)
          (local.get $162)
         )
        )
        (block $label$23
         (block $label$24
          (br_if $label$24
           (i32.eqz
            (local.get $163)
           )
          )
          (local.set $164
           (f64.load offset=128
            (local.get $4)
           )
          )
          (local.set $165
           (f64.const 1.4616321449683622)
          )
          (local.set $166
           (f64.sub
            (local.get $164)
            (local.get $165)
           )
          )
          (f64.store offset=104
           (local.get $4)
           (local.get $166)
          )
          (local.set $167
           (i32.const 1)
          )
          (i32.store offset=24
           (local.get $4)
           (local.get $167)
          )
          (br $label$23)
         )
         (local.set $168
          (f64.load offset=128
           (local.get $4)
          )
         )
         (local.set $169
          (f64.const 1)
         )
         (local.set $170
          (f64.sub
           (local.get $168)
           (local.get $169)
          )
         )
         (f64.store offset=104
          (local.get $4)
          (local.get $170)
         )
         (local.set $171
          (i32.const 2)
         )
         (i32.store offset=24
          (local.get $4)
          (local.get $171)
         )
        )
       )
      )
      (local.set $172
       (i32.load offset=24
        (local.get $4)
       )
      )
      (local.set $173
       (i32.const 2)
      )
      (drop
       (i32.gt_u
        (local.get $172)
        (local.get $173)
       )
      )
      (block $label$25
       (block $label$26
        (block $label$27
         (block $label$28
          (br_table $label$28 $label$27 $label$26 $label$25
           (local.get $172)
          )
         )
         (local.set $174
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $175
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $176
          (f64.mul
           (local.get $174)
           (local.get $175)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $176)
         )
         (local.set $177
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $178
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $179
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $180
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $181
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $182
          (f64.const 2.5214456545125733e-05)
         )
         (local.set $183
          (f64.mul
           (local.get $181)
           (local.get $182)
          )
         )
         (local.set $184
          (f64.const 2.2086279071390839e-04)
         )
         (local.set $185
          (f64.add
           (local.get $183)
           (local.get $184)
          )
         )
         (local.set $186
          (f64.mul
           (local.get $180)
           (local.get $185)
          )
         )
         (local.set $187
          (f64.const 1.1927076318336207e-03)
         )
         (local.set $188
          (f64.add
           (local.get $186)
           (local.get $187)
          )
         )
         (local.set $189
          (f64.mul
           (local.get $179)
           (local.get $188)
          )
         )
         (local.set $190
          (f64.const 0.007385550860814029)
         )
         (local.set $191
          (f64.add
           (local.get $189)
           (local.get $190)
          )
         )
         (local.set $192
          (f64.mul
           (local.get $178)
           (local.get $191)
          )
         )
         (local.set $193
          (f64.const 0.06735230105312927)
         )
         (local.set $194
          (f64.add
           (local.get $192)
           (local.get $193)
          )
         )
         (local.set $195
          (f64.mul
           (local.get $177)
           (local.get $194)
          )
         )
         (local.set $196
          (f64.const 0.07721566490153287)
         )
         (local.set $197
          (f64.add
           (local.get $195)
           (local.get $196)
          )
         )
         (f64.store offset=72
          (local.get $4)
          (local.get $197)
         )
         (local.set $198
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $199
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $200
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $201
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $202
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $203
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $204
          (f64.const 4.4864094961891516e-05)
         )
         (local.set $205
          (f64.mul
           (local.get $203)
           (local.get $204)
          )
         )
         (local.set $206
          (f64.const 1.0801156724758394e-04)
         )
         (local.set $207
          (f64.add
           (local.get $205)
           (local.get $206)
          )
         )
         (local.set $208
          (f64.mul
           (local.get $202)
           (local.get $207)
          )
         )
         (local.set $209
          (f64.const 5.100697921535113e-04)
         )
         (local.set $210
          (f64.add
           (local.get $208)
           (local.get $209)
          )
         )
         (local.set $211
          (f64.mul
           (local.get $201)
           (local.get $210)
          )
         )
         (local.set $212
          (f64.const 2.8905138367341563e-03)
         )
         (local.set $213
          (f64.add
           (local.get $211)
           (local.get $212)
          )
         )
         (local.set $214
          (f64.mul
           (local.get $200)
           (local.get $213)
          )
         )
         (local.set $215
          (f64.const 0.020580808432516733)
         )
         (local.set $216
          (f64.add
           (local.get $214)
           (local.get $215)
          )
         )
         (local.set $217
          (f64.mul
           (local.get $199)
           (local.get $216)
          )
         )
         (local.set $218
          (f64.const 0.3224670334241136)
         )
         (local.set $219
          (f64.add
           (local.get $217)
           (local.get $218)
          )
         )
         (local.set $220
          (f64.mul
           (local.get $198)
           (local.get $219)
          )
         )
         (f64.store offset=64
          (local.get $4)
          (local.get $220)
         )
         (local.set $221
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $222
          (f64.load offset=72
           (local.get $4)
          )
         )
         (local.set $223
          (f64.load offset=64
           (local.get $4)
          )
         )
         (local.set $224
          (f64.mul
           (local.get $221)
           (local.get $222)
          )
         )
         (local.set $225
          (f64.add
           (local.get $224)
           (local.get $223)
          )
         )
         (f64.store offset=80
          (local.get $4)
          (local.get $225)
         )
         (local.set $226
          (f64.load offset=80
           (local.get $4)
          )
         )
         (local.set $227
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $228
          (f64.const -0.5)
         )
         (local.set $229
          (f64.mul
           (local.get $227)
           (local.get $228)
          )
         )
         (local.set $230
          (f64.add
           (local.get $229)
           (local.get $226)
          )
         )
         (local.set $231
          (f64.load offset=40
           (local.get $4)
          )
         )
         (local.set $232
          (f64.add
           (local.get $231)
           (local.get $230)
          )
         )
         (f64.store offset=40
          (local.get $4)
          (local.get $232)
         )
         (br $label$25)
        )
        (local.set $233
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $234
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $235
         (f64.mul
          (local.get $233)
          (local.get $234)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $235)
        )
        (local.set $236
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $237
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $238
         (f64.mul
          (local.get $236)
          (local.get $237)
         )
        )
        (f64.store offset=32
         (local.get $4)
         (local.get $238)
        )
        (local.set $239
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $240
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $241
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $242
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $243
         (f64.const 3.1563207090362595e-04)
        )
        (local.set $244
         (f64.mul
          (local.get $242)
          (local.get $243)
         )
        )
        (local.set $245
         (f64.const -1.4034646998923284e-03)
        )
        (local.set $246
         (f64.add
          (local.get $244)
          (local.get $245)
         )
        )
        (local.set $247
         (f64.mul
          (local.get $241)
          (local.get $246)
         )
        )
        (local.set $248
         (f64.const 0.006100538702462913)
        )
        (local.set $249
         (f64.add
          (local.get $247)
          (local.get $248)
         )
        )
        (local.set $250
         (f64.mul
          (local.get $240)
          (local.get $249)
         )
        )
        (local.set $251
         (f64.const -0.032788541075985965)
        )
        (local.set $252
         (f64.add
          (local.get $250)
          (local.get $251)
         )
        )
        (local.set $253
         (f64.mul
          (local.get $239)
          (local.get $252)
         )
        )
        (local.set $254
         (f64.const 0.48383612272381005)
        )
        (local.set $255
         (f64.add
          (local.get $253)
          (local.get $254)
         )
        )
        (f64.store offset=72
         (local.get $4)
         (local.get $255)
        )
        (local.set $256
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $257
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $258
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $259
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $260
         (f64.const -3.1275416837512086e-04)
        )
        (local.set $261
         (f64.mul
          (local.get $259)
          (local.get $260)
         )
        )
        (local.set $262
         (f64.const 0.000881081882437654)
        )
        (local.set $263
         (f64.add
          (local.get $261)
          (local.get $262)
         )
        )
        (local.set $264
         (f64.mul
          (local.get $258)
          (local.get $263)
         )
        )
        (local.set $265
         (f64.const -3.6845201678113826e-03)
        )
        (local.set $266
         (f64.add
          (local.get $264)
          (local.get $265)
         )
        )
        (local.set $267
         (f64.mul
          (local.get $257)
          (local.get $266)
         )
        )
        (local.set $268
         (f64.const 0.01797067508118204)
        )
        (local.set $269
         (f64.add
          (local.get $267)
          (local.get $268)
         )
        )
        (local.set $270
         (f64.mul
          (local.get $256)
          (local.get $269)
         )
        )
        (local.set $271
         (f64.const -0.1475877229945939)
        )
        (local.set $272
         (f64.add
          (local.get $270)
          (local.get $271)
         )
        )
        (f64.store offset=64
         (local.get $4)
         (local.get $272)
        )
        (local.set $273
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $274
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $275
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $276
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $277
         (f64.const 3.355291926355191e-04)
        )
        (local.set $278
         (f64.mul
          (local.get $276)
          (local.get $277)
         )
        )
        (local.set $279
         (f64.const -5.385953053567405e-04)
        )
        (local.set $280
         (f64.add
          (local.get $278)
          (local.get $279)
         )
        )
        (local.set $281
         (f64.mul
          (local.get $275)
          (local.get $280)
         )
        )
        (local.set $282
         (f64.const 2.2596478090061247e-03)
        )
        (local.set $283
         (f64.add
          (local.get $281)
          (local.get $282)
         )
        )
        (local.set $284
         (f64.mul
          (local.get $274)
          (local.get $283)
         )
        )
        (local.set $285
         (f64.const -0.010314224129834144)
        )
        (local.set $286
         (f64.add
          (local.get $284)
          (local.get $285)
         )
        )
        (local.set $287
         (f64.mul
          (local.get $273)
          (local.get $286)
         )
        )
        (local.set $288
         (f64.const 0.06462494023913339)
        )
        (local.set $289
         (f64.add
          (local.get $287)
          (local.get $288)
         )
        )
        (f64.store offset=56
         (local.get $4)
         (local.get $289)
        )
        (local.set $290
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $291
         (f64.load offset=72
          (local.get $4)
         )
        )
        (local.set $292
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $293
         (f64.load offset=64
          (local.get $4)
         )
        )
        (local.set $294
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $295
         (f64.load offset=56
          (local.get $4)
         )
        )
        (local.set $296
         (f64.mul
          (local.get $294)
          (local.get $295)
         )
        )
        (local.set $297
         (f64.add
          (local.get $296)
          (local.get $293)
         )
        )
        (local.set $298
         (f64.neg
          (local.get $292)
         )
        )
        (local.set $299
         (f64.mul
          (local.get $298)
          (local.get $297)
         )
        )
        (local.set $300
         (f64.const -3.638676997039505e-18)
        )
        (local.set $301
         (f64.add
          (local.get $299)
          (local.get $300)
         )
        )
        (local.set $302
         (f64.neg
          (local.get $301)
         )
        )
        (local.set $303
         (f64.mul
          (local.get $290)
          (local.get $291)
         )
        )
        (local.set $304
         (f64.add
          (local.get $303)
          (local.get $302)
         )
        )
        (f64.store offset=80
         (local.get $4)
         (local.get $304)
        )
        (local.set $305
         (f64.load offset=80
          (local.get $4)
         )
        )
        (local.set $306
         (f64.const -0.12148629053584961)
        )
        (local.set $307
         (f64.add
          (local.get $306)
          (local.get $305)
         )
        )
        (local.set $308
         (f64.load offset=40
          (local.get $4)
         )
        )
        (local.set $309
         (f64.add
          (local.get $308)
          (local.get $307)
         )
        )
        (f64.store offset=40
         (local.get $4)
         (local.get $309)
        )
        (br $label$25)
       )
       (local.set $310
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $311
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $312
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $313
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $314
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $315
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $316
        (f64.const 0.013381091853678766)
       )
       (local.set $317
        (f64.mul
         (local.get $315)
         (local.get $316)
        )
       )
       (local.set $318
        (f64.const 0.22896372806469245)
       )
       (local.set $319
        (f64.add
         (local.get $317)
         (local.get $318)
        )
       )
       (local.set $320
        (f64.mul
         (local.get $314)
         (local.get $319)
        )
       )
       (local.set $321
        (f64.const 0.9777175279633727)
       )
       (local.set $322
        (f64.add
         (local.get $320)
         (local.get $321)
        )
       )
       (local.set $323
        (f64.mul
         (local.get $313)
         (local.get $322)
        )
       )
       (local.set $324
        (f64.const 1.4549225013723477)
       )
       (local.set $325
        (f64.add
         (local.get $323)
         (local.get $324)
        )
       )
       (local.set $326
        (f64.mul
         (local.get $312)
         (local.get $325)
        )
       )
       (local.set $327
        (f64.const 0.6328270640250934)
       )
       (local.set $328
        (f64.add
         (local.get $326)
         (local.get $327)
        )
       )
       (local.set $329
        (f64.mul
         (local.get $311)
         (local.get $328)
        )
       )
       (local.set $330
        (f64.const -0.07721566490153287)
       )
       (local.set $331
        (f64.add
         (local.get $329)
         (local.get $330)
        )
       )
       (local.set $332
        (f64.mul
         (local.get $310)
         (local.get $331)
        )
       )
       (f64.store offset=72
        (local.get $4)
        (local.get $332)
       )
       (local.set $333
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $334
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $335
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $336
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $337
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $338
        (f64.const 0.003217092422824239)
       )
       (local.set $339
        (f64.mul
         (local.get $337)
         (local.get $338)
        )
       )
       (local.set $340
        (f64.const 0.10422264559336913)
       )
       (local.set $341
        (f64.add
         (local.get $339)
         (local.get $340)
        )
       )
       (local.set $342
        (f64.mul
         (local.get $336)
         (local.get $341)
        )
       )
       (local.set $343
        (f64.const 0.7692851504566728)
       )
       (local.set $344
        (f64.add
         (local.get $342)
         (local.get $343)
        )
       )
       (local.set $345
        (f64.mul
         (local.get $335)
         (local.get $344)
        )
       )
       (local.set $346
        (f64.const 2.128489763798934)
       )
       (local.set $347
        (f64.add
         (local.get $345)
         (local.get $346)
        )
       )
       (local.set $348
        (f64.mul
         (local.get $334)
         (local.get $347)
        )
       )
       (local.set $349
        (f64.const 2.4559779371304113)
       )
       (local.set $350
        (f64.add
         (local.get $348)
         (local.get $349)
        )
       )
       (local.set $351
        (f64.mul
         (local.get $333)
         (local.get $350)
        )
       )
       (local.set $352
        (f64.const 1)
       )
       (local.set $353
        (f64.add
         (local.get $351)
         (local.get $352)
        )
       )
       (f64.store offset=64
        (local.get $4)
        (local.get $353)
       )
       (local.set $354
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $355
        (f64.load offset=72
         (local.get $4)
        )
       )
       (local.set $356
        (f64.load offset=64
         (local.get $4)
        )
       )
       (local.set $357
        (f64.div
         (local.get $355)
         (local.get $356)
        )
       )
       (local.set $358
        (f64.const -0.5)
       )
       (local.set $359
        (f64.mul
         (local.get $354)
         (local.get $358)
        )
       )
       (local.set $360
        (f64.add
         (local.get $359)
         (local.get $357)
        )
       )
       (local.set $361
        (f64.load offset=40
         (local.get $4)
        )
       )
       (local.set $362
        (f64.add
         (local.get $361)
         (local.get $360)
        )
       )
       (f64.store offset=40
        (local.get $4)
        (local.get $362)
       )
      )
      (br $label$13)
     )
     (local.set $363
      (i32.load offset=16
       (local.get $4)
      )
     )
     (local.set $364
      (i32.const 1075838976)
     )
     (local.set $365
      (local.get $363)
     )
     (local.set $366
      (local.get $364)
     )
     (local.set $367
      (i32.lt_s
       (local.get $365)
       (local.get $366)
      )
     )
     (local.set $368
      (i32.const 1)
     )
     (local.set $369
      (i32.and
       (local.get $367)
       (local.get $368)
      )
     )
     (block $label$29
      (block $label$30
       (br_if $label$30
        (i32.eqz
         (local.get $369)
        )
       )
       (local.set $370
        (f64.load offset=128
         (local.get $4)
        )
       )
       (local.set $371
        (f64.abs
         (local.get $370)
        )
       )
       (local.set $372
        (f64.const 2147483648)
       )
       (local.set $373
        (f64.lt
         (local.get $371)
         (local.get $372)
        )
       )
       (local.set $374
        (i32.eqz
         (local.get $373)
        )
       )
       (block $label$31
        (block $label$32
         (br_if $label$32
          (local.get $374)
         )
         (local.set $375
          (i32.trunc_f64_s
           (local.get $370)
          )
         )
         (local.set $376
          (local.get $375)
         )
         (br $label$31)
        )
        (local.set $377
         (i32.const -2147483648)
        )
        (local.set $376
         (local.get $377)
        )
       )
       (local.set $378
        (local.get $376)
       )
       (i32.store offset=24
        (local.get $4)
        (local.get $378)
       )
       (local.set $379
        (f64.load offset=128
         (local.get $4)
        )
       )
       (local.set $380
        (i32.load offset=24
         (local.get $4)
        )
       )
       (local.set $381
        (f64.convert_i32_s
         (local.get $380)
        )
       )
       (local.set $382
        (f64.sub
         (local.get $379)
         (local.get $381)
        )
       )
       (f64.store offset=104
        (local.get $4)
        (local.get $382)
       )
       (local.set $383
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $384
        (f64.const 3.194753265841009e-05)
       )
       (local.set $385
        (f64.mul
         (local.get $383)
         (local.get $384)
        )
       )
       (local.set $386
        (f64.const 1.8402845140733772e-03)
       )
       (local.set $387
        (f64.add
         (local.get $385)
         (local.get $386)
        )
       )
       (local.set $388
        (f64.mul
         (local.get $383)
         (local.get $387)
        )
       )
       (local.set $389
        (f64.const 0.02664227030336386)
       )
       (local.set $390
        (f64.add
         (local.get $388)
         (local.get $389)
        )
       )
       (local.set $391
        (f64.mul
         (local.get $383)
         (local.get $390)
        )
       )
       (local.set $392
        (f64.const 0.14635047265246445)
       )
       (local.set $393
        (f64.add
         (local.get $391)
         (local.get $392)
        )
       )
       (local.set $394
        (f64.mul
         (local.get $383)
         (local.get $393)
        )
       )
       (local.set $395
        (f64.const 0.325778796408931)
       )
       (local.set $396
        (f64.add
         (local.get $394)
         (local.get $395)
        )
       )
       (local.set $397
        (f64.mul
         (local.get $383)
         (local.get $396)
        )
       )
       (local.set $398
        (f64.const 0.21498241596060885)
       )
       (local.set $399
        (f64.add
         (local.get $397)
         (local.get $398)
        )
       )
       (local.set $400
        (f64.mul
         (local.get $383)
         (local.get $399)
        )
       )
       (local.set $401
        (f64.const -0.07721566490153287)
       )
       (local.set $402
        (f64.add
         (local.get $400)
         (local.get $401)
        )
       )
       (local.set $403
        (f64.mul
         (local.get $383)
         (local.get $402)
        )
       )
       (f64.store offset=80
        (local.get $4)
        (local.get $403)
       )
       (local.set $404
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $405
        (f64.const 7.326684307446256e-06)
       )
       (local.set $406
        (f64.mul
         (local.get $404)
         (local.get $405)
        )
       )
       (local.set $407
        (f64.const 7.779424963818936e-04)
       )
       (local.set $408
        (f64.add
         (local.get $406)
         (local.get $407)
        )
       )
       (local.set $409
        (f64.mul
         (local.get $404)
         (local.get $408)
        )
       )
       (local.set $410
        (f64.const 0.01864591917156529)
       )
       (local.set $411
        (f64.add
         (local.get $409)
         (local.get $410)
        )
       )
       (local.set $412
        (f64.mul
         (local.get $404)
         (local.get $411)
        )
       )
       (local.set $413
        (f64.const 0.17193386563280308)
       )
       (local.set $414
        (f64.add
         (local.get $412)
         (local.get $413)
        )
       )
       (local.set $415
        (f64.mul
         (local.get $404)
         (local.get $414)
        )
       )
       (local.set $416
        (f64.const 0.7219355475671381)
       )
       (local.set $417
        (f64.add
         (local.get $415)
         (local.get $416)
        )
       )
       (local.set $418
        (f64.mul
         (local.get $404)
         (local.get $417)
        )
       )
       (local.set $419
        (f64.const 1.3920053346762105)
       )
       (local.set $420
        (f64.add
         (local.get $418)
         (local.get $419)
        )
       )
       (local.set $421
        (f64.mul
         (local.get $404)
         (local.get $420)
        )
       )
       (local.set $422
        (f64.const 1)
       )
       (local.set $423
        (f64.add
         (local.get $421)
         (local.get $422)
        )
       )
       (f64.store offset=48
        (local.get $4)
        (local.get $423)
       )
       (local.set $424
        (f64.load offset=104
         (local.get $4)
        )
       )
       (local.set $425
        (f64.load offset=80
         (local.get $4)
        )
       )
       (local.set $426
        (f64.load offset=48
         (local.get $4)
        )
       )
       (local.set $427
        (f64.div
         (local.get $425)
         (local.get $426)
        )
       )
       (local.set $428
        (f64.const 0.5)
       )
       (local.set $429
        (f64.mul
         (local.get $424)
         (local.get $428)
        )
       )
       (local.set $430
        (f64.add
         (local.get $429)
         (local.get $427)
        )
       )
       (f64.store offset=40
        (local.get $4)
        (local.get $430)
       )
       (local.set $431
        (i64.const 4607182418800017408)
       )
       (i64.store offset=96
        (local.get $4)
        (local.get $431)
       )
       (local.set $432
        (i32.load offset=24
         (local.get $4)
        )
       )
       (local.set $433
        (i32.const -3)
       )
       (local.set $434
        (i32.add
         (local.get $432)
         (local.get $433)
        )
       )
       (local.set $435
        (i32.const 4)
       )
       (drop
        (i32.gt_u
         (local.get $434)
         (local.get $435)
        )
       )
       (block $label$33
        (block $label$34
         (block $label$35
          (block $label$36
           (block $label$37
            (block $label$38
             (br_table $label$34 $label$35 $label$36 $label$37 $label$38 $label$33
              (local.get $434)
             )
            )
            (local.set $436
             (f64.load offset=104
              (local.get $4)
             )
            )
            (local.set $437
             (f64.const 6)
            )
            (local.set $438
             (f64.add
              (local.get $436)
              (local.get $437)
             )
            )
            (local.set $439
             (f64.load offset=96
              (local.get $4)
             )
            )
            (local.set $440
             (f64.mul
              (local.get $439)
              (local.get $438)
             )
            )
            (f64.store offset=96
             (local.get $4)
             (local.get $440)
            )
           )
           (local.set $441
            (f64.load offset=104
             (local.get $4)
            )
           )
           (local.set $442
            (f64.const 5)
           )
           (local.set $443
            (f64.add
             (local.get $441)
             (local.get $442)
            )
           )
           (local.set $444
            (f64.load offset=96
             (local.get $4)
            )
           )
           (local.set $445
            (f64.mul
             (local.get $444)
             (local.get $443)
            )
           )
           (f64.store offset=96
            (local.get $4)
            (local.get $445)
           )
          )
          (local.set $446
           (f64.load offset=104
            (local.get $4)
           )
          )
          (local.set $447
           (f64.const 4)
          )
          (local.set $448
           (f64.add
            (local.get $446)
            (local.get $447)
           )
          )
          (local.set $449
           (f64.load offset=96
            (local.get $4)
           )
          )
          (local.set $450
           (f64.mul
            (local.get $449)
            (local.get $448)
           )
          )
          (f64.store offset=96
           (local.get $4)
           (local.get $450)
          )
         )
         (local.set $451
          (f64.load offset=104
           (local.get $4)
          )
         )
         (local.set $452
          (f64.const 3)
         )
         (local.set $453
          (f64.add
           (local.get $451)
           (local.get $452)
          )
         )
         (local.set $454
          (f64.load offset=96
           (local.get $4)
          )
         )
         (local.set $455
          (f64.mul
           (local.get $454)
           (local.get $453)
          )
         )
         (f64.store offset=96
          (local.get $4)
          (local.get $455)
         )
        )
        (local.set $456
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $457
         (f64.const 2)
        )
        (local.set $458
         (f64.add
          (local.get $456)
          (local.get $457)
         )
        )
        (local.set $459
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $460
         (f64.mul
          (local.get $459)
          (local.get $458)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $460)
        )
        (local.set $461
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $462
         (call $log
          (local.get $461)
         )
        )
        (local.set $463
         (f64.load offset=40
          (local.get $4)
         )
        )
        (local.set $464
         (f64.add
          (local.get $463)
          (local.get $462)
         )
        )
        (f64.store offset=40
         (local.get $4)
         (local.get $464)
        )
       )
       (br $label$29)
      )
      (local.set $465
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $466
       (i32.const 1133510656)
      )
      (local.set $467
       (local.get $465)
      )
      (local.set $468
       (local.get $466)
      )
      (local.set $469
       (i32.lt_s
        (local.get $467)
        (local.get $468)
       )
      )
      (local.set $470
       (i32.const 1)
      )
      (local.set $471
       (i32.and
        (local.get $469)
        (local.get $470)
       )
      )
      (block $label$39
       (block $label$40
        (br_if $label$40
         (i32.eqz
          (local.get $471)
         )
        )
        (local.set $472
         (f64.load offset=128
          (local.get $4)
         )
        )
        (local.set $473
         (call $log
          (local.get $472)
         )
        )
        (f64.store offset=112
         (local.get $4)
         (local.get $473)
        )
        (local.set $474
         (f64.load offset=128
          (local.get $4)
         )
        )
        (local.set $475
         (f64.const 1)
        )
        (local.set $476
         (f64.div
          (local.get $475)
          (local.get $474)
         )
        )
        (f64.store offset=96
         (local.get $4)
         (local.get $476)
        )
        (local.set $477
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $478
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $479
         (f64.mul
          (local.get $477)
          (local.get $478)
         )
        )
        (f64.store offset=104
         (local.get $4)
         (local.get $479)
        )
        (local.set $480
         (f64.load offset=96
          (local.get $4)
         )
        )
        (local.set $481
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $482
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $483
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $484
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $485
         (f64.load offset=104
          (local.get $4)
         )
        )
        (local.set $486
         (f64.const -1.6309293409657527e-03)
        )
        (local.set $487
         (f64.mul
          (local.get $485)
          (local.get $486)
         )
        )
        (local.set $488
         (f64.const 8.363399189962821e-04)
        )
        (local.set $489
         (f64.add
          (local.get $487)
          (local.get $488)
         )
        )
        (local.set $490
         (f64.mul
          (local.get $484)
          (local.get $489)
         )
        )
        (local.set $491
         (f64.const -0.00059518755745034)
        )
        (local.set $492
         (f64.add
          (local.get $490)
          (local.get $491)
         )
        )
        (local.set $493
         (f64.mul
          (local.get $483)
          (local.get $492)
         )
        )
        (local.set $494
         (f64.const 7.936505586430196e-04)
        )
        (local.set $495
         (f64.add
          (local.get $493)
          (local.get $494)
         )
        )
        (local.set $496
         (f64.mul
          (local.get $482)
          (local.get $495)
         )
        )
        (local.set $497
         (f64.const -2.7777777772877554e-03)
        )
        (local.set $498
         (f64.add
          (local.get $496)
          (local.get $497)
         )
        )
        (local.set $499
         (f64.mul
          (local.get $481)
          (local.get $498)
         )
        )
        (local.set $500
         (f64.const 0.08333333333333297)
        )
        (local.set $501
         (f64.add
          (local.get $499)
          (local.get $500)
         )
        )
        (local.set $502
         (f64.mul
          (local.get $480)
          (local.get $501)
         )
        )
        (local.set $503
         (f64.const 0.4189385332046727)
        )
        (local.set $504
         (f64.add
          (local.get $502)
          (local.get $503)
         )
        )
        (f64.store offset=32
         (local.get $4)
         (local.get $504)
        )
        (local.set $505
         (f64.load offset=128
          (local.get $4)
         )
        )
        (local.set $506
         (f64.const 0.5)
        )
        (local.set $507
         (f64.sub
          (local.get $505)
          (local.get $506)
         )
        )
        (local.set $508
         (f64.load offset=112
          (local.get $4)
         )
        )
        (local.set $509
         (f64.const 1)
        )
        (local.set $510
         (f64.sub
          (local.get $508)
          (local.get $509)
         )
        )
        (local.set $511
         (f64.load offset=32
          (local.get $4)
         )
        )
        (local.set $512
         (f64.mul
          (local.get $507)
          (local.get $510)
         )
        )
        (local.set $513
         (f64.add
          (local.get $512)
          (local.get $511)
         )
        )
        (f64.store offset=40
         (local.get $4)
         (local.get $513)
        )
        (br $label$39)
       )
       (local.set $514
        (f64.load offset=128
         (local.get $4)
        )
       )
       (local.set $515
        (f64.load offset=128
         (local.get $4)
        )
       )
       (local.set $516
        (call $log
         (local.get $515)
        )
       )
       (local.set $517
        (f64.const 1)
       )
       (local.set $518
        (f64.sub
         (local.get $516)
         (local.get $517)
        )
       )
       (local.set $519
        (f64.mul
         (local.get $514)
         (local.get $518)
        )
       )
       (f64.store offset=40
        (local.get $4)
        (local.get $519)
       )
      )
     )
    )
   )
   (local.set $520
    (i32.load offset=28
     (local.get $4)
    )
   )
   (local.set $521
    (i32.const 0)
   )
   (local.set $522
    (local.get $520)
   )
   (local.set $523
    (local.get $521)
   )
   (local.set $524
    (i32.lt_s
     (local.get $522)
     (local.get $523)
    )
   )
   (local.set $525
    (i32.const 1)
   )
   (local.set $526
    (i32.and
     (local.get $524)
     (local.get $525)
    )
   )
   (block $label$41
    (br_if $label$41
     (i32.eqz
      (local.get $526)
     )
    )
    (local.set $527
     (f64.load offset=88
      (local.get $4)
     )
    )
    (local.set $528
     (f64.load offset=40
      (local.get $4)
     )
    )
    (local.set $529
     (f64.sub
      (local.get $527)
      (local.get $528)
     )
    )
    (f64.store offset=40
     (local.get $4)
     (local.get $529)
    )
   )
   (local.set $530
    (f64.load offset=40
     (local.get $4)
    )
   )
   (f64.store offset=136
    (local.get $4)
    (local.get $530)
   )
  )
  (local.set $531
   (f64.load offset=136
    (local.get $4)
   )
  )
  (local.set $532
   (i32.const 144)
  )
  (local.set $533
   (i32.add
    (local.get $4)
    (local.get $532)
   )
  )
  (global.set $__stack_pointer
   (local.get $533)
  )
  (return
   (local.get $531)
  )
 )
 (func $sin_pi (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 i32)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 f64)
  (local $42 f64)
  (local $43 f64)
  (local $44 f64)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 f64)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 f64)
  (local $69 f64)
  (local $70 f64)
  (local $71 f64)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 f64)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 f64)
  (local $84 f64)
  (local $85 f64)
  (local $86 i32)
  (local $87 f64)
  (local $88 f64)
  (local $89 f64)
  (local $90 f64)
  (local $91 f64)
  (local $92 f64)
  (local $93 f64)
  (local $94 i32)
  (local $95 f64)
  (local $96 f64)
  (local $97 f64)
  (local $98 f64)
  (local $99 f64)
  (local $100 f64)
  (local $101 f64)
  (local $102 i32)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 f64)
  (local $110 i32)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 i32)
  (local $120 f64)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 f64)
  (local $125 i32)
  (local $126 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 64)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=48
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=48
    (local.get $3)
   )
  )
  (f64.store offset=16
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=20
    (local.get $3)
   )
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1070596096)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.lt_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f64.load offset=48
      (local.get $3)
     )
    )
    (local.set $17
     (f64.const 3.141592653589793)
    )
    (local.set $18
     (f64.mul
      (local.get $17)
      (local.get $16)
     )
    )
    (local.set $19
     (i32.const 0)
    )
    (local.set $20
     (f64.convert_i32_s
      (local.get $19)
     )
    )
    (local.set $21
     (call $__kernel_sin
      (local.get $18)
      (local.get $20)
      (local.get $19)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $21)
    )
    (br $label$1)
   )
   (local.set $22
    (f64.load offset=48
     (local.get $3)
    )
   )
   (local.set $23
    (f64.neg
     (local.get $22)
    )
   )
   (f64.store offset=40
    (local.get $3)
    (local.get $23)
   )
   (local.set $24
    (f64.load offset=40
     (local.get $3)
    )
   )
   (local.set $25
    (call $floor
     (local.get $24)
    )
   )
   (f64.store offset=32
    (local.get $3)
    (local.get $25)
   )
   (local.set $26
    (f64.load offset=32
     (local.get $3)
    )
   )
   (local.set $27
    (f64.load offset=40
     (local.get $3)
    )
   )
   (local.set $28
    (f64.ne
     (local.get $26)
     (local.get $27)
    )
   )
   (local.set $29
    (i32.const 1)
   )
   (local.set $30
    (i32.and
     (local.get $28)
     (local.get $29)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $30)
      )
     )
     (local.set $31
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $32
      (f64.const 0.5)
     )
     (local.set $33
      (f64.mul
       (local.get $31)
       (local.get $32)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $33)
     )
     (local.set $34
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $35
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $36
      (call $floor
       (local.get $35)
      )
     )
     (local.set $37
      (f64.sub
       (local.get $34)
       (local.get $36)
      )
     )
     (local.set $38
      (f64.const 2)
     )
     (local.set $39
      (f64.mul
       (local.get $38)
       (local.get $37)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $39)
     )
     (local.set $40
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $41
      (f64.const 4)
     )
     (local.set $42
      (f64.mul
       (local.get $40)
       (local.get $41)
      )
     )
     (local.set $43
      (f64.abs
       (local.get $42)
      )
     )
     (local.set $44
      (f64.const 2147483648)
     )
     (local.set $45
      (f64.lt
       (local.get $43)
       (local.get $44)
      )
     )
     (local.set $46
      (i32.eqz
       (local.get $45)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (local.get $46)
       )
       (local.set $47
        (i32.trunc_f64_s
         (local.get $42)
        )
       )
       (local.set $48
        (local.get $47)
       )
       (br $label$5)
      )
      (local.set $49
       (i32.const -2147483648)
      )
      (local.set $48
       (local.get $49)
      )
     )
     (local.set $50
      (local.get $48)
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $50)
     )
     (br $label$3)
    )
    (local.set $51
     (i32.load offset=24
      (local.get $3)
     )
    )
    (local.set $52
     (i32.const 1128267776)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (local.get $52)
    )
    (local.set $55
     (i32.ge_s
      (local.get $53)
      (local.get $54)
     )
    )
    (local.set $56
     (i32.const 1)
    )
    (local.set $57
     (i32.and
      (local.get $55)
      (local.get $56)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $57)
       )
      )
      (local.set $58
       (i32.const 0)
      )
      (local.set $59
       (f64.convert_i32_s
        (local.get $58)
       )
      )
      (f64.store offset=40
       (local.get $3)
       (local.get $59)
      )
      (local.set $60
       (i32.const 0)
      )
      (i32.store offset=28
       (local.get $3)
       (local.get $60)
      )
      (br $label$7)
     )
     (local.set $61
      (i32.load offset=24
       (local.get $3)
      )
     )
     (local.set $62
      (i32.const 1127219200)
     )
     (local.set $63
      (local.get $61)
     )
     (local.set $64
      (local.get $62)
     )
     (local.set $65
      (i32.lt_s
       (local.get $63)
       (local.get $64)
      )
     )
     (local.set $66
      (i32.const 1)
     )
     (local.set $67
      (i32.and
       (local.get $65)
       (local.get $66)
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.eqz
        (local.get $67)
       )
      )
      (local.set $68
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $69
       (f64.const 4503599627370496)
      )
      (local.set $70
       (f64.add
        (local.get $68)
        (local.get $69)
       )
      )
      (f64.store offset=32
       (local.get $3)
       (local.get $70)
      )
     )
     (local.set $71
      (f64.load offset=32
       (local.get $3)
      )
     )
     (f64.store offset=8
      (local.get $3)
      (local.get $71)
     )
     (local.set $72
      (i32.load offset=8
       (local.get $3)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $72)
     )
     (local.set $73
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $74
      (i32.const 1)
     )
     (local.set $75
      (i32.and
       (local.get $73)
       (local.get $74)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $75)
     )
     (local.set $76
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $77
      (f64.convert_i32_s
       (local.get $76)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $77)
     )
     (local.set $78
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $79
      (i32.const 2)
     )
     (local.set $80
      (i32.shl
       (local.get $78)
       (local.get $79)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $80)
     )
    )
   )
   (local.set $81
    (i32.load offset=28
     (local.get $3)
    )
   )
   (local.set $82
    (i32.const 6)
   )
   (drop
    (i32.gt_u
     (local.get $81)
     (local.get $82)
    )
   )
   (block $label$10
    (block $label$11
     (block $label$12
      (block $label$13
       (block $label$14
        (block $label$15
         (br_table $label$15 $label$14 $label$14 $label$13 $label$13 $label$12 $label$12 $label$11
          (local.get $81)
         )
        )
        (local.set $83
         (f64.load offset=40
          (local.get $3)
         )
        )
        (local.set $84
         (f64.const 3.141592653589793)
        )
        (local.set $85
         (f64.mul
          (local.get $84)
          (local.get $83)
         )
        )
        (local.set $86
         (i32.const 0)
        )
        (local.set $87
         (f64.convert_i32_s
          (local.get $86)
         )
        )
        (local.set $88
         (call $__kernel_sin
          (local.get $85)
          (local.get $87)
          (local.get $86)
         )
        )
        (f64.store offset=40
         (local.get $3)
         (local.get $88)
        )
        (br $label$10)
       )
       (local.set $89
        (f64.load offset=40
         (local.get $3)
        )
       )
       (local.set $90
        (f64.const 0.5)
       )
       (local.set $91
        (f64.sub
         (local.get $90)
         (local.get $89)
        )
       )
       (local.set $92
        (f64.const 3.141592653589793)
       )
       (local.set $93
        (f64.mul
         (local.get $92)
         (local.get $91)
        )
       )
       (local.set $94
        (i32.const 0)
       )
       (local.set $95
        (f64.convert_i32_s
         (local.get $94)
        )
       )
       (local.set $96
        (call $__kernel_cos
         (local.get $93)
         (local.get $95)
        )
       )
       (f64.store offset=40
        (local.get $3)
        (local.get $96)
       )
       (br $label$10)
      )
      (local.set $97
       (f64.load offset=40
        (local.get $3)
       )
      )
      (local.set $98
       (f64.const 1)
      )
      (local.set $99
       (f64.sub
        (local.get $98)
        (local.get $97)
       )
      )
      (local.set $100
       (f64.const 3.141592653589793)
      )
      (local.set $101
       (f64.mul
        (local.get $100)
        (local.get $99)
       )
      )
      (local.set $102
       (i32.const 0)
      )
      (local.set $103
       (f64.convert_i32_s
        (local.get $102)
       )
      )
      (local.set $104
       (call $__kernel_sin
        (local.get $101)
        (local.get $103)
        (local.get $102)
       )
      )
      (f64.store offset=40
       (local.get $3)
       (local.get $104)
      )
      (br $label$10)
     )
     (local.set $105
      (f64.load offset=40
       (local.get $3)
      )
     )
     (local.set $106
      (f64.const 1.5)
     )
     (local.set $107
      (f64.sub
       (local.get $105)
       (local.get $106)
      )
     )
     (local.set $108
      (f64.const 3.141592653589793)
     )
     (local.set $109
      (f64.mul
       (local.get $108)
       (local.get $107)
      )
     )
     (local.set $110
      (i32.const 0)
     )
     (local.set $111
      (f64.convert_i32_s
       (local.get $110)
      )
     )
     (local.set $112
      (call $__kernel_cos
       (local.get $109)
       (local.get $111)
      )
     )
     (local.set $113
      (f64.neg
       (local.get $112)
      )
     )
     (f64.store offset=40
      (local.get $3)
      (local.get $113)
     )
     (br $label$10)
    )
    (local.set $114
     (f64.load offset=40
      (local.get $3)
     )
    )
    (local.set $115
     (f64.const 2)
    )
    (local.set $116
     (f64.sub
      (local.get $114)
      (local.get $115)
     )
    )
    (local.set $117
     (f64.const 3.141592653589793)
    )
    (local.set $118
     (f64.mul
      (local.get $117)
      (local.get $116)
     )
    )
    (local.set $119
     (i32.const 0)
    )
    (local.set $120
     (f64.convert_i32_s
      (local.get $119)
     )
    )
    (local.set $121
     (call $__kernel_sin
      (local.get $118)
      (local.get $120)
      (local.get $119)
     )
    )
    (f64.store offset=40
     (local.get $3)
     (local.get $121)
    )
   )
   (local.set $122
    (f64.load offset=40
     (local.get $3)
    )
   )
   (local.set $123
    (f64.neg
     (local.get $122)
    )
   )
   (f64.store offset=56
    (local.get $3)
    (local.get $123)
   )
  )
  (local.set $124
   (f64.load offset=56
    (local.get $3)
   )
  )
  (local.set $125
   (i32.const 64)
  )
  (local.set $126
   (i32.add
    (local.get $3)
    (local.get $125)
   )
  )
  (global.set $__stack_pointer
   (local.get $126)
  )
  (return
   (local.get $124)
  )
 )
 (func $lgammaf (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 16)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=12
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=12
    (local.get $3)
   )
  )
  (local.set $5
   (i32.const 11160)
  )
  (local.set $6
   (call $lgammaf_r
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $7
   (i32.const 16)
  )
  (local.set $8
   (i32.add
    (local.get $3)
    (local.get $7)
   )
  )
  (global.set $__stack_pointer
   (local.get $8)
  )
  (return
   (local.get $6)
  )
 )
 (func $lgammaf_r (param $0 f32) (param $1 i32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 i32)
  (local $23 f32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 f32)
  (local $45 f32)
  (local $46 f32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 f32)
  (local $62 f32)
  (local $63 f32)
  (local $64 f32)
  (local $65 i32)
  (local $66 f32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 f32)
  (local $71 f32)
  (local $72 f32)
  (local $73 f32)
  (local $74 f32)
  (local $75 f32)
  (local $76 f32)
  (local $77 f32)
  (local $78 f32)
  (local $79 i32)
  (local $80 f32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 f32)
  (local $87 f32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 f32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 f32)
  (local $119 f32)
  (local $120 f32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 f32)
  (local $129 f32)
  (local $130 f32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 f32)
  (local $140 f32)
  (local $141 f32)
  (local $142 i32)
  (local $143 f32)
  (local $144 i32)
  (local $145 i32)
  (local $146 f32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 f32)
  (local $155 f32)
  (local $156 f32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 f32)
  (local $166 f32)
  (local $167 f32)
  (local $168 i32)
  (local $169 f32)
  (local $170 f32)
  (local $171 f32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 f32)
  (local $176 f32)
  (local $177 f32)
  (local $178 f32)
  (local $179 f32)
  (local $180 f32)
  (local $181 f32)
  (local $182 f32)
  (local $183 f32)
  (local $184 f32)
  (local $185 f32)
  (local $186 f32)
  (local $187 f32)
  (local $188 f32)
  (local $189 f32)
  (local $190 f32)
  (local $191 f32)
  (local $192 f32)
  (local $193 f32)
  (local $194 f32)
  (local $195 f32)
  (local $196 f32)
  (local $197 f32)
  (local $198 f32)
  (local $199 f32)
  (local $200 f32)
  (local $201 f32)
  (local $202 f32)
  (local $203 f32)
  (local $204 f32)
  (local $205 f32)
  (local $206 f32)
  (local $207 f32)
  (local $208 f32)
  (local $209 f32)
  (local $210 f32)
  (local $211 f32)
  (local $212 f32)
  (local $213 f32)
  (local $214 f32)
  (local $215 f32)
  (local $216 f32)
  (local $217 f32)
  (local $218 f32)
  (local $219 f32)
  (local $220 f32)
  (local $221 f32)
  (local $222 f32)
  (local $223 f32)
  (local $224 f32)
  (local $225 f32)
  (local $226 f32)
  (local $227 f32)
  (local $228 f32)
  (local $229 f32)
  (local $230 f32)
  (local $231 f32)
  (local $232 f32)
  (local $233 f32)
  (local $234 f32)
  (local $235 f32)
  (local $236 f32)
  (local $237 f32)
  (local $238 f32)
  (local $239 f32)
  (local $240 f32)
  (local $241 f32)
  (local $242 f32)
  (local $243 f32)
  (local $244 f32)
  (local $245 f32)
  (local $246 f32)
  (local $247 f32)
  (local $248 f32)
  (local $249 f32)
  (local $250 f32)
  (local $251 f32)
  (local $252 f32)
  (local $253 f32)
  (local $254 f32)
  (local $255 f32)
  (local $256 f32)
  (local $257 f32)
  (local $258 f32)
  (local $259 f32)
  (local $260 f32)
  (local $261 f32)
  (local $262 f32)
  (local $263 f32)
  (local $264 f32)
  (local $265 f32)
  (local $266 f32)
  (local $267 f32)
  (local $268 f32)
  (local $269 f32)
  (local $270 f32)
  (local $271 f32)
  (local $272 f32)
  (local $273 f32)
  (local $274 f32)
  (local $275 f32)
  (local $276 f32)
  (local $277 f32)
  (local $278 f32)
  (local $279 f32)
  (local $280 f32)
  (local $281 f32)
  (local $282 f32)
  (local $283 f32)
  (local $284 f32)
  (local $285 f32)
  (local $286 f32)
  (local $287 f32)
  (local $288 f32)
  (local $289 f32)
  (local $290 f32)
  (local $291 f32)
  (local $292 f32)
  (local $293 f32)
  (local $294 f32)
  (local $295 f32)
  (local $296 f32)
  (local $297 f32)
  (local $298 f32)
  (local $299 f32)
  (local $300 f32)
  (local $301 f32)
  (local $302 f32)
  (local $303 f32)
  (local $304 f32)
  (local $305 f32)
  (local $306 f32)
  (local $307 f32)
  (local $308 f32)
  (local $309 f32)
  (local $310 f32)
  (local $311 f32)
  (local $312 f32)
  (local $313 f32)
  (local $314 f32)
  (local $315 f32)
  (local $316 f32)
  (local $317 f32)
  (local $318 f32)
  (local $319 f32)
  (local $320 f32)
  (local $321 f32)
  (local $322 f32)
  (local $323 f32)
  (local $324 f32)
  (local $325 f32)
  (local $326 f32)
  (local $327 f32)
  (local $328 f32)
  (local $329 f32)
  (local $330 f32)
  (local $331 f32)
  (local $332 f32)
  (local $333 f32)
  (local $334 f32)
  (local $335 f32)
  (local $336 f32)
  (local $337 f32)
  (local $338 f32)
  (local $339 f32)
  (local $340 f32)
  (local $341 f32)
  (local $342 f32)
  (local $343 f32)
  (local $344 f32)
  (local $345 f32)
  (local $346 f32)
  (local $347 f32)
  (local $348 f32)
  (local $349 f32)
  (local $350 f32)
  (local $351 f32)
  (local $352 f32)
  (local $353 f32)
  (local $354 f32)
  (local $355 f32)
  (local $356 f32)
  (local $357 f32)
  (local $358 f32)
  (local $359 f32)
  (local $360 f32)
  (local $361 f32)
  (local $362 f32)
  (local $363 f32)
  (local $364 i32)
  (local $365 i32)
  (local $366 i32)
  (local $367 i32)
  (local $368 i32)
  (local $369 i32)
  (local $370 i32)
  (local $371 f32)
  (local $372 f32)
  (local $373 f32)
  (local $374 i32)
  (local $375 i32)
  (local $376 i32)
  (local $377 i32)
  (local $378 i32)
  (local $379 i32)
  (local $380 f32)
  (local $381 i32)
  (local $382 f32)
  (local $383 f32)
  (local $384 f32)
  (local $385 f32)
  (local $386 f32)
  (local $387 f32)
  (local $388 f32)
  (local $389 f32)
  (local $390 f32)
  (local $391 f32)
  (local $392 f32)
  (local $393 f32)
  (local $394 f32)
  (local $395 f32)
  (local $396 f32)
  (local $397 f32)
  (local $398 f32)
  (local $399 f32)
  (local $400 f32)
  (local $401 f32)
  (local $402 f32)
  (local $403 f32)
  (local $404 f32)
  (local $405 f32)
  (local $406 f32)
  (local $407 f32)
  (local $408 f32)
  (local $409 f32)
  (local $410 f32)
  (local $411 f32)
  (local $412 f32)
  (local $413 f32)
  (local $414 f32)
  (local $415 f32)
  (local $416 f32)
  (local $417 f32)
  (local $418 f32)
  (local $419 f32)
  (local $420 f32)
  (local $421 f32)
  (local $422 f32)
  (local $423 f32)
  (local $424 f32)
  (local $425 f32)
  (local $426 f32)
  (local $427 f32)
  (local $428 f32)
  (local $429 f32)
  (local $430 f32)
  (local $431 f32)
  (local $432 i32)
  (local $433 i32)
  (local $434 i32)
  (local $435 i32)
  (local $436 i32)
  (local $437 f32)
  (local $438 f32)
  (local $439 f32)
  (local $440 f32)
  (local $441 f32)
  (local $442 f32)
  (local $443 f32)
  (local $444 f32)
  (local $445 f32)
  (local $446 f32)
  (local $447 f32)
  (local $448 f32)
  (local $449 f32)
  (local $450 f32)
  (local $451 f32)
  (local $452 f32)
  (local $453 f32)
  (local $454 f32)
  (local $455 f32)
  (local $456 f32)
  (local $457 f32)
  (local $458 f32)
  (local $459 f32)
  (local $460 f32)
  (local $461 f32)
  (local $462 f32)
  (local $463 f32)
  (local $464 f32)
  (local $465 f32)
  (local $466 i32)
  (local $467 i32)
  (local $468 i32)
  (local $469 i32)
  (local $470 i32)
  (local $471 i32)
  (local $472 i32)
  (local $473 f32)
  (local $474 f32)
  (local $475 f32)
  (local $476 f32)
  (local $477 f32)
  (local $478 f32)
  (local $479 f32)
  (local $480 f32)
  (local $481 f32)
  (local $482 f32)
  (local $483 f32)
  (local $484 f32)
  (local $485 f32)
  (local $486 f32)
  (local $487 f32)
  (local $488 f32)
  (local $489 f32)
  (local $490 f32)
  (local $491 f32)
  (local $492 f32)
  (local $493 f32)
  (local $494 f32)
  (local $495 f32)
  (local $496 f32)
  (local $497 f32)
  (local $498 f32)
  (local $499 f32)
  (local $500 f32)
  (local $501 f32)
  (local $502 f32)
  (local $503 f32)
  (local $504 f32)
  (local $505 f32)
  (local $506 f32)
  (local $507 f32)
  (local $508 f32)
  (local $509 f32)
  (local $510 f32)
  (local $511 f32)
  (local $512 f32)
  (local $513 f32)
  (local $514 f32)
  (local $515 f32)
  (local $516 f32)
  (local $517 f32)
  (local $518 f32)
  (local $519 f32)
  (local $520 f32)
  (local $521 i32)
  (local $522 i32)
  (local $523 i32)
  (local $524 i32)
  (local $525 i32)
  (local $526 i32)
  (local $527 i32)
  (local $528 f32)
  (local $529 f32)
  (local $530 f32)
  (local $531 f32)
  (local $532 f32)
  (local $533 i32)
  (local $534 i32)
  (local.set $2
   (global.get $__stack_pointer)
  )
  (local.set $3
   (i32.const 80)
  )
  (local.set $4
   (i32.sub
    (local.get $2)
    (local.get $3)
   )
  )
  (global.set $__stack_pointer
   (local.get $4)
  )
  (f32.store offset=72
   (local.get $4)
   (local.get $0)
  )
  (i32.store offset=68
   (local.get $4)
   (local.get $1)
  )
  (local.set $5
   (f32.load offset=72
    (local.get $4)
   )
  )
  (f32.store offset=8
   (local.get $4)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=8
    (local.get $4)
   )
  )
  (i32.store offset=20
   (local.get $4)
   (local.get $6)
  )
  (local.set $7
   (i32.load offset=68
    (local.get $4)
   )
  )
  (local.set $8
   (i32.const 1)
  )
  (i32.store
   (local.get $7)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=20
    (local.get $4)
   )
  )
  (local.set $10
   (i32.const 2147483647)
  )
  (local.set $11
   (i32.and
    (local.get $9)
    (local.get $10)
   )
  )
  (i32.store offset=12
   (local.get $4)
   (local.get $11)
  )
  (local.set $12
   (i32.load offset=12
    (local.get $4)
   )
  )
  (local.set $13
   (i32.const 2139095040)
  )
  (local.set $14
   (local.get $12)
  )
  (local.set $15
   (local.get $13)
  )
  (local.set $16
   (i32.ge_s
    (local.get $14)
    (local.get $15)
   )
  )
  (local.set $17
   (i32.const 1)
  )
  (local.set $18
   (i32.and
    (local.get $16)
    (local.get $17)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $18)
     )
    )
    (local.set $19
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $20
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $21
     (f32.mul
      (local.get $19)
      (local.get $20)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $21)
    )
    (br $label$1)
   )
   (local.set $22
    (i32.load offset=12
     (local.get $4)
    )
   )
   (block $label$3
    (br_if $label$3
     (local.get $22)
    )
    (local.set $23
     (f32.const inf)
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $23)
    )
    (br $label$1)
   )
   (local.set $24
    (i32.load offset=12
     (local.get $4)
    )
   )
   (local.set $25
    (i32.const 889192448)
   )
   (local.set $26
    (local.get $24)
   )
   (local.set $27
    (local.get $25)
   )
   (local.set $28
    (i32.lt_s
     (local.get $26)
     (local.get $27)
    )
   )
   (local.set $29
    (i32.const 1)
   )
   (local.set $30
    (i32.and
     (local.get $28)
     (local.get $29)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (local.get $30)
     )
    )
    (local.set $31
     (i32.load offset=20
      (local.get $4)
     )
    )
    (local.set $32
     (i32.const 0)
    )
    (local.set $33
     (local.get $31)
    )
    (local.set $34
     (local.get $32)
    )
    (local.set $35
     (i32.lt_s
      (local.get $33)
      (local.get $34)
     )
    )
    (local.set $36
     (i32.const 1)
    )
    (local.set $37
     (i32.and
      (local.get $35)
      (local.get $36)
     )
    )
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (local.get $37)
      )
     )
     (local.set $38
      (i32.load offset=68
       (local.get $4)
      )
     )
     (local.set $39
      (i32.const -1)
     )
     (i32.store
      (local.get $38)
      (local.get $39)
     )
     (local.set $40
      (f32.load offset=72
       (local.get $4)
      )
     )
     (local.set $41
      (f32.neg
       (local.get $40)
      )
     )
     (local.set $42
      (call $logf
       (local.get $41)
      )
     )
     (local.set $43
      (f32.neg
       (local.get $42)
      )
     )
     (f32.store offset=76
      (local.get $4)
      (local.get $43)
     )
     (br $label$1)
    )
    (local.set $44
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $45
     (call $logf
      (local.get $44)
     )
    )
    (local.set $46
     (f32.neg
      (local.get $45)
     )
    )
    (f32.store offset=76
     (local.get $4)
     (local.get $46)
    )
    (br $label$1)
   )
   (local.set $47
    (i32.load offset=20
     (local.get $4)
    )
   )
   (local.set $48
    (i32.const 0)
   )
   (local.set $49
    (local.get $47)
   )
   (local.set $50
    (local.get $48)
   )
   (local.set $51
    (i32.lt_s
     (local.get $49)
     (local.get $50)
    )
   )
   (local.set $52
    (i32.const 1)
   )
   (local.set $53
    (i32.and
     (local.get $51)
     (local.get $52)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $53)
     )
    )
    (local.set $54
     (i32.load offset=12
      (local.get $4)
     )
    )
    (local.set $55
     (i32.const 1258291200)
    )
    (local.set $56
     (local.get $54)
    )
    (local.set $57
     (local.get $55)
    )
    (local.set $58
     (i32.ge_s
      (local.get $56)
      (local.get $57)
     )
    )
    (local.set $59
     (i32.const 1)
    )
    (local.set $60
     (i32.and
      (local.get $58)
      (local.get $59)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $60)
      )
     )
     (local.set $61
      (f32.const inf)
     )
     (f32.store offset=76
      (local.get $4)
      (local.get $61)
     )
     (br $label$1)
    )
    (local.set $62
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $63
     (call $sin_pif
      (local.get $62)
     )
    )
    (f32.store offset=64
     (local.get $4)
     (local.get $63)
    )
    (local.set $64
     (f32.load offset=64
      (local.get $4)
     )
    )
    (local.set $65
     (i32.const 0)
    )
    (local.set $66
     (f32.convert_i32_s
      (local.get $65)
     )
    )
    (local.set $67
     (f32.eq
      (local.get $64)
      (local.get $66)
     )
    )
    (local.set $68
     (i32.const 1)
    )
    (local.set $69
     (i32.and
      (local.get $67)
      (local.get $68)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.get $69)
      )
     )
     (local.set $70
      (f32.const inf)
     )
     (f32.store offset=76
      (local.get $4)
      (local.get $70)
     )
     (br $label$1)
    )
    (local.set $71
     (f32.load offset=64
      (local.get $4)
     )
    )
    (local.set $72
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $73
     (f32.mul
      (local.get $71)
      (local.get $72)
     )
    )
    (local.set $74
     (call $fabsf
      (local.get $73)
     )
    )
    (local.set $75
     (f32.const 3.1415927410125732)
    )
    (local.set $76
     (f32.div
      (local.get $75)
      (local.get $74)
     )
    )
    (local.set $77
     (call $logf
      (local.get $76)
     )
    )
    (f32.store offset=52
     (local.get $4)
     (local.get $77)
    )
    (local.set $78
     (f32.load offset=64
      (local.get $4)
     )
    )
    (local.set $79
     (i32.const 0)
    )
    (local.set $80
     (f32.convert_i32_s
      (local.get $79)
     )
    )
    (local.set $81
     (f32.lt
      (local.get $78)
      (local.get $80)
     )
    )
    (local.set $82
     (i32.const 1)
    )
    (local.set $83
     (i32.and
      (local.get $81)
      (local.get $82)
     )
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (local.get $83)
      )
     )
     (local.set $84
      (i32.load offset=68
       (local.get $4)
      )
     )
     (local.set $85
      (i32.const -1)
     )
     (i32.store
      (local.get $84)
      (local.get $85)
     )
    )
    (local.set $86
     (f32.load offset=72
      (local.get $4)
     )
    )
    (local.set $87
     (f32.neg
      (local.get $86)
     )
    )
    (f32.store offset=72
     (local.get $4)
     (local.get $87)
    )
   )
   (local.set $88
    (i32.load offset=12
     (local.get $4)
    )
   )
   (local.set $89
    (i32.const 1065353216)
   )
   (local.set $90
    (local.get $88)
   )
   (local.set $91
    (local.get $89)
   )
   (local.set $92
    (i32.eq
     (local.get $90)
     (local.get $91)
    )
   )
   (local.set $93
    (i32.const 1)
   )
   (local.set $94
    (i32.and
     (local.get $92)
     (local.get $93)
    )
   )
   (block $label$10
    (block $label$11
     (block $label$12
      (br_if $label$12
       (local.get $94)
      )
      (local.set $95
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $96
       (i32.const 1073741824)
      )
      (local.set $97
       (local.get $95)
      )
      (local.set $98
       (local.get $96)
      )
      (local.set $99
       (i32.eq
        (local.get $97)
        (local.get $98)
       )
      )
      (local.set $100
       (i32.const 1)
      )
      (local.set $101
       (i32.and
        (local.get $99)
        (local.get $100)
       )
      )
      (br_if $label$11
       (i32.eqz
        (local.get $101)
       )
      )
     )
     (local.set $102
      (i32.const 0)
     )
     (local.set $103
      (f32.convert_i32_s
       (local.get $102)
      )
     )
     (f32.store offset=28
      (local.get $4)
      (local.get $103)
     )
     (br $label$10)
    )
    (local.set $104
     (i32.load offset=12
      (local.get $4)
     )
    )
    (local.set $105
     (i32.const 1073741824)
    )
    (local.set $106
     (local.get $104)
    )
    (local.set $107
     (local.get $105)
    )
    (local.set $108
     (i32.lt_s
      (local.get $106)
      (local.get $107)
     )
    )
    (local.set $109
     (i32.const 1)
    )
    (local.set $110
     (i32.and
      (local.get $108)
      (local.get $109)
     )
    )
    (block $label$13
     (block $label$14
      (br_if $label$14
       (i32.eqz
        (local.get $110)
       )
      )
      (local.set $111
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $112
       (i32.const 1063675494)
      )
      (local.set $113
       (local.get $111)
      )
      (local.set $114
       (local.get $112)
      )
      (local.set $115
       (i32.le_s
        (local.get $113)
        (local.get $114)
       )
      )
      (local.set $116
       (i32.const 1)
      )
      (local.set $117
       (i32.and
        (local.get $115)
        (local.get $116)
       )
      )
      (block $label$15
       (block $label$16
        (br_if $label$16
         (i32.eqz
          (local.get $117)
         )
        )
        (local.set $118
         (f32.load offset=72
          (local.get $4)
         )
        )
        (local.set $119
         (call $logf
          (local.get $118)
         )
        )
        (local.set $120
         (f32.neg
          (local.get $119)
         )
        )
        (f32.store offset=28
         (local.get $4)
         (local.get $120)
        )
        (local.set $121
         (i32.load offset=12
          (local.get $4)
         )
        )
        (local.set $122
         (i32.const 1060850208)
        )
        (local.set $123
         (local.get $121)
        )
        (local.set $124
         (local.get $122)
        )
        (local.set $125
         (i32.ge_s
          (local.get $123)
          (local.get $124)
         )
        )
        (local.set $126
         (i32.const 1)
        )
        (local.set $127
         (i32.and
          (local.get $125)
          (local.get $126)
         )
        )
        (block $label$17
         (block $label$18
          (br_if $label$18
           (i32.eqz
            (local.get $127)
           )
          )
          (local.set $128
           (f32.load offset=72
            (local.get $4)
           )
          )
          (local.set $129
           (f32.const 1)
          )
          (local.set $130
           (f32.sub
            (local.get $129)
            (local.get $128)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $130)
          )
          (local.set $131
           (i32.const 0)
          )
          (i32.store offset=16
           (local.get $4)
           (local.get $131)
          )
          (br $label$17)
         )
         (local.set $132
          (i32.load offset=12
           (local.get $4)
          )
         )
         (local.set $133
          (i32.const 1047343880)
         )
         (local.set $134
          (local.get $132)
         )
         (local.set $135
          (local.get $133)
         )
         (local.set $136
          (i32.ge_s
           (local.get $134)
           (local.get $135)
          )
         )
         (local.set $137
          (i32.const 1)
         )
         (local.set $138
          (i32.and
           (local.get $136)
           (local.get $137)
          )
         )
         (block $label$19
          (block $label$20
           (br_if $label$20
            (i32.eqz
             (local.get $138)
            )
           )
           (local.set $139
            (f32.load offset=72
             (local.get $4)
            )
           )
           (local.set $140
            (f32.const 0.4616321325302124)
           )
           (local.set $141
            (f32.sub
             (local.get $139)
             (local.get $140)
            )
           )
           (f32.store offset=60
            (local.get $4)
            (local.get $141)
           )
           (local.set $142
            (i32.const 1)
           )
           (i32.store offset=16
            (local.get $4)
            (local.get $142)
           )
           (br $label$19)
          )
          (local.set $143
           (f32.load offset=72
            (local.get $4)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $143)
          )
          (local.set $144
           (i32.const 2)
          )
          (i32.store offset=16
           (local.get $4)
           (local.get $144)
          )
         )
        )
        (br $label$15)
       )
       (local.set $145
        (i32.const 0)
       )
       (local.set $146
        (f32.convert_i32_s
         (local.get $145)
        )
       )
       (f32.store offset=28
        (local.get $4)
        (local.get $146)
       )
       (local.set $147
        (i32.load offset=12
         (local.get $4)
        )
       )
       (local.set $148
        (i32.const 1071490584)
       )
       (local.set $149
        (local.get $147)
       )
       (local.set $150
        (local.get $148)
       )
       (local.set $151
        (i32.ge_s
         (local.get $149)
         (local.get $150)
        )
       )
       (local.set $152
        (i32.const 1)
       )
       (local.set $153
        (i32.and
         (local.get $151)
         (local.get $152)
        )
       )
       (block $label$21
        (block $label$22
         (br_if $label$22
          (i32.eqz
           (local.get $153)
          )
         )
         (local.set $154
          (f32.load offset=72
           (local.get $4)
          )
         )
         (local.set $155
          (f32.const 2)
         )
         (local.set $156
          (f32.sub
           (local.get $155)
           (local.get $154)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $156)
         )
         (local.set $157
          (i32.const 0)
         )
         (i32.store offset=16
          (local.get $4)
          (local.get $157)
         )
         (br $label$21)
        )
        (local.set $158
         (i32.load offset=12
          (local.get $4)
         )
        )
        (local.set $159
         (i32.const 1067296288)
        )
        (local.set $160
         (local.get $158)
        )
        (local.set $161
         (local.get $159)
        )
        (local.set $162
         (i32.ge_s
          (local.get $160)
          (local.get $161)
         )
        )
        (local.set $163
         (i32.const 1)
        )
        (local.set $164
         (i32.and
          (local.get $162)
          (local.get $163)
         )
        )
        (block $label$23
         (block $label$24
          (br_if $label$24
           (i32.eqz
            (local.get $164)
           )
          )
          (local.set $165
           (f32.load offset=72
            (local.get $4)
           )
          )
          (local.set $166
           (f32.const 1.4616321325302124)
          )
          (local.set $167
           (f32.sub
            (local.get $165)
            (local.get $166)
           )
          )
          (f32.store offset=60
           (local.get $4)
           (local.get $167)
          )
          (local.set $168
           (i32.const 1)
          )
          (i32.store offset=16
           (local.get $4)
           (local.get $168)
          )
          (br $label$23)
         )
         (local.set $169
          (f32.load offset=72
           (local.get $4)
          )
         )
         (local.set $170
          (f32.const 1)
         )
         (local.set $171
          (f32.sub
           (local.get $169)
           (local.get $170)
          )
         )
         (f32.store offset=60
          (local.get $4)
          (local.get $171)
         )
         (local.set $172
          (i32.const 2)
         )
         (i32.store offset=16
          (local.get $4)
          (local.get $172)
         )
        )
       )
      )
      (local.set $173
       (i32.load offset=16
        (local.get $4)
       )
      )
      (local.set $174
       (i32.const 2)
      )
      (drop
       (i32.gt_u
        (local.get $173)
        (local.get $174)
       )
      )
      (block $label$25
       (block $label$26
        (block $label$27
         (block $label$28
          (br_table $label$28 $label$27 $label$26 $label$25
           (local.get $173)
          )
         )
         (local.set $175
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $176
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $177
          (f32.mul
           (local.get $175)
           (local.get $176)
          )
         )
         (f32.store offset=56
          (local.get $4)
          (local.get $177)
         )
         (local.set $178
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $179
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $180
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $181
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $182
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $183
          (f32.const 2.5214456400135532e-05)
         )
         (local.set $184
          (f32.mul
           (local.get $182)
           (local.get $183)
          )
         )
         (local.set $185
          (f32.const 2.2086278477218002e-04)
         )
         (local.set $186
          (f32.add
           (local.get $184)
           (local.get $185)
          )
         )
         (local.set $187
          (f32.mul
           (local.get $181)
           (local.get $186)
          )
         )
         (local.set $188
          (f32.const 1.1927076848223805e-03)
         )
         (local.set $189
          (f32.add
           (local.get $187)
           (local.get $188)
          )
         )
         (local.set $190
          (f32.mul
           (local.get $180)
           (local.get $189)
          )
         )
         (local.set $191
          (f32.const 0.007385550998151302)
         )
         (local.set $192
          (f32.add
           (local.get $190)
           (local.get $191)
          )
         )
         (local.set $193
          (f32.mul
           (local.get $179)
           (local.get $192)
          )
         )
         (local.set $194
          (f32.const 0.0673523023724556)
         )
         (local.set $195
          (f32.add
           (local.get $193)
           (local.get $194)
          )
         )
         (local.set $196
          (f32.mul
           (local.get $178)
           (local.get $195)
          )
         )
         (local.set $197
          (f32.const 0.07721566408872604)
         )
         (local.set $198
          (f32.add
           (local.get $196)
           (local.get $197)
          )
         )
         (f32.store offset=44
          (local.get $4)
          (local.get $198)
         )
         (local.set $199
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $200
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $201
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $202
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $203
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $204
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $205
          (f32.const 4.486409670789726e-05)
         )
         (local.set $206
          (f32.mul
           (local.get $204)
           (local.get $205)
          )
         )
         (local.set $207
          (f32.const 1.0801156895468011e-04)
         )
         (local.set $208
          (f32.add
           (local.get $206)
           (local.get $207)
          )
         )
         (local.set $209
          (f32.mul
           (local.get $203)
           (local.get $208)
          )
         )
         (local.set $210
          (f32.const 5.100697744637728e-04)
         )
         (local.set $211
          (f32.add
           (local.get $209)
           (local.get $210)
          )
         )
         (local.set $212
          (f32.mul
           (local.get $202)
           (local.get $211)
          )
         )
         (local.set $213
          (f32.const 2.8905137442052364e-03)
         )
         (local.set $214
          (f32.add
           (local.get $212)
           (local.get $213)
          )
         )
         (local.set $215
          (f32.mul
           (local.get $201)
           (local.get $214)
          )
         )
         (local.set $216
          (f32.const 0.020580807700753212)
         )
         (local.set $217
          (f32.add
           (local.get $215)
           (local.get $216)
          )
         )
         (local.set $218
          (f32.mul
           (local.get $200)
           (local.get $217)
          )
         )
         (local.set $219
          (f32.const 0.32246702909469604)
         )
         (local.set $220
          (f32.add
           (local.get $218)
           (local.get $219)
          )
         )
         (local.set $221
          (f32.mul
           (local.get $199)
           (local.get $220)
          )
         )
         (f32.store offset=40
          (local.get $4)
          (local.get $221)
         )
         (local.set $222
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $223
          (f32.load offset=44
           (local.get $4)
          )
         )
         (local.set $224
          (f32.load offset=40
           (local.get $4)
          )
         )
         (local.set $225
          (f32.mul
           (local.get $222)
           (local.get $223)
          )
         )
         (local.set $226
          (f32.add
           (local.get $225)
           (local.get $224)
          )
         )
         (f32.store offset=48
          (local.get $4)
          (local.get $226)
         )
         (local.set $227
          (f32.load offset=48
           (local.get $4)
          )
         )
         (local.set $228
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $229
          (f32.const -0.5)
         )
         (local.set $230
          (f32.mul
           (local.get $228)
           (local.get $229)
          )
         )
         (local.set $231
          (f32.add
           (local.get $230)
           (local.get $227)
          )
         )
         (local.set $232
          (f32.load offset=28
           (local.get $4)
          )
         )
         (local.set $233
          (f32.add
           (local.get $232)
           (local.get $231)
          )
         )
         (f32.store offset=28
          (local.get $4)
          (local.get $233)
         )
         (br $label$25)
        )
        (local.set $234
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $235
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $236
         (f32.mul
          (local.get $234)
          (local.get $235)
         )
        )
        (f32.store offset=56
         (local.get $4)
         (local.get $236)
        )
        (local.set $237
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $238
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $239
         (f32.mul
          (local.get $237)
          (local.get $238)
         )
        )
        (f32.store offset=24
         (local.get $4)
         (local.get $239)
        )
        (local.set $240
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $241
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $242
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $243
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $244
         (f32.const 0.000315632059937343)
        )
        (local.set $245
         (f32.mul
          (local.get $243)
          (local.get $244)
         )
        )
        (local.set $246
         (f32.const -1.4034647028893232e-03)
        )
        (local.set $247
         (f32.add
          (local.get $245)
          (local.get $246)
         )
        )
        (local.set $248
         (f32.mul
          (local.get $242)
          (local.get $247)
         )
        )
        (local.set $249
         (f32.const 0.006100538652390242)
        )
        (local.set $250
         (f32.add
          (local.get $248)
          (local.get $249)
         )
        )
        (local.set $251
         (f32.mul
          (local.get $241)
          (local.get $250)
         )
        )
        (local.set $252
         (f32.const -0.03278854116797447)
        )
        (local.set $253
         (f32.add
          (local.get $251)
          (local.get $252)
         )
        )
        (local.set $254
         (f32.mul
          (local.get $240)
          (local.get $253)
         )
        )
        (local.set $255
         (f32.const 0.4838361144065857)
        )
        (local.set $256
         (f32.add
          (local.get $254)
          (local.get $255)
         )
        )
        (f32.store offset=44
         (local.get $4)
         (local.get $256)
        )
        (local.set $257
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $258
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $259
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $260
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $261
         (f32.const -3.1275415676645935e-04)
        )
        (local.set $262
         (f32.mul
          (local.get $260)
          (local.get $261)
         )
        )
        (local.set $263
         (f32.const 8.810818544588983e-04)
        )
        (local.set $264
         (f32.add
          (local.get $262)
          (local.get $263)
         )
        )
        (local.set $265
         (f32.mul
          (local.get $259)
          (local.get $264)
         )
        )
        (local.set $266
         (f32.const -3.6845202557742596e-03)
        )
        (local.set $267
         (f32.add
          (local.get $265)
          (local.get $266)
         )
        )
        (local.set $268
         (f32.mul
          (local.get $258)
          (local.get $267)
         )
        )
        (local.set $269
         (f32.const 0.017970675602555275)
        )
        (local.set $270
         (f32.add
          (local.get $268)
          (local.get $269)
         )
        )
        (local.set $271
         (f32.mul
          (local.get $257)
          (local.get $270)
         )
        )
        (local.set $272
         (f32.const -0.14758771657943726)
        )
        (local.set $273
         (f32.add
          (local.get $271)
          (local.get $272)
         )
        )
        (f32.store offset=40
         (local.get $4)
         (local.get $273)
        )
        (local.set $274
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $275
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $276
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $277
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $278
         (f32.const 3.3552918466739357e-04)
        )
        (local.set $279
         (f32.mul
          (local.get $277)
          (local.get $278)
         )
        )
        (local.set $280
         (f32.const -5.385953118093312e-04)
        )
        (local.set $281
         (f32.add
          (local.get $279)
          (local.get $280)
         )
        )
        (local.set $282
         (f32.mul
          (local.get $276)
          (local.get $281)
         )
        )
        (local.set $283
         (f32.const 2.2596477065235376e-03)
        )
        (local.set $284
         (f32.add
          (local.get $282)
          (local.get $283)
         )
        )
        (local.set $285
         (f32.mul
          (local.get $275)
          (local.get $284)
         )
        )
        (local.set $286
         (f32.const -0.010314224287867546)
        )
        (local.set $287
         (f32.add
          (local.get $285)
          (local.get $286)
         )
        )
        (local.set $288
         (f32.mul
          (local.get $274)
          (local.get $287)
         )
        )
        (local.set $289
         (f32.const 0.06462494283914566)
        )
        (local.set $290
         (f32.add
          (local.get $288)
          (local.get $289)
         )
        )
        (f32.store offset=36
         (local.get $4)
         (local.get $290)
        )
        (local.set $291
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $292
         (f32.load offset=44
          (local.get $4)
         )
        )
        (local.set $293
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $294
         (f32.load offset=40
          (local.get $4)
         )
        )
        (local.set $295
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $296
         (f32.load offset=36
          (local.get $4)
         )
        )
        (local.set $297
         (f32.mul
          (local.get $295)
          (local.get $296)
         )
        )
        (local.set $298
         (f32.add
          (local.get $297)
          (local.get $294)
         )
        )
        (local.set $299
         (f32.neg
          (local.get $293)
         )
        )
        (local.set $300
         (f32.mul
          (local.get $299)
          (local.get $298)
         )
        )
        (local.set $301
         (f32.const 6.697100651820165e-09)
        )
        (local.set $302
         (f32.add
          (local.get $300)
          (local.get $301)
         )
        )
        (local.set $303
         (f32.neg
          (local.get $302)
         )
        )
        (local.set $304
         (f32.mul
          (local.get $291)
          (local.get $292)
         )
        )
        (local.set $305
         (f32.add
          (local.get $304)
          (local.get $303)
         )
        )
        (f32.store offset=48
         (local.get $4)
         (local.get $305)
        )
        (local.set $306
         (f32.load offset=48
          (local.get $4)
         )
        )
        (local.set $307
         (f32.const -0.12148628383874893)
        )
        (local.set $308
         (f32.add
          (local.get $307)
          (local.get $306)
         )
        )
        (local.set $309
         (f32.load offset=28
          (local.get $4)
         )
        )
        (local.set $310
         (f32.add
          (local.get $309)
          (local.get $308)
         )
        )
        (f32.store offset=28
         (local.get $4)
         (local.get $310)
        )
        (br $label$25)
       )
       (local.set $311
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $312
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $313
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $314
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $315
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $316
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $317
        (f32.const 0.013381091877818108)
       )
       (local.set $318
        (f32.mul
         (local.get $316)
         (local.get $317)
        )
       )
       (local.set $319
        (f32.const 0.2289637327194214)
       )
       (local.set $320
        (f32.add
         (local.get $318)
         (local.get $319)
        )
       )
       (local.set $321
        (f32.mul
         (local.get $315)
         (local.get $320)
        )
       )
       (local.set $322
        (f32.const 0.9777175188064575)
       )
       (local.set $323
        (f32.add
         (local.get $321)
         (local.get $322)
        )
       )
       (local.set $324
        (f32.mul
         (local.get $314)
         (local.get $323)
        )
       )
       (local.set $325
        (f32.const 1.4549225568771362)
       )
       (local.set $326
        (f32.add
         (local.get $324)
         (local.get $325)
        )
       )
       (local.set $327
        (f32.mul
         (local.get $313)
         (local.get $326)
        )
       )
       (local.set $328
        (f32.const 0.6328270435333252)
       )
       (local.set $329
        (f32.add
         (local.get $327)
         (local.get $328)
        )
       )
       (local.set $330
        (f32.mul
         (local.get $312)
         (local.get $329)
        )
       )
       (local.set $331
        (f32.const -0.07721566408872604)
       )
       (local.set $332
        (f32.add
         (local.get $330)
         (local.get $331)
        )
       )
       (local.set $333
        (f32.mul
         (local.get $311)
         (local.get $332)
        )
       )
       (f32.store offset=44
        (local.get $4)
        (local.get $333)
       )
       (local.set $334
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $335
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $336
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $337
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $338
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $339
        (f32.const 3.2170924823731184e-03)
       )
       (local.set $340
        (f32.mul
         (local.get $338)
         (local.get $339)
        )
       )
       (local.set $341
        (f32.const 0.10422264784574509)
       )
       (local.set $342
        (f32.add
         (local.get $340)
         (local.get $341)
        )
       )
       (local.set $343
        (f32.mul
         (local.get $337)
         (local.get $342)
        )
       )
       (local.set $344
        (f32.const 0.7692851424217224)
       )
       (local.set $345
        (f32.add
         (local.get $343)
         (local.get $344)
        )
       )
       (local.set $346
        (f32.mul
         (local.get $336)
         (local.get $345)
        )
       )
       (local.set $347
        (f32.const 2.1284897327423096)
       )
       (local.set $348
        (f32.add
         (local.get $346)
         (local.get $347)
        )
       )
       (local.set $349
        (f32.mul
         (local.get $335)
         (local.get $348)
        )
       )
       (local.set $350
        (f32.const 2.4559779167175293)
       )
       (local.set $351
        (f32.add
         (local.get $349)
         (local.get $350)
        )
       )
       (local.set $352
        (f32.mul
         (local.get $334)
         (local.get $351)
        )
       )
       (local.set $353
        (f32.const 1)
       )
       (local.set $354
        (f32.add
         (local.get $352)
         (local.get $353)
        )
       )
       (f32.store offset=40
        (local.get $4)
        (local.get $354)
       )
       (local.set $355
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $356
        (f32.load offset=44
         (local.get $4)
        )
       )
       (local.set $357
        (f32.load offset=40
         (local.get $4)
        )
       )
       (local.set $358
        (f32.div
         (local.get $356)
         (local.get $357)
        )
       )
       (local.set $359
        (f32.const -0.5)
       )
       (local.set $360
        (f32.mul
         (local.get $355)
         (local.get $359)
        )
       )
       (local.set $361
        (f32.add
         (local.get $360)
         (local.get $358)
        )
       )
       (local.set $362
        (f32.load offset=28
         (local.get $4)
        )
       )
       (local.set $363
        (f32.add
         (local.get $362)
         (local.get $361)
        )
       )
       (f32.store offset=28
        (local.get $4)
        (local.get $363)
       )
      )
      (br $label$13)
     )
     (local.set $364
      (i32.load offset=12
       (local.get $4)
      )
     )
     (local.set $365
      (i32.const 1090519040)
     )
     (local.set $366
      (local.get $364)
     )
     (local.set $367
      (local.get $365)
     )
     (local.set $368
      (i32.lt_s
       (local.get $366)
       (local.get $367)
      )
     )
     (local.set $369
      (i32.const 1)
     )
     (local.set $370
      (i32.and
       (local.get $368)
       (local.get $369)
      )
     )
     (block $label$29
      (block $label$30
       (br_if $label$30
        (i32.eqz
         (local.get $370)
        )
       )
       (local.set $371
        (f32.load offset=72
         (local.get $4)
        )
       )
       (local.set $372
        (f32.abs
         (local.get $371)
        )
       )
       (local.set $373
        (f32.const 2147483648)
       )
       (local.set $374
        (f32.lt
         (local.get $372)
         (local.get $373)
        )
       )
       (local.set $375
        (i32.eqz
         (local.get $374)
        )
       )
       (block $label$31
        (block $label$32
         (br_if $label$32
          (local.get $375)
         )
         (local.set $376
          (i32.trunc_f32_s
           (local.get $371)
          )
         )
         (local.set $377
          (local.get $376)
         )
         (br $label$31)
        )
        (local.set $378
         (i32.const -2147483648)
        )
        (local.set $377
         (local.get $378)
        )
       )
       (local.set $379
        (local.get $377)
       )
       (i32.store offset=16
        (local.get $4)
        (local.get $379)
       )
       (local.set $380
        (f32.load offset=72
         (local.get $4)
        )
       )
       (local.set $381
        (i32.load offset=16
         (local.get $4)
        )
       )
       (local.set $382
        (f32.convert_i32_s
         (local.get $381)
        )
       )
       (local.set $383
        (f32.sub
         (local.get $380)
         (local.get $382)
        )
       )
       (f32.store offset=60
        (local.get $4)
        (local.get $383)
       )
       (local.set $384
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $385
        (f32.const 3.194753298885189e-05)
       )
       (local.set $386
        (f32.mul
         (local.get $384)
         (local.get $385)
        )
       )
       (local.set $387
        (f32.const 1.8402845598757267e-03)
       )
       (local.set $388
        (f32.add
         (local.get $386)
         (local.get $387)
        )
       )
       (local.set $389
        (f32.mul
         (local.get $384)
         (local.get $388)
        )
       )
       (local.set $390
        (f32.const 0.026642270386219025)
       )
       (local.set $391
        (f32.add
         (local.get $389)
         (local.get $390)
        )
       )
       (local.set $392
        (f32.mul
         (local.get $384)
         (local.get $391)
        )
       )
       (local.set $393
        (f32.const 0.14635047316551208)
       )
       (local.set $394
        (f32.add
         (local.get $392)
         (local.get $393)
        )
       )
       (local.set $395
        (f32.mul
         (local.get $384)
         (local.get $394)
        )
       )
       (local.set $396
        (f32.const 0.3257787823677063)
       )
       (local.set $397
        (f32.add
         (local.get $395)
         (local.get $396)
        )
       )
       (local.set $398
        (f32.mul
         (local.get $384)
         (local.get $397)
        )
       )
       (local.set $399
        (f32.const 0.21498242020606995)
       )
       (local.set $400
        (f32.add
         (local.get $398)
         (local.get $399)
        )
       )
       (local.set $401
        (f32.mul
         (local.get $384)
         (local.get $400)
        )
       )
       (local.set $402
        (f32.const -0.07721566408872604)
       )
       (local.set $403
        (f32.add
         (local.get $401)
         (local.get $402)
        )
       )
       (local.set $404
        (f32.mul
         (local.get $384)
         (local.get $403)
        )
       )
       (f32.store offset=48
        (local.get $4)
        (local.get $404)
       )
       (local.set $405
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $406
        (f32.const 7.32668422642746e-06)
       )
       (local.set $407
        (f32.mul
         (local.get $405)
         (local.get $406)
        )
       )
       (local.set $408
        (f32.const 7.779424777254462e-04)
       )
       (local.set $409
        (f32.add
         (local.get $407)
         (local.get $408)
        )
       )
       (local.set $410
        (f32.mul
         (local.get $405)
         (local.get $409)
        )
       )
       (local.set $411
        (f32.const 0.018645919859409332)
       )
       (local.set $412
        (f32.add
         (local.get $410)
         (local.get $411)
        )
       )
       (local.set $413
        (f32.mul
         (local.get $405)
         (local.get $412)
        )
       )
       (local.set $414
        (f32.const 0.1719338595867157)
       )
       (local.set $415
        (f32.add
         (local.get $413)
         (local.get $414)
        )
       )
       (local.set $416
        (f32.mul
         (local.get $405)
         (local.get $415)
        )
       )
       (local.set $417
        (f32.const 0.7219355702400208)
       )
       (local.set $418
        (f32.add
         (local.get $416)
         (local.get $417)
        )
       )
       (local.set $419
        (f32.mul
         (local.get $405)
         (local.get $418)
        )
       )
       (local.set $420
        (f32.const 1.3920053243637085)
       )
       (local.set $421
        (f32.add
         (local.get $419)
         (local.get $420)
        )
       )
       (local.set $422
        (f32.mul
         (local.get $405)
         (local.get $421)
        )
       )
       (local.set $423
        (f32.const 1)
       )
       (local.set $424
        (f32.add
         (local.get $422)
         (local.get $423)
        )
       )
       (f32.store offset=32
        (local.get $4)
        (local.get $424)
       )
       (local.set $425
        (f32.load offset=60
         (local.get $4)
        )
       )
       (local.set $426
        (f32.load offset=48
         (local.get $4)
        )
       )
       (local.set $427
        (f32.load offset=32
         (local.get $4)
        )
       )
       (local.set $428
        (f32.div
         (local.get $426)
         (local.get $427)
        )
       )
       (local.set $429
        (f32.const 0.5)
       )
       (local.set $430
        (f32.mul
         (local.get $425)
         (local.get $429)
        )
       )
       (local.set $431
        (f32.add
         (local.get $430)
         (local.get $428)
        )
       )
       (f32.store offset=28
        (local.get $4)
        (local.get $431)
       )
       (local.set $432
        (i32.const 1065353216)
       )
       (i32.store offset=56
        (local.get $4)
        (local.get $432)
       )
       (local.set $433
        (i32.load offset=16
         (local.get $4)
        )
       )
       (local.set $434
        (i32.const -3)
       )
       (local.set $435
        (i32.add
         (local.get $433)
         (local.get $434)
        )
       )
       (local.set $436
        (i32.const 4)
       )
       (drop
        (i32.gt_u
         (local.get $435)
         (local.get $436)
        )
       )
       (block $label$33
        (block $label$34
         (block $label$35
          (block $label$36
           (block $label$37
            (block $label$38
             (br_table $label$34 $label$35 $label$36 $label$37 $label$38 $label$33
              (local.get $435)
             )
            )
            (local.set $437
             (f32.load offset=60
              (local.get $4)
             )
            )
            (local.set $438
             (f32.const 6)
            )
            (local.set $439
             (f32.add
              (local.get $437)
              (local.get $438)
             )
            )
            (local.set $440
             (f32.load offset=56
              (local.get $4)
             )
            )
            (local.set $441
             (f32.mul
              (local.get $440)
              (local.get $439)
             )
            )
            (f32.store offset=56
             (local.get $4)
             (local.get $441)
            )
           )
           (local.set $442
            (f32.load offset=60
             (local.get $4)
            )
           )
           (local.set $443
            (f32.const 5)
           )
           (local.set $444
            (f32.add
             (local.get $442)
             (local.get $443)
            )
           )
           (local.set $445
            (f32.load offset=56
             (local.get $4)
            )
           )
           (local.set $446
            (f32.mul
             (local.get $445)
             (local.get $444)
            )
           )
           (f32.store offset=56
            (local.get $4)
            (local.get $446)
           )
          )
          (local.set $447
           (f32.load offset=60
            (local.get $4)
           )
          )
          (local.set $448
           (f32.const 4)
          )
          (local.set $449
           (f32.add
            (local.get $447)
            (local.get $448)
           )
          )
          (local.set $450
           (f32.load offset=56
            (local.get $4)
           )
          )
          (local.set $451
           (f32.mul
            (local.get $450)
            (local.get $449)
           )
          )
          (f32.store offset=56
           (local.get $4)
           (local.get $451)
          )
         )
         (local.set $452
          (f32.load offset=60
           (local.get $4)
          )
         )
         (local.set $453
          (f32.const 3)
         )
         (local.set $454
          (f32.add
           (local.get $452)
           (local.get $453)
          )
         )
         (local.set $455
          (f32.load offset=56
           (local.get $4)
          )
         )
         (local.set $456
          (f32.mul
           (local.get $455)
           (local.get $454)
          )
         )
         (f32.store offset=56
          (local.get $4)
          (local.get $456)
         )
        )
        (local.set $457
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $458
         (f32.const 2)
        )
        (local.set $459
         (f32.add
          (local.get $457)
          (local.get $458)
         )
        )
        (local.set $460
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $461
         (f32.mul
          (local.get $460)
          (local.get $459)
         )
        )
        (f32.store offset=56
         (local.get $4)
         (local.get $461)
        )
        (local.set $462
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $463
         (call $logf
          (local.get $462)
         )
        )
        (local.set $464
         (f32.load offset=28
          (local.get $4)
         )
        )
        (local.set $465
         (f32.add
          (local.get $464)
          (local.get $463)
         )
        )
        (f32.store offset=28
         (local.get $4)
         (local.get $465)
        )
       )
       (br $label$29)
      )
      (local.set $466
       (i32.load offset=12
        (local.get $4)
       )
      )
      (local.set $467
       (i32.const 1551892480)
      )
      (local.set $468
       (local.get $466)
      )
      (local.set $469
       (local.get $467)
      )
      (local.set $470
       (i32.lt_s
        (local.get $468)
        (local.get $469)
       )
      )
      (local.set $471
       (i32.const 1)
      )
      (local.set $472
       (i32.and
        (local.get $470)
        (local.get $471)
       )
      )
      (block $label$39
       (block $label$40
        (br_if $label$40
         (i32.eqz
          (local.get $472)
         )
        )
        (local.set $473
         (f32.load offset=72
          (local.get $4)
         )
        )
        (local.set $474
         (call $logf
          (local.get $473)
         )
        )
        (f32.store offset=64
         (local.get $4)
         (local.get $474)
        )
        (local.set $475
         (f32.load offset=72
          (local.get $4)
         )
        )
        (local.set $476
         (f32.const 1)
        )
        (local.set $477
         (f32.div
          (local.get $476)
          (local.get $475)
         )
        )
        (f32.store offset=56
         (local.get $4)
         (local.get $477)
        )
        (local.set $478
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $479
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $480
         (f32.mul
          (local.get $478)
          (local.get $479)
         )
        )
        (f32.store offset=60
         (local.get $4)
         (local.get $480)
        )
        (local.set $481
         (f32.load offset=56
          (local.get $4)
         )
        )
        (local.set $482
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $483
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $484
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $485
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $486
         (f32.load offset=60
          (local.get $4)
         )
        )
        (local.set $487
         (f32.const -1.6309292986989021e-03)
        )
        (local.set $488
         (f32.mul
          (local.get $486)
          (local.get $487)
         )
        )
        (local.set $489
         (f32.const 8.363398956134915e-04)
        )
        (local.set $490
         (f32.add
          (local.get $488)
          (local.get $489)
         )
        )
        (local.set $491
         (f32.mul
          (local.get $485)
          (local.get $490)
         )
        )
        (local.set $492
         (f32.const -5.951875355094671e-04)
        )
        (local.set $493
         (f32.add
          (local.get $491)
          (local.get $492)
         )
        )
        (local.set $494
         (f32.mul
          (local.get $484)
          (local.get $493)
         )
        )
        (local.set $495
         (f32.const 7.936505717225373e-04)
        )
        (local.set $496
         (f32.add
          (local.get $494)
          (local.get $495)
         )
        )
        (local.set $497
         (f32.mul
          (local.get $483)
          (local.get $496)
         )
        )
        (local.set $498
         (f32.const -2.7777778450399637e-03)
        )
        (local.set $499
         (f32.add
          (local.get $497)
          (local.get $498)
         )
        )
        (local.set $500
         (f32.mul
          (local.get $482)
          (local.get $499)
         )
        )
        (local.set $501
         (f32.const 0.0833333358168602)
        )
        (local.set $502
         (f32.add
          (local.get $500)
          (local.get $501)
         )
        )
        (local.set $503
         (f32.mul
          (local.get $481)
          (local.get $502)
         )
        )
        (local.set $504
         (f32.const 0.418938547372818)
        )
        (local.set $505
         (f32.add
          (local.get $503)
          (local.get $504)
         )
        )
        (f32.store offset=24
         (local.get $4)
         (local.get $505)
        )
        (local.set $506
         (f32.load offset=72
          (local.get $4)
         )
        )
        (local.set $507
         (f32.const 0.5)
        )
        (local.set $508
         (f32.sub
          (local.get $506)
          (local.get $507)
         )
        )
        (local.set $509
         (f32.load offset=64
          (local.get $4)
         )
        )
        (local.set $510
         (f32.const 1)
        )
        (local.set $511
         (f32.sub
          (local.get $509)
          (local.get $510)
         )
        )
        (local.set $512
         (f32.load offset=24
          (local.get $4)
         )
        )
        (local.set $513
         (f32.mul
          (local.get $508)
          (local.get $511)
         )
        )
        (local.set $514
         (f32.add
          (local.get $513)
          (local.get $512)
         )
        )
        (f32.store offset=28
         (local.get $4)
         (local.get $514)
        )
        (br $label$39)
       )
       (local.set $515
        (f32.load offset=72
         (local.get $4)
        )
       )
       (local.set $516
        (f32.load offset=72
         (local.get $4)
        )
       )
       (local.set $517
        (call $logf
         (local.get $516)
        )
       )
       (local.set $518
        (f32.const 1)
       )
       (local.set $519
        (f32.sub
         (local.get $517)
         (local.get $518)
        )
       )
       (local.set $520
        (f32.mul
         (local.get $515)
         (local.get $519)
        )
       )
       (f32.store offset=28
        (local.get $4)
        (local.get $520)
       )
      )
     )
    )
   )
   (local.set $521
    (i32.load offset=20
     (local.get $4)
    )
   )
   (local.set $522
    (i32.const 0)
   )
   (local.set $523
    (local.get $521)
   )
   (local.set $524
    (local.get $522)
   )
   (local.set $525
    (i32.lt_s
     (local.get $523)
     (local.get $524)
    )
   )
   (local.set $526
    (i32.const 1)
   )
   (local.set $527
    (i32.and
     (local.get $525)
     (local.get $526)
    )
   )
   (block $label$41
    (br_if $label$41
     (i32.eqz
      (local.get $527)
     )
    )
    (local.set $528
     (f32.load offset=52
      (local.get $4)
     )
    )
    (local.set $529
     (f32.load offset=28
      (local.get $4)
     )
    )
    (local.set $530
     (f32.sub
      (local.get $528)
      (local.get $529)
     )
    )
    (f32.store offset=28
     (local.get $4)
     (local.get $530)
    )
   )
   (local.set $531
    (f32.load offset=28
     (local.get $4)
    )
   )
   (f32.store offset=76
    (local.get $4)
    (local.get $531)
   )
  )
  (local.set $532
   (f32.load offset=76
    (local.get $4)
   )
  )
  (local.set $533
   (i32.const 80)
  )
  (local.set $534
   (i32.add
    (local.get $4)
    (local.get $533)
   )
  )
  (global.set $__stack_pointer
   (local.get $534)
  )
  (return
   (local.get $532)
  )
 )
 (func $sin_pif (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f64)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 f32)
  (local $39 f32)
  (local $40 f32)
  (local $41 f32)
  (local $42 f32)
  (local $43 f32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 f32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 f32)
  (local $68 f32)
  (local $69 f32)
  (local $70 f32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 f32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 f32)
  (local $83 f32)
  (local $84 f32)
  (local $85 f64)
  (local $86 f32)
  (local $87 f32)
  (local $88 f32)
  (local $89 f32)
  (local $90 f32)
  (local $91 f32)
  (local $92 f64)
  (local $93 f32)
  (local $94 f32)
  (local $95 f32)
  (local $96 f32)
  (local $97 f32)
  (local $98 f32)
  (local $99 f64)
  (local $100 f32)
  (local $101 f32)
  (local $102 f32)
  (local $103 f32)
  (local $104 f32)
  (local $105 f32)
  (local $106 f64)
  (local $107 f32)
  (local $108 f32)
  (local $109 f32)
  (local $110 f32)
  (local $111 f32)
  (local $112 f32)
  (local $113 f32)
  (local $114 f64)
  (local $115 f32)
  (local $116 f32)
  (local $117 f32)
  (local $118 f32)
  (local $119 i32)
  (local $120 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 48)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f32.store offset=40
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f32.load offset=40
    (local.get $3)
   )
  )
  (f32.store offset=16
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=16
    (local.get $3)
   )
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $7
   (i32.const 2147483647)
  )
  (local.set $8
   (i32.and
    (local.get $6)
    (local.get $7)
   )
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $8)
  )
  (local.set $9
   (i32.load offset=24
    (local.get $3)
   )
  )
  (local.set $10
   (i32.const 1048576000)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (local.get $10)
  )
  (local.set $13
   (i32.lt_s
    (local.get $11)
    (local.get $12)
   )
  )
  (local.set $14
   (i32.const 1)
  )
  (local.set $15
   (i32.and
    (local.get $13)
    (local.get $14)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $15)
     )
    )
    (local.set $16
     (f32.load offset=40
      (local.get $3)
     )
    )
    (local.set $17
     (f32.const 3.1415927410125732)
    )
    (local.set $18
     (f32.mul
      (local.get $16)
      (local.get $17)
     )
    )
    (local.set $19
     (f64.promote_f32
      (local.get $18)
     )
    )
    (local.set $20
     (call $__kernel_sindf
      (local.get $19)
     )
    )
    (f32.store offset=44
     (local.get $3)
     (local.get $20)
    )
    (br $label$1)
   )
   (local.set $21
    (f32.load offset=40
     (local.get $3)
    )
   )
   (local.set $22
    (f32.neg
     (local.get $21)
    )
   )
   (f32.store offset=36
    (local.get $3)
    (local.get $22)
   )
   (local.set $23
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $24
    (call $floorf
     (local.get $23)
    )
   )
   (f32.store offset=32
    (local.get $3)
    (local.get $24)
   )
   (local.set $25
    (f32.load offset=32
     (local.get $3)
    )
   )
   (local.set $26
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $27
    (f32.ne
     (local.get $25)
     (local.get $26)
    )
   )
   (local.set $28
    (i32.const 1)
   )
   (local.set $29
    (i32.and
     (local.get $27)
     (local.get $28)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $29)
      )
     )
     (local.set $30
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $31
      (f32.const 0.5)
     )
     (local.set $32
      (f32.mul
       (local.get $30)
       (local.get $31)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $32)
     )
     (local.set $33
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $34
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $35
      (call $floorf
       (local.get $34)
      )
     )
     (local.set $36
      (f32.sub
       (local.get $33)
       (local.get $35)
      )
     )
     (local.set $37
      (f32.const 2)
     )
     (local.set $38
      (f32.mul
       (local.get $37)
       (local.get $36)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $38)
     )
     (local.set $39
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $40
      (f32.const 4)
     )
     (local.set $41
      (f32.mul
       (local.get $39)
       (local.get $40)
      )
     )
     (local.set $42
      (f32.abs
       (local.get $41)
      )
     )
     (local.set $43
      (f32.const 2147483648)
     )
     (local.set $44
      (f32.lt
       (local.get $42)
       (local.get $43)
      )
     )
     (local.set $45
      (i32.eqz
       (local.get $44)
      )
     )
     (block $label$5
      (block $label$6
       (br_if $label$6
        (local.get $45)
       )
       (local.set $46
        (i32.trunc_f32_s
         (local.get $41)
        )
       )
       (local.set $47
        (local.get $46)
       )
       (br $label$5)
      )
      (local.set $48
       (i32.const -2147483648)
      )
      (local.set $47
       (local.get $48)
      )
     )
     (local.set $49
      (local.get $47)
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $49)
     )
     (br $label$3)
    )
    (local.set $50
     (i32.load offset=24
      (local.get $3)
     )
    )
    (local.set $51
     (i32.const 1266679808)
    )
    (local.set $52
     (local.get $50)
    )
    (local.set $53
     (local.get $51)
    )
    (local.set $54
     (i32.ge_s
      (local.get $52)
      (local.get $53)
     )
    )
    (local.set $55
     (i32.const 1)
    )
    (local.set $56
     (i32.and
      (local.get $54)
      (local.get $55)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (local.get $56)
       )
      )
      (local.set $57
       (i32.const 0)
      )
      (local.set $58
       (f32.convert_i32_s
        (local.get $57)
       )
      )
      (f32.store offset=36
       (local.get $3)
       (local.get $58)
      )
      (local.set $59
       (i32.const 0)
      )
      (i32.store offset=28
       (local.get $3)
       (local.get $59)
      )
      (br $label$7)
     )
     (local.set $60
      (i32.load offset=24
       (local.get $3)
      )
     )
     (local.set $61
      (i32.const 1258291200)
     )
     (local.set $62
      (local.get $60)
     )
     (local.set $63
      (local.get $61)
     )
     (local.set $64
      (i32.lt_s
       (local.get $62)
       (local.get $63)
      )
     )
     (local.set $65
      (i32.const 1)
     )
     (local.set $66
      (i32.and
       (local.get $64)
       (local.get $65)
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.eqz
        (local.get $66)
       )
      )
      (local.set $67
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $68
       (f32.const 8388608)
      )
      (local.set $69
       (f32.add
        (local.get $67)
        (local.get $68)
       )
      )
      (f32.store offset=32
       (local.get $3)
       (local.get $69)
      )
     )
     (local.set $70
      (f32.load offset=32
       (local.get $3)
      )
     )
     (f32.store offset=8
      (local.get $3)
      (local.get $70)
     )
     (local.set $71
      (i32.load offset=8
       (local.get $3)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $71)
     )
     (local.set $72
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $73
      (i32.const 1)
     )
     (local.set $74
      (i32.and
       (local.get $72)
       (local.get $73)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $74)
     )
     (local.set $75
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $76
      (f32.convert_i32_s
       (local.get $75)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $76)
     )
     (local.set $77
      (i32.load offset=28
       (local.get $3)
      )
     )
     (local.set $78
      (i32.const 2)
     )
     (local.set $79
      (i32.shl
       (local.get $77)
       (local.get $78)
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $79)
     )
    )
   )
   (local.set $80
    (i32.load offset=28
     (local.get $3)
    )
   )
   (local.set $81
    (i32.const 6)
   )
   (drop
    (i32.gt_u
     (local.get $80)
     (local.get $81)
    )
   )
   (block $label$10
    (block $label$11
     (block $label$12
      (block $label$13
       (block $label$14
        (block $label$15
         (br_table $label$15 $label$14 $label$14 $label$13 $label$13 $label$12 $label$12 $label$11
          (local.get $80)
         )
        )
        (local.set $82
         (f32.load offset=36
          (local.get $3)
         )
        )
        (local.set $83
         (f32.const 3.1415927410125732)
        )
        (local.set $84
         (f32.mul
          (local.get $82)
          (local.get $83)
         )
        )
        (local.set $85
         (f64.promote_f32
          (local.get $84)
         )
        )
        (local.set $86
         (call $__kernel_sindf
          (local.get $85)
         )
        )
        (f32.store offset=36
         (local.get $3)
         (local.get $86)
        )
        (br $label$10)
       )
       (local.set $87
        (f32.load offset=36
         (local.get $3)
        )
       )
       (local.set $88
        (f32.const 0.5)
       )
       (local.set $89
        (f32.sub
         (local.get $88)
         (local.get $87)
        )
       )
       (local.set $90
        (f32.const 3.1415927410125732)
       )
       (local.set $91
        (f32.mul
         (local.get $89)
         (local.get $90)
        )
       )
       (local.set $92
        (f64.promote_f32
         (local.get $91)
        )
       )
       (local.set $93
        (call $__kernel_cosdf
         (local.get $92)
        )
       )
       (f32.store offset=36
        (local.get $3)
        (local.get $93)
       )
       (br $label$10)
      )
      (local.set $94
       (f32.load offset=36
        (local.get $3)
       )
      )
      (local.set $95
       (f32.const 1)
      )
      (local.set $96
       (f32.sub
        (local.get $95)
        (local.get $94)
       )
      )
      (local.set $97
       (f32.const 3.1415927410125732)
      )
      (local.set $98
       (f32.mul
        (local.get $96)
        (local.get $97)
       )
      )
      (local.set $99
       (f64.promote_f32
        (local.get $98)
       )
      )
      (local.set $100
       (call $__kernel_sindf
        (local.get $99)
       )
      )
      (f32.store offset=36
       (local.get $3)
       (local.get $100)
      )
      (br $label$10)
     )
     (local.set $101
      (f32.load offset=36
       (local.get $3)
      )
     )
     (local.set $102
      (f32.const -1.5)
     )
     (local.set $103
      (f32.add
       (local.get $101)
       (local.get $102)
      )
     )
     (local.set $104
      (f32.const 3.1415927410125732)
     )
     (local.set $105
      (f32.mul
       (local.get $103)
       (local.get $104)
      )
     )
     (local.set $106
      (f64.promote_f32
       (local.get $105)
      )
     )
     (local.set $107
      (call $__kernel_cosdf
       (local.get $106)
      )
     )
     (local.set $108
      (f32.neg
       (local.get $107)
      )
     )
     (f32.store offset=36
      (local.get $3)
      (local.get $108)
     )
     (br $label$10)
    )
    (local.set $109
     (f32.load offset=36
      (local.get $3)
     )
    )
    (local.set $110
     (f32.const -2)
    )
    (local.set $111
     (f32.add
      (local.get $109)
      (local.get $110)
     )
    )
    (local.set $112
     (f32.const 3.1415927410125732)
    )
    (local.set $113
     (f32.mul
      (local.get $111)
      (local.get $112)
     )
    )
    (local.set $114
     (f64.promote_f32
      (local.get $113)
     )
    )
    (local.set $115
     (call $__kernel_sindf
      (local.get $114)
     )
    )
    (f32.store offset=36
     (local.get $3)
     (local.get $115)
    )
   )
   (local.set $116
    (f32.load offset=36
     (local.get $3)
    )
   )
   (local.set $117
    (f32.neg
     (local.get $116)
    )
   )
   (f32.store offset=44
    (local.get $3)
    (local.get $117)
   )
  )
  (local.set $118
   (f32.load offset=44
    (local.get $3)
   )
  )
  (local.set $119
   (i32.const 48)
  )
  (local.set $120
   (i32.add
    (local.get $3)
    (local.get $119)
   )
  )
  (global.set $__stack_pointer
   (local.get $120)
  )
  (return
   (local.get $118)
  )
 )
 (func $log (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 f64)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 i32)
  (local $32 f64)
  (local $33 f64)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f64)
  (local $50 f64)
  (local $51 f64)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 f64)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 f64)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 f64)
  (local $80 f64)
  (local $81 f64)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 f64)
  (local $94 i32)
  (local $95 f64)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 f64)
  (local $102 i32)
  (local $103 f64)
  (local $104 f64)
  (local $105 f64)
  (local $106 f64)
  (local $107 f64)
  (local $108 f64)
  (local $109 f64)
  (local $110 f64)
  (local $111 f64)
  (local $112 f64)
  (local $113 f64)
  (local $114 f64)
  (local $115 f64)
  (local $116 f64)
  (local $117 f64)
  (local $118 f64)
  (local $119 f64)
  (local $120 i32)
  (local $121 f64)
  (local $122 f64)
  (local $123 f64)
  (local $124 i32)
  (local $125 f64)
  (local $126 f64)
  (local $127 f64)
  (local $128 f64)
  (local $129 f64)
  (local $130 f64)
  (local $131 f64)
  (local $132 f64)
  (local $133 f64)
  (local $134 f64)
  (local $135 f64)
  (local $136 f64)
  (local $137 f64)
  (local $138 f64)
  (local $139 f64)
  (local $140 f64)
  (local $141 f64)
  (local $142 f64)
  (local $143 f64)
  (local $144 i32)
  (local $145 f64)
  (local $146 f64)
  (local $147 f64)
  (local $148 f64)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 f64)
  (local $153 f64)
  (local $154 f64)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 f64)
  (local $159 f64)
  (local $160 f64)
  (local $161 f64)
  (local $162 f64)
  (local $163 f64)
  (local $164 f64)
  (local $165 f64)
  (local $166 f64)
  (local $167 f64)
  (local $168 f64)
  (local $169 f64)
  (local $170 f64)
  (local $171 f64)
  (local $172 f64)
  (local $173 f64)
  (local $174 f64)
  (local $175 f64)
  (local $176 f64)
  (local $177 f64)
  (local $178 f64)
  (local $179 f64)
  (local $180 f64)
  (local $181 f64)
  (local $182 f64)
  (local $183 f64)
  (local $184 i32)
  (local $185 i32)
  (local $186 i32)
  (local $187 f64)
  (local $188 f64)
  (local $189 f64)
  (local $190 i32)
  (local $191 i32)
  (local $192 i32)
  (local $193 i32)
  (local $194 i32)
  (local $195 i32)
  (local $196 i32)
  (local $197 f64)
  (local $198 f64)
  (local $199 f64)
  (local $200 f64)
  (local $201 f64)
  (local $202 i32)
  (local $203 f64)
  (local $204 f64)
  (local $205 f64)
  (local $206 f64)
  (local $207 f64)
  (local $208 f64)
  (local $209 f64)
  (local $210 f64)
  (local $211 f64)
  (local $212 f64)
  (local $213 f64)
  (local $214 f64)
  (local $215 f64)
  (local $216 f64)
  (local $217 f64)
  (local $218 f64)
  (local $219 f64)
  (local $220 f64)
  (local $221 f64)
  (local $222 f64)
  (local $223 f64)
  (local $224 f64)
  (local $225 f64)
  (local $226 f64)
  (local $227 f64)
  (local $228 f64)
  (local $229 f64)
  (local $230 f64)
  (local $231 i32)
  (local $232 f64)
  (local $233 f64)
  (local $234 f64)
  (local $235 f64)
  (local $236 f64)
  (local $237 f64)
  (local $238 f64)
  (local $239 f64)
  (local $240 f64)
  (local $241 f64)
  (local $242 f64)
  (local $243 f64)
  (local $244 f64)
  (local $245 f64)
  (local $246 f64)
  (local $247 f64)
  (local $248 f64)
  (local $249 f64)
  (local $250 f64)
  (local $251 f64)
  (local $252 f64)
  (local $253 f64)
  (local $254 f64)
  (local $255 f64)
  (local $256 f64)
  (local $257 f64)
  (local $258 i32)
  (local $259 i32)
  (local.set $1
   (global.get $__stack_pointer)
  )
  (local.set $2
   (i32.const 144)
  )
  (local.set $3
   (i32.sub
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $__stack_pointer
   (local.get $3)
  )
  (f64.store offset=128
   (local.get $3)
   (local.get $0)
  )
  (local.set $4
   (f64.load offset=128
    (local.get $3)
   )
  )
  (f64.store offset=24
   (local.get $3)
   (local.get $4)
  )
  (local.set $5
   (i32.load offset=28
    (local.get $3)
   )
  )
  (i32.store offset=48
   (local.get $3)
   (local.get $5)
  )
  (local.set $6
   (i32.load offset=24
    (local.get $3)
   )
  )
  (i32.store offset=36
   (local.get $3)
   (local.get $6)
  )
  (local.set $7
   (i32.const 0)
  )
  (i32.store offset=52
   (local.get $3)
   (local.get $7)
  )
  (local.set $8
   (i32.load offset=48
    (local.get $3)
   )
  )
  (local.set $9
   (i32.const 1048576)
  )
  (local.set $10
   (local.get $8)
  )
  (local.set $11
   (local.get $9)
  )
  (local.set $12
   (i32.lt_s
    (local.get $10)
    (local.get $11)
   )
  )
  (local.set $13
   (i32.const 1)
  )
  (local.set $14
   (i32.and
    (local.get $12)
    (local.get $13)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $14)
     )
    )
    (local.set $15
     (i32.load offset=48
      (local.get $3)
     )
    )
    (local.set $16
     (i32.const 2147483647)
    )
    (local.set $17
     (i32.and
      (local.get $15)
      (local.get $16)
     )
    )
    (local.set $18
     (i32.load offset=36
      (local.get $3)
     )
    )
    (local.set $19
     (i32.or
      (local.get $17)
      (local.get $18)
     )
    )
    (block $label$3
     (br_if $label$3
      (local.get $19)
     )
     (local.set $20
      (f64.const -inf)
     )
     (f64.store offset=136
      (local.get $3)
      (local.get $20)
     )
     (br $label$1)
    )
    (local.set $21
     (i32.load offset=48
      (local.get $3)
     )
    )
    (local.set $22
     (i32.const 0)
    )
    (local.set $23
     (local.get $21)
    )
    (local.set $24
     (local.get $22)
    )
    (local.set $25
     (i32.lt_s
      (local.get $23)
      (local.get $24)
     )
    )
    (local.set $26
     (i32.const 1)
    )
    (local.set $27
     (i32.and
      (local.get $25)
      (local.get $26)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (local.get $27)
      )
     )
     (local.set $28
      (f64.load offset=128
       (local.get $3)
      )
     )
     (local.set $29
      (f64.load offset=128
       (local.get $3)
      )
     )
     (local.set $30
      (f64.sub
       (local.get $28)
       (local.get $29)
      )
     )
     (local.set $31
      (i32.const 0)
     )
     (local.set $32
      (f64.convert_i32_s
       (local.get $31)
      )
     )
     (local.set $33
      (f64.div
       (local.get $30)
       (local.get $32)
      )
     )
     (f64.store offset=136
      (local.get $3)
      (local.get $33)
     )
     (br $label$1)
    )
    (local.set $34
     (i32.load offset=52
      (local.get $3)
     )
    )
    (local.set $35
     (i32.const 54)
    )
    (local.set $36
     (i32.sub
      (local.get $34)
      (local.get $35)
     )
    )
    (i32.store offset=52
     (local.get $3)
     (local.get $36)
    )
    (local.set $37
     (f64.load offset=128
      (local.get $3)
     )
    )
    (local.set $38
     (f64.const 18014398509481984)
    )
    (local.set $39
     (f64.mul
      (local.get $37)
      (local.get $38)
     )
    )
    (f64.store offset=128
     (local.get $3)
     (local.get $39)
    )
    (local.set $40
     (f64.load offset=128
      (local.get $3)
     )
    )
    (f64.store offset=16
     (local.get $3)
     (local.get $40)
    )
    (local.set $41
     (i32.load offset=20
      (local.get $3)
     )
    )
    (i32.store offset=48
     (local.get $3)
     (local.get $41)
    )
   )
   (local.set $42
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $43
    (i32.const 2146435072)
   )
   (local.set $44
    (local.get $42)
   )
   (local.set $45
    (local.get $43)
   )
   (local.set $46
    (i32.ge_s
     (local.get $44)
     (local.get $45)
    )
   )
   (local.set $47
    (i32.const 1)
   )
   (local.set $48
    (i32.and
     (local.get $46)
     (local.get $47)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (local.get $48)
     )
    )
    (local.set $49
     (f64.load offset=128
      (local.get $3)
     )
    )
    (local.set $50
     (f64.load offset=128
      (local.get $3)
     )
    )
    (local.set $51
     (f64.add
      (local.get $49)
      (local.get $50)
     )
    )
    (f64.store offset=136
     (local.get $3)
     (local.get $51)
    )
    (br $label$1)
   )
   (local.set $52
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $53
    (i32.const 20)
   )
   (local.set $54
    (i32.shr_s
     (local.get $52)
     (local.get $53)
    )
   )
   (local.set $55
    (i32.const 1023)
   )
   (local.set $56
    (i32.sub
     (local.get $54)
     (local.get $55)
    )
   )
   (local.set $57
    (i32.load offset=52
     (local.get $3)
    )
   )
   (local.set $58
    (i32.add
     (local.get $57)
     (local.get $56)
    )
   )
   (i32.store offset=52
    (local.get $3)
    (local.get $58)
   )
   (local.set $59
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $60
    (i32.const 1048575)
   )
   (local.set $61
    (i32.and
     (local.get $59)
     (local.get $60)
    )
   )
   (i32.store offset=48
    (local.get $3)
    (local.get $61)
   )
   (local.set $62
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $63
    (i32.const 614244)
   )
   (local.set $64
    (i32.add
     (local.get $62)
     (local.get $63)
    )
   )
   (local.set $65
    (i32.const 1048576)
   )
   (local.set $66
    (i32.and
     (local.get $64)
     (local.get $65)
    )
   )
   (i32.store offset=44
    (local.get $3)
    (local.get $66)
   )
   (local.set $67
    (f64.load offset=128
     (local.get $3)
    )
   )
   (f64.store offset=8
    (local.get $3)
    (local.get $67)
   )
   (local.set $68
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $69
    (i32.load offset=44
     (local.get $3)
    )
   )
   (local.set $70
    (i32.const 1072693248)
   )
   (local.set $71
    (i32.xor
     (local.get $69)
     (local.get $70)
    )
   )
   (local.set $72
    (i32.or
     (local.get $68)
     (local.get $71)
    )
   )
   (i32.store offset=12
    (local.get $3)
    (local.get $72)
   )
   (local.set $73
    (f64.load offset=8
     (local.get $3)
    )
   )
   (f64.store offset=128
    (local.get $3)
    (local.get $73)
   )
   (local.set $74
    (i32.load offset=44
     (local.get $3)
    )
   )
   (local.set $75
    (i32.const 20)
   )
   (local.set $76
    (i32.shr_s
     (local.get $74)
     (local.get $75)
    )
   )
   (local.set $77
    (i32.load offset=52
     (local.get $3)
    )
   )
   (local.set $78
    (i32.add
     (local.get $77)
     (local.get $76)
    )
   )
   (i32.store offset=52
    (local.get $3)
    (local.get $78)
   )
   (local.set $79
    (f64.load offset=128
     (local.get $3)
    )
   )
   (local.set $80
    (f64.const 1)
   )
   (local.set $81
    (f64.sub
     (local.get $79)
     (local.get $80)
    )
   )
   (f64.store offset=112
    (local.get $3)
    (local.get $81)
   )
   (local.set $82
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $83
    (i32.const 2)
   )
   (local.set $84
    (i32.add
     (local.get $82)
     (local.get $83)
    )
   )
   (local.set $85
    (i32.const 1048575)
   )
   (local.set $86
    (i32.and
     (local.get $84)
     (local.get $85)
    )
   )
   (local.set $87
    (i32.const 3)
   )
   (local.set $88
    (local.get $86)
   )
   (local.set $89
    (local.get $87)
   )
   (local.set $90
    (i32.lt_s
     (local.get $88)
     (local.get $89)
    )
   )
   (local.set $91
    (i32.const 1)
   )
   (local.set $92
    (i32.and
     (local.get $90)
     (local.get $91)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (local.get $92)
     )
    )
    (local.set $93
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $94
     (i32.const 0)
    )
    (local.set $95
     (f64.convert_i32_s
      (local.get $94)
     )
    )
    (local.set $96
     (f64.eq
      (local.get $93)
      (local.get $95)
     )
    )
    (local.set $97
     (i32.const 1)
    )
    (local.set $98
     (i32.and
      (local.get $96)
      (local.get $97)
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (local.get $98)
      )
     )
     (local.set $99
      (i32.load offset=52
       (local.get $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (local.get $99)
      )
      (local.set $100
       (i32.const 0)
      )
      (local.set $101
       (f64.convert_i32_s
        (local.get $100)
       )
      )
      (f64.store offset=136
       (local.get $3)
       (local.get $101)
      )
      (br $label$1)
     )
     (local.set $102
      (i32.load offset=52
       (local.get $3)
      )
     )
     (local.set $103
      (f64.convert_i32_s
       (local.get $102)
      )
     )
     (f64.store offset=56
      (local.get $3)
      (local.get $103)
     )
     (local.set $104
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $105
      (f64.load offset=56
       (local.get $3)
      )
     )
     (local.set $106
      (f64.const 1.9082149292705877e-10)
     )
     (local.set $107
      (f64.mul
       (local.get $105)
       (local.get $106)
      )
     )
     (local.set $108
      (f64.const 0.6931471803691238)
     )
     (local.set $109
      (f64.mul
       (local.get $104)
       (local.get $108)
      )
     )
     (local.set $110
      (f64.add
       (local.get $109)
       (local.get $107)
      )
     )
     (f64.store offset=136
      (local.get $3)
      (local.get $110)
     )
     (br $label$1)
    )
    (local.set $111
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $112
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $113
     (f64.mul
      (local.get $111)
      (local.get $112)
     )
    )
    (local.set $114
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $115
     (f64.const -0.3333333333333333)
    )
    (local.set $116
     (f64.mul
      (local.get $114)
      (local.get $115)
     )
    )
    (local.set $117
     (f64.const 0.5)
    )
    (local.set $118
     (f64.add
      (local.get $116)
      (local.get $117)
     )
    )
    (local.set $119
     (f64.mul
      (local.get $113)
      (local.get $118)
     )
    )
    (f64.store offset=88
     (local.get $3)
     (local.get $119)
    )
    (local.set $120
     (i32.load offset=52
      (local.get $3)
     )
    )
    (block $label$9
     (br_if $label$9
      (local.get $120)
     )
     (local.set $121
      (f64.load offset=112
       (local.get $3)
      )
     )
     (local.set $122
      (f64.load offset=88
       (local.get $3)
      )
     )
     (local.set $123
      (f64.sub
       (local.get $121)
       (local.get $122)
      )
     )
     (f64.store offset=136
      (local.get $3)
      (local.get $123)
     )
     (br $label$1)
    )
    (local.set $124
     (i32.load offset=52
      (local.get $3)
     )
    )
    (local.set $125
     (f64.convert_i32_s
      (local.get $124)
     )
    )
    (f64.store offset=56
     (local.get $3)
     (local.get $125)
    )
    (local.set $126
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $127
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $128
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $129
     (f64.neg
      (local.get $128)
     )
    )
    (local.set $130
     (f64.const 1.9082149292705877e-10)
    )
    (local.set $131
     (f64.mul
      (local.get $129)
      (local.get $130)
     )
    )
    (local.set $132
     (f64.add
      (local.get $131)
      (local.get $127)
     )
    )
    (local.set $133
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $134
     (f64.sub
      (local.get $132)
      (local.get $133)
     )
    )
    (local.set $135
     (f64.neg
      (local.get $134)
     )
    )
    (local.set $136
     (f64.const 0.6931471803691238)
    )
    (local.set $137
     (f64.mul
      (local.get $126)
      (local.get $136)
     )
    )
    (local.set $138
     (f64.add
      (local.get $137)
      (local.get $135)
     )
    )
    (f64.store offset=136
     (local.get $3)
     (local.get $138)
    )
    (br $label$1)
   )
   (local.set $139
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $140
    (f64.load offset=112
     (local.get $3)
    )
   )
   (local.set $141
    (f64.const 2)
   )
   (local.set $142
    (f64.add
     (local.get $141)
     (local.get $140)
    )
   )
   (local.set $143
    (f64.div
     (local.get $139)
     (local.get $142)
    )
   )
   (f64.store offset=104
    (local.get $3)
    (local.get $143)
   )
   (local.set $144
    (i32.load offset=52
     (local.get $3)
    )
   )
   (local.set $145
    (f64.convert_i32_s
     (local.get $144)
    )
   )
   (f64.store offset=56
    (local.get $3)
    (local.get $145)
   )
   (local.set $146
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $147
    (f64.load offset=104
     (local.get $3)
    )
   )
   (local.set $148
    (f64.mul
     (local.get $146)
     (local.get $147)
    )
   )
   (f64.store offset=96
    (local.get $3)
    (local.get $148)
   )
   (local.set $149
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $150
    (i32.const 398458)
   )
   (local.set $151
    (i32.sub
     (local.get $149)
     (local.get $150)
    )
   )
   (i32.store offset=44
    (local.get $3)
    (local.get $151)
   )
   (local.set $152
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $153
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $154
    (f64.mul
     (local.get $152)
     (local.get $153)
    )
   )
   (f64.store offset=80
    (local.get $3)
    (local.get $154)
   )
   (local.set $155
    (i32.load offset=48
     (local.get $3)
    )
   )
   (local.set $156
    (i32.const 440401)
   )
   (local.set $157
    (i32.sub
     (local.get $156)
     (local.get $155)
    )
   )
   (i32.store offset=40
    (local.get $3)
    (local.get $157)
   )
   (local.set $158
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $159
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $160
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $161
    (f64.const 0.15313837699209373)
   )
   (local.set $162
    (f64.mul
     (local.get $160)
     (local.get $161)
    )
   )
   (local.set $163
    (f64.const 0.22222198432149784)
   )
   (local.set $164
    (f64.add
     (local.get $162)
     (local.get $163)
    )
   )
   (local.set $165
    (f64.mul
     (local.get $159)
     (local.get $164)
    )
   )
   (local.set $166
    (f64.const 0.3999999999940942)
   )
   (local.set $167
    (f64.add
     (local.get $165)
     (local.get $166)
    )
   )
   (local.set $168
    (f64.mul
     (local.get $158)
     (local.get $167)
    )
   )
   (f64.store offset=72
    (local.get $3)
    (local.get $168)
   )
   (local.set $169
    (f64.load offset=96
     (local.get $3)
    )
   )
   (local.set $170
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $171
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $172
    (f64.load offset=80
     (local.get $3)
    )
   )
   (local.set $173
    (f64.const 0.14798198605116586)
   )
   (local.set $174
    (f64.mul
     (local.get $172)
     (local.get $173)
    )
   )
   (local.set $175
    (f64.const 0.1818357216161805)
   )
   (local.set $176
    (f64.add
     (local.get $174)
     (local.get $175)
    )
   )
   (local.set $177
    (f64.mul
     (local.get $171)
     (local.get $176)
    )
   )
   (local.set $178
    (f64.const 0.2857142874366239)
   )
   (local.set $179
    (f64.add
     (local.get $177)
     (local.get $178)
    )
   )
   (local.set $180
    (f64.mul
     (local.get $170)
     (local.get $179)
    )
   )
   (local.set $181
    (f64.const 0.6666666666666735)
   )
   (local.set $182
    (f64.add
     (local.get $180)
     (local.get $181)
    )
   )
   (local.set $183
    (f64.mul
     (local.get $169)
     (local.get $182)
    )
   )
   (f64.store offset=64
    (local.get $3)
    (local.get $183)
   )
   (local.set $184
    (i32.load offset=40
     (local.get $3)
    )
   )
   (local.set $185
    (i32.load offset=44
     (local.get $3)
    )
   )
   (local.set $186
    (i32.or
     (local.get $185)
     (local.get $184)
    )
   )
   (i32.store offset=44
    (local.get $3)
    (local.get $186)
   )
   (local.set $187
    (f64.load offset=64
     (local.get $3)
    )
   )
   (local.set $188
    (f64.load offset=72
     (local.get $3)
    )
   )
   (local.set $189
    (f64.add
     (local.get $187)
     (local.get $188)
    )
   )
   (f64.store offset=88
    (local.get $3)
    (local.get $189)
   )
   (local.set $190
    (i32.load offset=44
     (local.get $3)
    )
   )
   (local.set $191
    (i32.const 0)
   )
   (local.set $192
    (local.get $190)
   )
   (local.set $193
    (local.get $191)
   )
   (local.set $194
    (i32.gt_s
     (local.get $192)
     (local.get $193)
    )
   )
   (local.set $195
    (i32.const 1)
   )
   (local.set $196
    (i32.and
     (local.get $194)
     (local.get $195)
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (local.get $196)
     )
    )
    (local.set $197
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $198
     (f64.const 0.5)
    )
    (local.set $199
     (f64.mul
      (local.get $198)
      (local.get $197)
     )
    )
    (local.set $200
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $201
     (f64.mul
      (local.get $199)
      (local.get $200)
     )
    )
    (f64.store offset=120
     (local.get $3)
     (local.get $201)
    )
    (local.set $202
     (i32.load offset=52
      (local.get $3)
     )
    )
    (block $label$11
     (br_if $label$11
      (local.get $202)
     )
     (local.set $203
      (f64.load offset=112
       (local.get $3)
      )
     )
     (local.set $204
      (f64.load offset=120
       (local.get $3)
      )
     )
     (local.set $205
      (f64.load offset=104
       (local.get $3)
      )
     )
     (local.set $206
      (f64.load offset=120
       (local.get $3)
      )
     )
     (local.set $207
      (f64.load offset=88
       (local.get $3)
      )
     )
     (local.set $208
      (f64.add
       (local.get $206)
       (local.get $207)
      )
     )
     (local.set $209
      (f64.neg
       (local.get $205)
      )
     )
     (local.set $210
      (f64.mul
       (local.get $209)
       (local.get $208)
      )
     )
     (local.set $211
      (f64.add
       (local.get $210)
       (local.get $204)
      )
     )
     (local.set $212
      (f64.sub
       (local.get $203)
       (local.get $211)
      )
     )
     (f64.store offset=136
      (local.get $3)
      (local.get $212)
     )
     (br $label$1)
    )
    (local.set $213
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $214
     (f64.load offset=120
      (local.get $3)
     )
    )
    (local.set $215
     (f64.load offset=104
      (local.get $3)
     )
    )
    (local.set $216
     (f64.load offset=120
      (local.get $3)
     )
    )
    (local.set $217
     (f64.load offset=88
      (local.get $3)
     )
    )
    (local.set $218
     (f64.add
      (local.get $216)
      (local.get $217)
     )
    )
    (local.set $219
     (f64.load offset=56
      (local.get $3)
     )
    )
    (local.set $220
     (f64.const 1.9082149292705877e-10)
    )
    (local.set $221
     (f64.mul
      (local.get $219)
      (local.get $220)
     )
    )
    (local.set $222
     (f64.mul
      (local.get $215)
      (local.get $218)
     )
    )
    (local.set $223
     (f64.add
      (local.get $222)
      (local.get $221)
     )
    )
    (local.set $224
     (f64.sub
      (local.get $214)
      (local.get $223)
     )
    )
    (local.set $225
     (f64.load offset=112
      (local.get $3)
     )
    )
    (local.set $226
     (f64.sub
      (local.get $224)
      (local.get $225)
     )
    )
    (local.set $227
     (f64.neg
      (local.get $226)
     )
    )
    (local.set $228
     (f64.const 0.6931471803691238)
    )
    (local.set $229
     (f64.mul
      (local.get $213)
      (local.get $228)
     )
    )
    (local.set $230
     (f64.add
      (local.get $229)
      (local.get $227)
     )
    )
    (f64.store offset=136
     (local.get $3)
     (local.get $230)
    )
    (br $label$1)
   )
   (local.set $231
    (i32.load offset=52
     (local.get $3)
    )
   )
   (block $label$12
    (br_if $label$12
    )
  )