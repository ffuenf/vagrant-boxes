require 'thor'
require 'fileutils'
require 'timeout'

class Packer < Thor

  desc 'validate', 'Validate all the packer templates'
  def validate
    Dir.chdir './packer' do
      templates = Dir.glob('*.json')
      templates.each do |template|
        puts "#{template}"
        unless system "packer validate #{template}"
          fail 'Validation failed!'
        end
        puts "\n"
      end
    end
  end

  desc 'clean', 'Remove temporary artifacts'
  def clean(what)
    if what == 'cache'
      FileUtils.rm_rf(Dir.glob('./packer/packer_cache'))
      FileUtils.rm_rf(Dir.glob('./packer/output-*-iso'))
    elsif what == 'boxes'
      FileUtils.rm_rf(Dir.glob('./builds/*/*.box'))
      FileUtils.rm_rf(Dir.glob('./builds/*/*_SHA256SUM'))
      FileUtils.rm_rf(Dir.glob('./builds/*/*_SHA512SUM'))
    end
  end

  desc 'build', 'Execute the packer builder'
  option :atlas_version, :banner => '<atlas version>'
  option :os, :banner => '<os>'
  option :os_version, :banner => '<os version>'
  option :providers, :banner => '<providers>'

  def build
    Dir.chdir './packer' do
      templates = Dir.glob("#{options[:os]}-#{options[:os_version]}-amd64.json")
      templates.each do |template|
        name = template.chomp('.json').split('-')
        system "curl -s \"https://atlas.hashicorp.com/api/v1/box/ffuenf/#{options[:os]}-#{options[:os_version]}-amd64/versions\" -X POST -d version[version]=\"#{options[:atlas_version]}\" -d version[description]=\"### tools\n* VMware Tools 10.0.1 build-3160059\n* VirtualBox Guest Additions 5.0.10\n* Chef 12.5.1-1\n* Ruby 1.9.3.194-8.1+deb7u2\n* Rubygems 2.5.1\n\r### source\n[packer templates on github](https://github.com/ffuenf/vagrant-boxes)\" -d access_token=\"$PACKER_ATLAS_TOKEN\""
        providers = options[:providers].split(",")
        providers.each do |provider|
          system "packer build --only=#{provider}-iso -var 'PACKER_ATLAS_VERSION=#{options[:atlas_version]}' #{template}"
          system "shasum -a 256 ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box > ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA256SUM"
          system "shasum -a 512 ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box > ../builds/#{provider}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA512SUM"
          system "aws s3 cp ../builds/#{provider}/ s3://ffuenf-vagrantboxes/#{options[:os]}/ --recursive --exclude '*' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA256SUM' --include '#{options[:os]}-#{options[:os_version]}-amd64_#{provider}_SHA512SUM' --profile=vagrantboxes"
          system "curl -s \"https://vagrantcloud.com/api/v1/box/ffuenf/#{options[:os]}-#{options[:os_version]}-amd64/version/#{options[:atlas_version]}/providers\" -X POST -d provider[name]=\"#{provider}\" -d provider[url]=\"https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/#{options[:os]}/#{options[:os]}-#{options[:os_version]}-amd64_#{provider}.box\" -d access_token=\"$PACKER_ATLAS_TOKEN\""
        end
        system "curl -s \"https://atlas.hashicorp.com/api/v1/box/ffuenf/#{options[:os]}-#{options[:os_version]}-amd64/version/#{options[:atlas_version]}/release\" -X PUT -d access_token=\"$PACKER_ATLAS_TOKEN\""
      end
    end
  end

end
