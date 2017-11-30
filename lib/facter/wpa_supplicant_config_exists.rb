Facter.add(:wpa_supplicant) do
  setcode do
    wpa_supplicant_dir = '/etc/wpa_supplicant'
    facts = {}
    facts['config_files'] = []

    if File.directory?(wpa_supplicant_dir)
      Dir.foreach(wpa_supplicant_dir) do |file|
        next if file == '.' or file == '..'
        facts['config_files'] << file
      end
    else
      facts['config_files'] = []
    end

    facts
  end
end
