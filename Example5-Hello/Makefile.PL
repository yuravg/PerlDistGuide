use ExtUtils::MakeMaker qw(WriteMakefile);

WriteMakefile(
    NAME             => 'Example5::Hello',
    AUTHOR           => 'Your Name <your.email@example5.com>',
    VERSION_FROM     => 'lib/Example5.pm',
    ABSTRACT_FROM    => 'lib/Example5.pm',
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
    EXE_FILES        => ['bin/example5-hello'],
   );
