require 'serverspec'

set :backend, :exec

describe command('gm version') do
    its(:stdout) { should match /webp +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /png +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /jpeg +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /bzip +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /freetype +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /tiff +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /xml +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /wmf +yes/i }
end

describe command('gm version') do
    its(:stdout) { should match /little cms +yes/i }
end

