require "google/dns/version"

class Resolv
  def self.use_google_dns
    # dns
    nameservers = ['8.8.8.8', '8.8.4.4']
    dns = Resolv::DNS.new(nameserver: nameservers, search: ['mydns.com'], ndots: 1))
    
    # resolver
    hosts = Resolv::Hosts.new()
    resolver = new([hosts, dns]
    
    # replace constant
    remove_const :DefaultResolver
    const_set :DefaultResolver, resolver
  end
end

# replace
require 'resolv-replace'

# use google's DNS servers
Resolv.use_google_dns