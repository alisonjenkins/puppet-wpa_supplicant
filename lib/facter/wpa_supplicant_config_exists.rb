Facter.add(:wpa_supplicant) do
  setcode do
		facts = {}
		facts['config_files'] = []

		Dir.foreach('/etc/wpa_supplicant') do |file|
      next if file == '.' or file == '..'
			facts['config_files'] << file
		end

    facts
  end
end
