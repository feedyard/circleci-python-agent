control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('curl') }
    its('stdout') { should include ('python3') }
    its('stdout') { should include ('build-base') }
    its('stdout') { should include ('python3-dev') }
    its('stdout') { should include ('libffi-dev') }
    its('stdout') { should include ('libressl-dev') }
    its('stdout') { should include ('g++') }
    its('stdout') { should include ('gcc') }
    its('stdout') { should include ('make') }
  end
end

control 'python packages' do
  impact 1.0
  title 'confirm python package installation'
  desc 'confirm all desired python packages are installed'
  describe command('pip list') do
    its('stdout') { should include ('setuptools') }
    its('stdout') { should include ('wheel') }
    its('stdout') { should include ('twine') }
    its('stdout') { should include ('pylint') }
    its('stdout') { should include ('pytest') }
    its('stdout') { should include ('pytest-runner') }
    its('stdout') { should include ('coverage') }
    its('stdout') { should include ('cryptography') }
  end
end
