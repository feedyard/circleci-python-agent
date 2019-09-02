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

control 'python3 version' do
  impact 1.0
  title 'confirm python3 version installed'
  desc 'confirm version reported by python3 matches the desired version'
  describe command('python3 -V') do
    its('stdout') { should include ('3.7') }
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
    its('stdout') { should include ('setuptools') }
    its('stdout') { should include ('wheel') }
    its('stdout') { should include ('twine') }
    its('stdout') { should include ('pipenv') }
    its('stdout') { should include ('pylint') }
    its('stdout') { should include ('pytest') }
    its('stdout') { should include ('pytest-runner') }
    its('stdout') { should include ('coverage') }
    its('stdout') { should include ('cryptography') }
  end
end

control 'wheel version' do
  impact 1.0
  title 'confirm wheel version installed'
  desc 'confirm version reported by wheel matches the desired version'
  describe command('wheel version') do
    its('stdout') { should include ('0.33') }
  end
end

control 'pipenv version' do
  impact 1.0
  title 'confirm pipenv version installed'
  desc 'confirm version reported by pipenv matches the desired version'
  describe command('pipenv --version') do
    its('stdout') { should include ('2018.11.26') }
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

control 'pytest version' do
  impact 1.0
  title 'confirm pytest version installed'
  desc 'confirm version reported by pytest matches the desired version'
  describe command('pytest --version') do
    its('stderr') { should include ('5.1') }
  end
end

control 'coverage version' do
  impact 1.0
  title 'confirm coverage version installed'
  desc 'confirm version reported by coverage matches the desired version'
  describe command('coverage --version') do
    its('stdout') { should include ('4.5') }
  end
end

control 'twine version' do
  impact 1.0
  title 'confirm twine version installed'
  desc 'confirm version reported by twine matches the desired version'
  describe command('twine --version') do
    its('stdout') { should include ('1.13') }
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
