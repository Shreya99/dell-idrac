#
# Import idrac configuration
#

Puppet::Type.newtype(:importbiosconfiguration) do
    @doc = "Import idrac bios configuration."

    ensurable do
     newvalue(:present) do
      provider.create
     end
     defaultto(:present)
    end

    newparam(:name) do
      desc "The test name."
    end

    newparam(:dracipaddress) do
      desc "The Ip address of idrac."
    end

    newparam(:dracusername) do
      desc "User name."
    end

    newparam(:dracpassword) do
      desc "Password."
    end

    newparam(:nfsipaddress) do
      desc "NFS Server ipaddress."
    end

    newparam(:nfssharepath) do
      desc "NFS share path."
    end

    newparam(:memtest) do
      desc "MemTest is Enable or Disable."
      newvalues("Enabled", "Disabled")
      defaultto("Disabled")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:procvirtualization) do
      desc "ProcVirtualization is Enable or Disable."
      newvalues("Enabled", "Disabled")
      defaultto("Enabled")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:proccores) do
      desc "ProcCores."
      defaultto("All")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:bootmode) do
      desc "BootMode."
      defaultto("Bios")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:bootseqretry) do
      desc "BootSeqRetry is Enable or Disable."
      newvalues("Enabled", "Disabled")
      defaultto("Disabled")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:integratedraid) do
      desc "IntegratedRaid is Enable or Disable."
      newvalues("Enabled", "Disabled")
      defaultto("Disabled")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:usbports) do
      desc "UsbPorts"
      defaultto("AllOn")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:internalusb) do
      desc "InternalUsb is On or Off."
      newvalues("On", "Off")
      defaultto("Off")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:internalsdcard) do
      desc "InternalSdCard is On or Off."
      newvalues("On", "Off")
      defaultto("On")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:internalsdcardredundancy) do
      desc "InternalSdCardRedundancy"
      defaultto("Mirror")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

    newparam(:integratednetwork1) do
      desc "IntegratedNetwork1 is Enable or Disable."
      newvalues("Enabled", "Disabled")
      defaultto("Enabled")
      munge do |value|
        if value.strip.length == 0
          value.to_s
        else
          value.to_s
        end
      end
    end

end