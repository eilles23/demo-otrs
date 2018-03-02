#!/usr/bin/perl
use strict;
use warnings;
use Net::SMTP;
use DateTime;
use CGI;

my $smtpserver = 'mail.firma.de';
my $smtpport = 25;
my $smtpuser   = 'agent@firma.de';
my $smtppassword = 'otrs';

my $smtp = Net::SMTP->new($smtpserver, Port=>$smtpport, Timeout => 10, Debug => 1);
die "Could not connect to server!\n" unless $smtp;

my $dt = DateTime->now(time_zone=>'Europe/Berlin');
my $now = $dt =~ s/T/ /r;

my $cgi = CGI->new;
my $body = $cgi->param('body');

$smtp->auth($smtpuser, $smtppassword);
$smtp->mail('agent@firma.de');
$smtp->to('support@firma.de');
$smtp->data();
$smtp->datasend("To: support\@firma.de\n");
$smtp->datasend("From: agent\@firma.de\n");
$smtp->datasend("Date: $now\n");
$smtp->datasend("Subject: Contact E-Mail\n");
$smtp->datasend("$body\n");
$smtp->dataend();
$smtp->quit;

1;

