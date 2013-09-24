
provides "ipmi"

def ipmi_has_available
  begin
    contains = `dmidecode --type 38`.include? 'IPMI Device Information'
  rescue
    contains = false
  end

  contains
end

ipmi Mash.new
ipmi[:available] = ipmi_has_available


