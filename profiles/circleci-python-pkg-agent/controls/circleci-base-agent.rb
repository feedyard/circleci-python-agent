control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('bash') }
    its('stdout') { should include ('docker') }
    its('stdout') { should include ('openrc') }
    its('stdout') { should include ('curl') }
    its('stdout') { should include ('wget') }
    its('stdout') { should include ('jq') }
    its('stdout') { should include ('python3') }
    its('stdout') { should include ('ruby') }
    its('stdout') { should include ('ruby-bundler') }
    its('stdout') { should include ('ruby-webrick') }
    its('stdout') { should include ('ruby-bigdecimal') }
    its('stdout') { should include ('jq') }
    its('stdout') { should include ('gnupg') }
    its('stdout') { should include ('openssl') }
    its('stdout') { should_not include ('ruby-dev') }
    its('stdout') { should_not include ('g++') }
    its('stdout') { should_not include ('libffi-dev') }
    its('stdout') { should_not include ('musl-dev') }
    its('stdout') { should_not include ('make') }
  end
end

control 'docker version' do
  impact 1.0
  title 'confirm docker version installed'
  desc 'confirm version reported by docker matches the desired version'
  describe command('docker version') do
    its('stdout') { should include ('18.09') }
  end
end

control 'bash version' do
  impact 1.0
  title 'confirm bash version installed'
  desc 'confirm version reported by bash matches the desired version'
  describe command('bash --version') do
    its('stdout') { should include ('5.0') }
  end
end

control 'curl version' do
  impact 1.0
  title 'confirm curl version installed'
  desc 'confirm version reported by curl matches the desired version'
  describe command('curl -V') do
    its('stdout') { should include ('7.6') }
  end
end

control 'wget version' do
  impact 1.0
  title 'confirm wget version installed'
  desc 'confirm version reported by wget matches the desired version'
  describe command('wget --version') do
    its('stdout') { should include ('1.20') }
  end
end

control 'python3 version' do
  impact 1.0
  title 'confirm python3 version installed'
  desc 'confirm version reported by python3 matches the desired version'
  describe command('python3 -V') do
    its('stdout') { should include ('3.7') }
  end
end

control 'ruby version' do
  impact 1.0
  title 'confirm ruby version installed'
  desc 'confirm version reported by ruby matches the desired version'
  describe command('ruby -v') do
    its('stdout') { should include ('2.5') }
  end
end

control 'bundler version' do
  impact 1.0
  title 'confirm bundler version installed'
  desc 'confirm version reported by bundler matches the desired version'
  describe command('bundler -v') do
    its('stdout') { should include ('2.0') }
  end
end

control 'jq version' do
  impact 1.0
  title 'confirm jq version installed'
  desc 'confirm version reported by jq matches the desired version'
  describe command('jq --version') do
    its('stdout') { should include ('v3.7') }
  end
end

control 'pip version' do
  impact 1.0
  title 'confirm pip version installed'
  desc 'confirm version reported by pip3 matches the desired version'
  describe command('pip -V') do
    its('stdout') { should include ('19') }
  end
end

control 'python packages' do
  impact 1.0
  title 'confirm python package installation'
  desc 'confirm all desired python packages are installed'
  describe command('pip list') do
    its('stdout') { should include ('invoke') }
    its('stdout') { should include ('pylint') }
    its('stdout') { should include ('yamllint') }
  end
end

control 'invoke version' do
  impact 1.0
  title 'confirm invoke version installed'
  desc 'confirm version reported by invoke matches the desired version'
  describe command('invoke -V') do
    its('stdout') { should include ('1.2') }
  end
end

control 'pylint version' do
  impact 1.0
  title 'confirm pylint version installed'
  desc 'confirm version reported by pylint matches the desired version'
  describe command('pylint --version') do
    its('stdout') { should include ('2.3') }
  end
end

control 'yamllint version' do
  impact 1.0
  title 'confirm yamllint version installed'
  desc 'confirm version reported by yamllint matches the desired version'
  describe command('yamllint -v') do
    its('stdout') { should include ('1.16') }
  end
end

control 'rubocop version' do
  impact 1.0
  title 'confirm rubocop version installed'
  desc 'confirm version reported by rubocop matches the desired version'
  describe command('rubocop -v') do
    its('stdout') { should include ('0.73') }
  end
end

control 'inspec version' do
  impact 1.0
  title 'confirm inspec version installed'
  desc 'confirm version reported by inspec matches the desired version'
  describe command('inspec version') do
    its('stdout') { should include ('4.7') }
  end
end

control 'gnugp version' do
  impact 1.0
  title 'confirm gnugp version installed'
  desc 'confirm version reported by gnugp matches the desired version'
  describe command('gpg --version') do
    its('stdout') { should include ('2.2') }
  end
end

control 'openssl version' do
  impact 1.0
  title 'confirm openssl version installed'
  desc 'confirm version reported by gnugp matches the desired version'
  describe command('openssl version') do
    its('stdout') { should include ('1.1') }
  end
end
