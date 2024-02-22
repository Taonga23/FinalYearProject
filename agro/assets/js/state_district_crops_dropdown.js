// State, District and crop Options for crop prediction
var province_arr = new Array(
  "Central Province",
  "Copperbelt Province",
  "Eastern Province",
  "Luapula Province",
  "Lusaka Province",
  "Muchinga Province",
  "Northern Province",
  "North-Western Province",
  "Southern Province",
  "Western Province"
);

var s_a = new Array();
s_a[0] = "Kabwe | Kapiri Mposhi | Mkushi | Serenje";
s_a[1] = "Chililabombwe | Chingola | Kalulushi | Kitwe | Luanshya | Masaiti | Mufulira | Ndola";
s_a[2] = "Chadiza | Chipata | Katete | Lundazi | Mambwe | Nyimba | Petauke | Sinda";
s_a[3] = "Kawambwa | Mansa | Mwense | Nchelenge | Samfya";
s_a[4] = "Chinsali | Isoka | Mpika | Nakonde | Shiwa Ng'andu";
s_a[5] = "Kasama | Mbala | Mpulungu | Mporokoso";
s_a[6] = "Kabompo | Kasempa | Mufumbwe | Mwinilunga | Solwezi";
s_a[7] = "Choma | Gwembe | Kalomo | Kazungula | Livingstone | Mazabuka | Monze | Namwala | Siavonga";
s_a[8] = "Kalabo | Kaoma | Lukulu | Mongu | Senanga";

function print_state(state_id){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var option_str = document.getElementById(state_id);
	option_str.length=0;
	option_str.options[0] = new Option('Select State','');
	option_str.selectedIndex = 0;
	for (var i=0; i<state_arr.length; i++) {
		option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function print_city(city_id, city_index){
	var option_str = document.getElementById(city_id);
	option_str.length=0;	
	option_str.options[0] = new Option('Select District','');
	option_str.selectedIndex = 0;
	var city_arr = s_a[city_index].split("|");
	for (var i=0; i<city_arr.length; i++) {
		option_str.options[option_str.length] = new Option(city_arr[i],city_arr[i]);
	}
}



// dropdown for rainfall prediction

var months = ["ANNUAL", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC", "Jan-Feb", "Mar-May", "Jun-Sep", "Oct-Dec"]; 

function print_months(month_id) {
    var option_months = document.getElementById(month_id);
    option_months.length = 0;
    option_months.options[0] = new Option('Select Month', '');
    option_months.selectedIndex = 0;
    for (var i = 0; i < months.length; i++) {
        option_months.options[option_months.length] = new Option(months[i], months[i]);
    }
}

var province = ["Central Province", "Copperbelt Province", "Eastern Province", "Luapula Province", "Lusaka Province", "Muchinga Province", "North-Western Province", "Northern Province", "Southern Province", "Western Province"];
function print_region(region_id) {
    var option_region = document.getElementById(region_id);
    option_region.length = 0;
    option_region.options[0] = new Option('Select Region', '');
    option_region.selectedIndex = 0;
    for (var i = 0; i < region.length; i++) {
        option_region.options[option_region.length] = new Option(region[i], region[i]);
    }
}


// district crop dropdown for yield prediction

const cropOptions = {
  // Lusaka: {
  //   Spring: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes'],
  //   Summer: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes', 'Sunflower', 'Cowpeas'],
  //   WholeYear: ['Beans', 'Peas', 'Bananas', 'Mangoes', 'Oranges', 'Tomatoes', 'Onions', 'Cabbage', 'Carrots'],
  // },
  Copperbelt: {
    Spring: ['Maize', 'Sugarcane', 'Cassava', 'Cotton', 'Groundnuts', 'Tobacco', 'Wheat', 'Millets', 'Rice', 'Sweetpotato'],
    Winter: ['Maize', 'Sugarcane', 'Cassava', 'Cotton', 'Groundnuts', 'Tobacco', 'Wheat', 'Millets', 'Rice', 'Sweetpotato'],
    Summer: ['Maize', 'Sugarcane', 'Cassava', 'Cotton', 'Groundnuts', 'Tobacco', 'Wheat', 'Millets', 'Rice', 'Sweetpotato'],
    WholeYear: ['Maize', 'Sugarcane', 'Cassava', 'Cotton', 'Groundnuts', 'Tobacco', 'Wheat', 'Millets', 'Rice', 'Sweetpotato'],
    }
  // Eastern: {
  //   Spring: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes'],
  //   Summer: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes', 'Sunflower', 'Cowpeas'],
  //   WholeYear: ['Beans', 'Peas', 'Bananas', 'Mangoes', 'Oranges', 'Tomatoes', 'Onions', 'Cabbage', 'Carrots'],
  // },
  // Southern: {
  //   Spring: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes'],
  //   Summer: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes', 'Sunflower', 'Cowpeas'],
  //   WholeYear: ['Beans', 'Peas', 'Bananas', 'Mangoes', 'Oranges', 'Tomatoes', 'Onions', 'Cabbage', 'Carrots'],
  // },
  // Northern: {
  //   Spring: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes'],
  //   Summer: ['Maize', 'Sugarcane', 'Cassava', 'Groundnuts', 'Rice', 'Sweet Potatoes', 'Sunflower', 'Cowpeas'],
  //   WholeYear: ['Beans', 'Peas', 'Bananas', 'Mangoes', 'Oranges', 'Tomatoes', 'Onions', 'Cabbage', 'Carrots'],
  // } 
};
