#!/usr/bin/perl
use strict;
use warnings;
use Net::SMTP;
use DateTime;
use CGI;
use LWP::UserAgent;
use JSON;

my $smtpserver = 'mail.firma.de';
my $smtpport = 25;
my $smtpuser   = 'agent@firma.de';
my $smtppassword = 'otrs';

my $dt = DateTime->now(time_zone=>'Europe/Berlin');
my $now = $dt =~ s/T/ /r;

my $cgi = CGI->new;
my $body = $cgi->param('body');
my $title = $cgi->param('title');
my $username = $cgi->param('username');
my $firstname = $cgi->param('firstname');
my $lastname = $cgi->param('lastname'); 
my $email = $cgi->param('email'); 
my $password = $cgi->param('password');


my $ua = LWP::UserAgent->new;
my $server_endpoint = "http://localhost/otrs/nph-genericinterface.pl/Webservice/Web/Contact ";
# set custom HTTP request header fields
my $request = HTTP::Request->new(POST => $server_endpoint);
$request->header('content-type' => 'application/json');
# add POST data to HTTP request body
my $post_data = { 
  UserLogin  => "webservice", 
  Password   => "open", 
  Ticket =>
    {
     Queue        => "Registration",
     State        => "new",
     Priority     => "3 normal",
     Title        => "New Customer Registration request $now" ,
     Type         => "Unclassified",
     CustomerUser => "webservice", 
    } ,
  Article =>
    {
      CommunicationChannel  => "webrequest",
      Subject               => "$title",
      Body                  => "$body",
      ContentType           => "text/html; charset=utf-8",
    },
  DynamicField =>
    {
      Name => "Username",
      Value => "$username",
    },
  DynamicField =>
    {
      Name => "Firstname",
      Value => "$firstname",
    },
  DynamicField =>
    {
      Name => "Lastname",
      Value => "$lastname",
    },
  DynamicField =>
    {
      Name => "Email",
      Value => "$email",
    },
  DynamicField =>
    {
      Name => "Password",
      Value => "$password",
    },
};
my $json = encode_json $post_data;
$request->content($json); 
my $response = $ua->request($request);
if ($response->is_success) {
    #my $message = $resp->decoded_content;
   # print "Received reply: $message\n";
    return 1;
}
else {
    print "HTTP POST error code: ", $response->code, "\n";
    print "HTTP POST error message: ", $response->message, "\n";
}

1;

