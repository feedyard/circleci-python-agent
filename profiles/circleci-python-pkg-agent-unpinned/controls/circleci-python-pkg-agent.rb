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
  end
end

control 'cc-test-reporter installed' do
  impact 1.0
  title 'confirm cc-test-reporter installed'
  desc 'confirm cc-test-reporter installed'
  describe command('cc-test-reporter --version') do
    its('stdout') { should include ('Code Climate Test Reporter') }
  end
end
