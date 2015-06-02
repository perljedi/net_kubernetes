package Doppler::Storage::Interface::REST::Test;
use strict;
use warnings;
use Test::Spec;
use Data::Dumper;
use HTTP::Request;
use JSON;
use Test::Fatal qw(lives_ok);
use Net::Kubernetes;

describe "Net::Kubernetes" => sub {
	it "can be instantiated" => sub {
		new_ok( 'Net::Kubernetes' )
	};
	it "can get a list of pods" => sub {
		my $kube = Net::Kubernetes->new;
		can_ok($kube, 'list_pods');
	}
};

runtests;
