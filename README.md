ios-rates
=========

simple api to get total of reviews from your app on AppStore (without writing reviews, only the full number of eachone ) 



usage
=========


ALL REVIEWS

http://ios-rates.herokuapp.com/reviews?id-app=YOUR_APP_ID&country=COUNTRY_CODE



ACTUAL COUNTRY CODE SUPPORT:


{"BR" => "143503-1",
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

You Can add more countries on the CountryHelper class.





RESPONSE EXAMPLE:

{
1: "53",
2: "19",
3: "45",
4: "164",
5: "401"
}



bye bye!



