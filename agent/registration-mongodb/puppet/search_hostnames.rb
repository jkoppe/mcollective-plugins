module Puppet::Parser::Functions
  newfunction(:search_hostnames, :type => :rvalue) do |args|
    require 'puppet/util/mongoquery'

    Puppet::Util::MongoQuery.instance.find_hostnames(args[0],args[1])
  end
end
