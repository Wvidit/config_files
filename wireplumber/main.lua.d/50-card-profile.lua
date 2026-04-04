rule = {
  matches = {{ { "device.name", "=", "alsa_card.pci-0000_00_1f.3" } }},
  apply_properties = {
    ["device.profile"] = "output:analog-stereo+input:analog-stereo",
  },
}
table.insert(alsa_monitor.rules, rule)
