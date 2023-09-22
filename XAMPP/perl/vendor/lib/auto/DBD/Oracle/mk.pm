$dbd_oracle_mm_opts = {
                        'clean' => {
                                     'FILES' => 'xstmp.c Oracle.xsi dll.base dll.exp sqlnet.log libOracle.def mk.pm DBD_ORA_OBJ.*'
                                   },
                        'META_MERGE' => {
                                          'resources' => {
                                                           'repository' => {
                                                                             'url' => 'git://github.com/yanick/DBD-Oracle.git',
                                                                             'type' => 'git',
                                                                             'web' => 'http://github.com/yanick/DBD-Oracle/tree'
                                                                           },
                                                           'bugtracker' => 'https://github.com/perl5-dbi/DBD-Oracle/issues',
                                                           'homepage' => 'https://metacpan.org/pod/DBD::Oracle'
                                                         },
                                          'configure_requires' => {
                                                                    'DBI' => '1.623'
                                                                  },
                                          'build_requires' => {
                                                                'Test::Simple' => '0.90',
                                                                'ExtUtils::MakeMaker' => 0,
                                                                'DBI' => '1.623'
                                                              }
                                        },
                        'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                        'PREREQ_PM' => {
                                         'DBI' => '1.623'
                                       },
                        'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                        'dist' => {
                                    'SUFFIX' => 'gz',
                                    'PREOP' => '$(MAKE) -f Makefile.old distdir',
                                    'DIST_DEFAULT' => 'clean distcheck disttest tardist',
                                    'COMPRESS' => 'gzip -v9'
                                  },
                        'DIR' => [],
                        'NAME' => 'DBD::Oracle',
                        'LICENSE' => 'perl',
                        'AUTHOR' => 'Tim Bunce (dbi-users@perl.org)',
                        'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                        'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                        'OBJECT' => '$(O_FILES)',
                        'LIBS' => [
                                    '-LC:/STRAWB~1/env/USERPR~1/.cpanm/work/1611502183.6156/DBD-Oracle-1.80 -loci'
                                  ]
                      };
