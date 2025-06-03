use ExtUtils::MakeMaker qw(WriteMakefile);

WriteMakefile(
    NAME             => 'Example::Hello',
    AUTHOR           => 'Your Name <your.email@example.com>',
    VERSION_FROM     => 'lib/Example4.pm',
    ABSTRACT_FROM    => 'lib/Example4.pm',
    LICENSE          => 'perl',
    MIN_PERL_VERSION => '5.010',
    PREREQ_PM        => {
        'strict'          => 0,
        'warnings'        => 0,
        'Path::Tiny'      => 0,
        # Add other dependencies
    },
    TEST_REQUIRES    => {
        'Test::More'        => 0,
        'Test::Differences' => 0,
        'Path::Tiny'        => 0,
    },
    test             => {TESTS => 't/*.t'},
    EXE_FILES        => ['bin/example4-hello'],
   );
