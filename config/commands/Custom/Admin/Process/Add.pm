# --
# Copyright (C) 2018 FH Aachen
# --

package Kernel::System::Console::Command::Custom::Admin::Process::Add;

use strict;
use warnings;
use YAML qw(LoadFile);
use Data::Dumper;

use base qw(Kernel::System::Console::BaseCommand);

our @ObjectDependencies = (
    'Kernel::System::ProcessManagement::DB::Process',
);

sub Configure {
    my ( $Self, %Param ) = @_;

    $Self->Description('Add a new Process.');
    $Self->AddOption(
        Name        => 'overwrite',
        Description => "Overwrite Existing Notifications",
        Required    => 0,
        HasValue    => 1,
        ValueRegex  => qr/.*/smx,
    );
    $Self->AddOption(
        Name        => 'file',
        Description => "Name of the DynamicField config yaml file",
        Required    => 1,
        HasValue    => 1,
        ValueRegex  => qr/.*/smx,
    );
    $Self->AddOption(
        Name        => 'path',
        Description => "Path to the DynamicField config yaml file",
        Required    => 0,
        HasValue    => 1,
        ValueRegex  => qr/.*/smx,
    );

    # $Self->AddArgument(
    #     Name        => 'argument',
    #     Description => "Describe this argument.",
    #     Required    => 1,
    #     ValueRegex  => qr/.*/smx,
    # );

    return;
}

# sub PreRun {
#     my ( $Self, %Param ) = @_;
#
#     # Perform any custom validations here. Command execution can be stopped with die().
#
#     # my $TargetDirectory = $Self->GetOption('target-directory');
#     # if ($TargetDirectory && !-d $TargetDirectory) {
#     #     die "Directory $TargetDirectory does not exist.\n";
#     # }
#
#     return;
# }

sub Run {
    my ( $Self, %Param ) = @_;

    $Self->Print("<yellow>Adding new Process...</yellow>\n");
    my $file = $Self->GetOption('file');

    if (!$Self->GetOption('path'))
    { 
        $file = join "", "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/Process/yml", $Self->GetOption('file'); 
    }
    else
    {
        $file = join "/", $Self->GetOption('path'), $Self->GetOption('file');
    }
    my $ProcessObject = $Kernel::OM->Get('Kernel::System::ProcessManagement::DB::Process');
    my $yaml = loadyaml($file);
    if (
       !$ProcessObject->ProcessImport(
        Content                   => $yaml, # mandatory, YAML format
        OverwriteExistingEntities => $Self->GetOption('overwrite') || 1,            # 0 || 1
        UserID                    => 1,            # mandatory
        )
      )
        {
            $Self->PrintError("Can't add Process.");
            return $Self->ExitCodeError();
        }
    #print Dumper($ret);
    #print $yaml;
    $Self->Print("<green>Done.</green>\n");
    return $Self->ExitCodeOk();
}
sub loadyaml {
    my $file = shift;
    open my $fh, '<', $file or die "Could not open YAML config file $file/!";
    local $/ = undef;
    my $cont = <$fh>;
    close $fh;
    return $cont;
}

# sub PostRun {
#     my ( $Self, %Param ) = @_;
#
#     # This will be called after Run() (even in case of exceptions). Perform any cleanups here.
#
#     return;
# }

1;
