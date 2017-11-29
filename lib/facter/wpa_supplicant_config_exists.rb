Facter.add('wpa_supplicant') do
  setcode do
		facts = Hash.new
		facts['config_files'] = []

		Dir.foreach('/etc/wpa_supplicant') do |file|
			facts['config_files'] << file
		end

    facts
  end
end
