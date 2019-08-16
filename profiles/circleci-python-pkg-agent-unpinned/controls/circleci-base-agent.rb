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
    its('stdout') { should include ('gnupg') }
    its('stdout') { should include ('openssl') }
    its('stdout') { should include ('jq') }
    its('stdout') { should_not include ('ruby-dev') }
    its('stdout') { should_not include ('g++') }
    its('stdout') { should_not include ('libffi-dev') }
    its('stdout') { should_not include ('musl-dev') }
    its('stdout') { should_not include ('make') }
  end
end
