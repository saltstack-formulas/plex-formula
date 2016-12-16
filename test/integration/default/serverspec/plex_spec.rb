require "serverspec"

set :backend, :exec

describe service("plexmediaserver") do
  it { should be_enabled }
  it { should be_running }
end

describe command("curl -L localhost:32400/web/") do
  its(:stdout) { should match /Plex/ }
end