$dbd_oracle_mm_self = bless( {
                               'DESTINSTALLVENDORSCRIPT' => '$(DESTDIR)$(INSTALLVENDORSCRIPT)',
                               'MM_REVISION' => 75800,
                               'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                               'VERSION_SYM' => '1_80',
                               'DIR' => $dbd_oracle_mm_opts->{'DIR'},
                               'PERL_ARCHLIB' => 'C:\\strawberry\\perl\\lib',
                               'VENDORARCHEXP' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'BOOTDEP' => '',
                               'CCDLFLAGS' => ' ',
                               'PERLMAINCC' => '$(CC)',
                               'DIST_CP' => 'best',
                               'FIXIN' => 'pl2bat.bat',
                               'DLEXT' => 'xs.dll',
                               'OBJECT' => '$(O_FILES)',
                               'CI' => 'ci -u',
                               'LDDLFLAGS' => '-mdll -s -L"C:\\strawberry\\perl\\lib\\CORE" -L"C:\\strawberry\\c\\lib"',
                               'UNINSTALL' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e uninstall --',
                               'DESTINSTALLVENDORARCH' => '$(DESTDIR)$(INSTALLVENDORARCH)',
                               'FIRST_MAKEFILE' => 'Makefile',
                               'VENDORPREFIX' => 'C:\\strawberry\\perl\\vendor',
                               'TARFLAGS' => 'cvf',
                               'PARENT_NAME' => 'DBD',
                               'VERSION' => '1.80',
                               'INST_STATIC' => '$(INST_ARCHAUTODIR)\\$(BASEEXT)$(LIB_EXT)',
                               'LIB_EXT' => '.a',
                               'PERL_SRC' => undef,
                               'VENDORLIBEXP' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'MAP_TARGET' => 'perl',
                               'SITEPREFIX' => 'C:\\strawberry\\perl\\site',
                               'DESTINSTALLSITEARCH' => '$(DESTDIR)$(INSTALLSITEARCH)',
                               'DESTINSTALLVENDORMAN3DIR' => '$(DESTDIR)$(INSTALLVENDORMAN3DIR)',
                               'MACROSTART' => '',
                               'DESTINSTALLMAN1DIR' => '$(DESTDIR)$(INSTALLMAN1DIR)',
                               'clean' => $dbd_oracle_mm_opts->{'clean'},
                               'UMASK_NULL' => 'umask 0',
                               'PREFIX' => '$(VENDORPREFIX)',
                               'LIBC' => '',
                               'RM_F' => '$(ABSPERLRUN) -MExtUtils::Command -e rm_f --',
                               'EXTRALIBS' => '"liboci.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmoldname.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libkernel32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuser32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libgdi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinspool.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomdlg32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libadvapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libshell32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libole32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\liboleaut32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libnetapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuuid.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libws2_32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmpr.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinmm.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libversion.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbc32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbccp32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomctl32.a"',
                               'DESTINSTALLVENDORBIN' => '$(DESTDIR)$(INSTALLVENDORBIN)',
                               'PREOP' => '$(NOECHO) $(NOOP)',
                               'INST_AUTODIR' => '$(INST_LIB)\\auto\\$(FULLEXT)',
                               'FULLEXT' => 'DBD\\Oracle',
                               'INSTALLVENDORSCRIPT' => 'C:\\strawberry\\perl\\bin',
                               'INST_MAN3DIR' => 'blib\\man3',
                               'MOD_INSTALL' => '$(ABSPERLRUN) -MExtUtils::Install -e "install([ from_to => {@ARGV}, verbose => \'$(VERBINST)\', uninstall_shadows => \'$(UNINST)\', dir_mode => \'$(PERM_DIR)\' ]);" --',
                               'LDFROM' => '$(OBJECT)',
                               'AR' => 'ar',
                               'TOUCH' => '$(ABSPERLRUN) -MExtUtils::Command -e touch --',
                               'TAR' => 'tar',
                               'PERL_ARCHIVEDEP' => '$(PERL_INCDEP)\\libperl532.a',
                               'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                               'META_MERGE' => $dbd_oracle_mm_opts->{'META_MERGE'},
                               'ABSPERLRUNINST' => '$(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'MAN1SECTION' => 1,
                               'INSTALLMAN1DIR' => 'none',
                               'NAME' => 'DBD::Oracle',
                               'TO_UNIX' => '$(NOECHO) $(NOOP)',
                               'EQUALIZE_TIMESTAMP' => '$(ABSPERLRUN) -MExtUtils::Command -e eqtime --',
                               'DISTNAME' => 'DBD-Oracle',
                               'COMPRESS' => 'gzip --best',
                               'DIST_DEFAULT' => 'tardist',
                               'XS' => {
                                         'Oracle.xs' => 'Oracle.c'
                                       },
                               'AR_STATIC_ARGS' => 'cr',
                               'DESTINSTALLVENDORMAN1DIR' => '$(DESTDIR)$(INSTALLVENDORMAN1DIR)',
                               'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                               'DLSRC' => 'dl_win32.xs',
                               'INSTALLSITEARCH' => 'C:\\strawberry\\perl\\site\\lib',
                               'DESTINSTALLSITESCRIPT' => '$(DESTDIR)$(INSTALLSITESCRIPT)',
                               'PERL_ARCHIVE_AFTER' => '',
                               'MM_Win32_VERSION' => '7.58',
                               'TEST_S' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e test_s --',
                               'MAN1PODS' => {},
                               'SUFFIX' => '.gz',
                               'OSVERS' => '10.0.19042.746',
                               'NOOP' => 'rem',
                               'INST_ARCHAUTODIR' => '$(INST_ARCHLIB)\\auto\\$(FULLEXT)',
                               'HAS_LINK_CODE' => 1,
                               'DESTINSTALLARCHLIB' => '$(DESTDIR)$(INSTALLARCHLIB)',
                               'ABSTRACT' => 'Oracle database driver for the DBI module',
                               'ZIPFLAGS' => '-r',
                               'LIBS' => $dbd_oracle_mm_opts->{'LIBS'},
                               'TEST_F' => '$(ABSPERLRUN) -MExtUtils::Command -e test_f --',
                               'DLBASE' => '$(BASEEXT)',
                               'INSTALLVENDORLIB' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'MAN3EXT' => '3',
                               'XS_VERSION' => '1.80',
                               'SITELIBEXP' => 'C:\\strawberry\\perl\\site\\lib',
                               'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                               'PM' => {
                                         'lib/DBD/Oracle/Troubleshooting/Hpux.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Hpux.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Vms.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Vms.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Linux.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Linux.pod',
                                         'lib/DBD/Oracle/Object.pm' => 'blib\\lib\\DBD\\Oracle\\Object.pm',
                                         'lib/DBD/Oracle.pm' => 'blib\\lib\\DBD\\Oracle.pm',
                                         'lib/DBD/Oracle/Troubleshooting/Win32.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Win32.pod',
                                         'lib/DBD/Oracle/GetInfo.pm' => 'blib\\lib\\DBD\\Oracle\\GetInfo.pm',
                                         'lib/DBD/Oracle/Troubleshooting/Aix.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Aix.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Macos.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Macos.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Cygwin.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Cygwin.pod',
                                         'lib/DBD/Oracle/Troubleshooting.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting.pod',
                                         'mk.pm' => '$(INST_LIB)\\DBD\\mk.pm',
                                         'lib/DBD/Oracle/Troubleshooting/Sun.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Sun.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Win64.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Win64.pod'
                                       },
                               'PERL_LIB' => 'C:\\strawberry\\perl\\lib',
                               'INSTALLSITEMAN1DIR' => '$(INSTALLMAN1DIR)',
                               'ZIP' => 'zip',
                               'INST_BIN' => 'blib\\bin',
                               'O_FILES' => [
                                              'Oracle.o',
                                              'dbdimp.o',
                                              'oci8.o'
                                            ],
                               'CC' => 'gcc',
                               'FULLPERLRUNINST' => '$(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'FULL_AR' => '',
                               'LD' => 'g++',
                               'ECHO' => '$(ABSPERLRUN) -l -e "binmode STDOUT, qq{:raw}; print qq{@ARGV}" --',
                               'INSTALLARCHLIB' => 'C:\\strawberry\\perl\\lib',
                               'SHAR' => 'shar',
                               'CCCDLFLAGS' => ' ',
                               'OSNAME' => 'MSWin32',
                               'NOECHO' => '@',
                               'UNINST' => '1',
                               'CONFIG' => [
                                             'ar',
                                             'cc',
                                             'cccdlflags',
                                             'ccdlflags',
                                             'dlext',
                                             'dlsrc',
                                             'exe_ext',
                                             'full_ar',
                                             'ld',
                                             'lddlflags',
                                             'ldflags',
                                             'libc',
                                             'lib_ext',
                                             'obj_ext',
                                             'osname',
                                             'osvers',
                                             'ranlib',
                                             'sitelibexp',
                                             'sitearchexp',
                                             'so',
                                             'vendorarchexp',
                                             'vendorlibexp'
                                           ],
                               'RESULT' => [
                                             '# This Makefile is for the DBD::Oracle extension to perl.
#
# It was generated automatically by MakeMaker version
# 7.58 (Revision: 75800) from the contents of
# Makefile.PL. Don\'t edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
',
                                             '#   MakeMaker Parameters:
',
                                             '#     ABSTRACT_FROM => q[lib/DBD/Oracle.pm]',
                                             '#     AUTHOR => [q[Tim Bunce (dbi-users@perl.org)]]',
                                             '#     BUILD_REQUIRES => {  }',
                                             '#     CONFIGURE_REQUIRES => {  }',
                                             '#     DEFINE => q[ -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112]',
                                             '#     DIR => []',
                                             '#     INC => q[-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI]',
                                             '#     LIBS => [q[-LC:/STRAWB~1/env/USERPR~1/.cpanm/work/1611502183.6156/DBD-Oracle-1.80 -loci]]',
                                             '#     LICENSE => q[perl]',
                                             '#     META_MERGE => { build_requires=>{ DBI=>q[1.623], ExtUtils::MakeMaker=>q[0], Test::Simple=>q[0.90] }, configure_requires=>{ DBI=>q[1.623] }, resources=>{ bugtracker=>q[https://github.com/perl5-dbi/DBD-Oracle/issues], homepage=>q[https://metacpan.org/pod/DBD::Oracle], repository=>{ type=>q[git], url=>q[git://github.com/yanick/DBD-Oracle.git], web=>q[http://github.com/yanick/DBD-Oracle/tree] } } }',
                                             '#     NAME => q[DBD::Oracle]',
                                             '#     OBJECT => q[$(O_FILES)]',
                                             '#     PREREQ_PM => { DBI=>q[1.623] }',
                                             '#     TEST_REQUIRES => {  }',
                                             '#     VERSION_FROM => q[lib/DBD/Oracle.pm]',
                                             '#     clean => { FILES=>q[xstmp.c Oracle.xsi dll.base dll.exp sqlnet.log libOracle.def mk.pm DBD_ORA_OBJ.*] }',
                                             '#     dist => { COMPRESS=>q[gzip -v9], DIST_DEFAULT=>q[clean distcheck disttest tardist], PREOP=>q[$(MAKE) -f Makefile.old distdir], SUFFIX=>q[gz] }',
                                             '
# --- MakeMaker post_initialize section:'
                                           ],
                               'INSTALLBIN' => 'C:\\strawberry\\perl\\bin',
                               'RANLIB' => 'rem',
                               'PMLIBPARENTDIRS' => [
                                                      'lib'
                                                    ],
                               'H' => [
                                        'Oracle.h',
                                        'dbdimp.h',
                                        'dbivport.h',
                                        'ocitrace.h'
                                      ],
                               'INST_LIB' => 'blib\\lib',
                               'EXE_EXT' => '.exe',
                               'DOC_INSTALL' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e perllocal_install --',
                               'PERM_RWX' => 755,
                               'DESTINSTALLMAN3DIR' => '$(DESTDIR)$(INSTALLMAN3DIR)',
                               'EXPORT_LIST' => '$(BASEEXT).def',
                               'INSTALLVENDORMAN3DIR' => '$(INSTALLMAN3DIR)',
                               'MM_VERSION' => '7.58',
                               'ABSPERL' => '$(PERL)',
                               'DESTINSTALLBIN' => '$(DESTDIR)$(INSTALLBIN)',
                               'CP_NONEMPTY' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e cp_nonempty --',
                               'TEST_REQUIRES' => {},
                               'ECHO_N' => '$(ABSPERLRUN)  -e "print qq{@ARGV}" --',
                               'CHMOD' => '$(ABSPERLRUN) -MExtUtils::Command -e chmod --',
                               'VERSION_MACRO' => 'VERSION',
                               'MAKEFILE_OLD' => 'Makefile.old',
                               'DEFINE_VERSION' => '-D$(VERSION_MACRO)=\\"$(VERSION)\\"',
                               'PERLRUN' => '$(PERL)',
                               'INST_DYNAMIC' => '$(INST_ARCHAUTODIR)\\$(DLBASE).$(DLEXT)',
                               'LIBPERL_A' => 'libperl.a',
                               'CP' => '$(ABSPERLRUN) -MExtUtils::Command -e cp --',
                               'ABSPERLRUN' => '$(ABSPERL)',
                               'DESTINSTALLSCRIPT' => '$(DESTDIR)$(INSTALLSCRIPT)',
                               'INST_BOOT' => '$(INST_ARCHAUTODIR)\\$(BASEEXT).bs',
                               'DEV_NULL' => '> NUL',
                               'PL_FILES' => {},
                               'INSTALLVENDORARCH' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'PERL_INC' => 'C:\\strawberry\\perl\\lib\\CORE',
                               'TRUE' => '$(ABSPERLRUN)  -e "exit 0" --',
                               'RCS_LABEL' => 'rcs -Nv$(VERSION_SYM): -q',
                               'PERM_DIR' => 755,
                               'FALSE' => '$(ABSPERLRUN)  -e "exit 1" --',
                               'ARGS' => {
                                           'LICENSE' => 'perl',
                                           'NAME' => 'DBD::Oracle',
                                           'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                                           'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                                           'AUTHOR' => [
                                                         'Tim Bunce (dbi-users@perl.org)'
                                                       ],
                                           'LIBS' => $dbd_oracle_mm_opts->{'LIBS'},
                                           'OBJECT' => '$(O_FILES)',
                                           'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                                           'META_MERGE' => $dbd_oracle_mm_opts->{'META_MERGE'},
                                           'UNINST' => '1',
                                           'clean' => $dbd_oracle_mm_opts->{'clean'},
                                           'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                                           'PREREQ_PM' => $dbd_oracle_mm_opts->{'PREREQ_PM'},
                                           'dist' => $dbd_oracle_mm_opts->{'dist'},
                                           'DIR' => $dbd_oracle_mm_opts->{'DIR'},
                                           'INSTALLDIRS' => 'vendor'
                                         },
                               'CONFIGURE_REQUIRES' => {},
                               'MAKE_APERL_FILE' => 'Makefile.aperl',
                               'INST_ARCHLIBDIR' => '$(INST_ARCHLIB)\\DBD',
                               'DESTINSTALLSITEMAN3DIR' => '$(DESTDIR)$(INSTALLSITEMAN3DIR)',
                               'PERM_RW' => 644,
                               'DESTDIR' => '',
                               'XS_VERSION_MACRO' => 'XS_VERSION',
                               'PERL' => '"C:\\strawberry\\perl\\bin\\perl.exe"',
                               'PERL_ARCHLIBDEP' => 'C:\\strawberry\\perl\\lib',
                               'INSTALLPRIVLIB' => 'C:\\strawberry\\perl\\lib',
                               'INSTALLVENDORMAN1DIR' => '$(INSTALLMAN1DIR)',
                               'INST_LIBDIR' => '$(INST_LIB)\\DBD',
                               'BUILD_REQUIRES' => {},
                               'OBJ_EXT' => '.o',
                               'INSTALLDIRS' => 'vendor',
                               'USEMAKEFILE' => '-f',
                               'DISTVNAME' => 'DBD-Oracle-1.80',
                               'MAN1EXT' => '1',
                               'SO' => 'dll',
                               'INSTALLMAN3DIR' => 'none',
                               'MKPATH' => '$(ABSPERLRUN) -MExtUtils::Command -e mkpath --',
                               'POSTOP' => '$(NOECHO) $(NOOP)',
                               'MAKE' => 'gmake',
                               'PERLPREFIX' => 'C:\\strawberry\\perl',
                               'SITEARCHEXP' => 'C:\\strawberry\\perl\\site\\lib',
                               'VERBINST' => 0,
                               'LDFLAGS' => '-s -L"C:\\strawberry\\perl\\lib\\CORE" -L"C:\\strawberry\\c\\lib"',
                               'PERL_INCDEP' => 'C:\\strawberry\\perl\\lib\\CORE',
                               'INSTALLSCRIPT' => 'C:\\strawberry\\perl\\bin',
                               'LINKTYPE' => 'dynamic',
                               'LD_RUN_PATH' => '',
                               'DESTINSTALLSITELIB' => '$(DESTDIR)$(INSTALLSITELIB)',
                               'AUTHOR' => $dbd_oracle_mm_self->{'ARGS'}{'AUTHOR'},
                               'MAKEFILE' => 'Makefile',
                               'INSTALLSITESCRIPT' => 'C:\\strawberry\\perl\\site\\bin',
                               'INSTALLSITEMAN3DIR' => '$(INSTALLMAN3DIR)',
                               'PMLIBDIRS' => [
                                                'lib'
                                              ],
                               'INST_ARCHLIB' => 'blib\\arch',
                               'MAKEMAKER' => 'C:/strawberry/perl/lib/ExtUtils/MakeMaker.pm',
                               'BSLOADLIBS' => '',
                               'DIRFILESEP' => '/',
                               'NAME_SYM' => 'DBD_Oracle',
                               'MV' => '$(ABSPERLRUN) -MExtUtils::Command -e mv --',
                               'DESTINSTALLSITEBIN' => '$(DESTDIR)$(INSTALLSITEBIN)',
                               'INSTALLSITEBIN' => 'C:\\strawberry\\perl\\site\\bin',
                               'LICENSE' => 'perl',
                               'MAN3SECTION' => 3,
                               'INSTALLSITELIB' => 'C:\\strawberry\\perl\\site\\lib',
                               'DESTINSTALLVENDORLIB' => '$(DESTDIR)$(INSTALLVENDORLIB)',
                               'BASEEXT' => 'Oracle',
                               'INST_SCRIPT' => 'blib\\script',
                               'PREREQ_PM' => {
                                                'DBI' => '1.623'
                                              },
                               'SKIPHASH' => {},
                               'PERLRUNINST' => '$(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'WARN_IF_OLD_PACKLIST' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e warn_if_old_packlist --',
                               'C' => [
                                        'Oracle.c',
                                        'dbdimp.c',
                                        'oci8.c'
                                      ],
                               'dist' => $dbd_oracle_mm_opts->{'dist'},
                               'MACROEND' => '',
                               'PERL_CORE' => 0,
                               'INSTALLVENDORBIN' => 'C:\\strawberry\\perl\\bin',
                               'RM_RF' => '$(ABSPERLRUN) -MExtUtils::Command -e rm_rf --',
                               'INST_MAN1DIR' => 'blib\\man1',
                               'FULLPERL' => '"C:\\strawberry\\perl\\bin\\perl.exe"',
                               'DESTINSTALLPRIVLIB' => '$(DESTDIR)$(INSTALLPRIVLIB)',
                               'FULLPERLRUN' => '$(FULLPERL)',
                               'PERL_ARCHIVE' => '$(PERL_INC)\\libperl532.a',
                               'LDLOADLIBS' => '"liboci.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmoldname.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libkernel32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuser32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libgdi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinspool.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomdlg32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libadvapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libshell32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libole32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\liboleaut32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libnetapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuuid.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libws2_32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmpr.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinmm.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libversion.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbc32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbccp32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomctl32.a"',
                               'DESTINSTALLSITEMAN1DIR' => '$(DESTDIR)$(INSTALLSITEMAN1DIR)',
                               'XS_DEFINE_VERSION' => '-D$(XS_VERSION_MACRO)=\\"$(XS_VERSION)\\"',
                               'MAN3PODS' => {}
                             }, 'PACK001' );