class CountryHelper

  def self.getcountry(country_code)

      countrymap = {"BR" => "143503-1",
                    "AR" => "143505-1",
                    "US" => "143441-1",
                    "CL" => "143483-1",
                    "CO" => "143501-1",
                    "CR" => "143495-1",
                    "SV" => "143506-1",
                    "ES" => "143454-1",
                    "GT" => "143504-1",
                    "MX" => "143468-1",
                    "PA" => "143485-1",
                    "PE" => "143507-1",
                    "VE" => "143502-1"}


      return countrymap[country_code]

  end

end
