require 'serverspec'

set :backend, :exec

describe package('graphicsmagick') do
  it { should be_installed }
end
