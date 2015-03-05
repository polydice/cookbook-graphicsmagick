require 'serverspec'

set :backend, :exec

describe package('graphicsmagick') do
  it { should_not be_installed }
end
