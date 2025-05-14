clear
clc
% Read the CSV file
filename = 'data_afterprocessing.csv';  % Replace with your actual CSV file name
opts = detectImportOptions(filename);

% Read the table using the detected import options
data = readtable(filename, opts);

% Extract columns into individual variables (matching header names)
Date = data.Date;
Time = data.Time;
CO2_room = data.CO2_room;
Relative_humidity_room = data.Relative_humidity_room;
Lighting_room = data.Lighting_room;
Meteo_Rain = data.Meteo_Rain;
Meteo_Sun_dusk = data.Meteo_Sun_dusk;
Meteo_Wind = data.Meteo_Wind;
Meteo_Sun_light_in_west_facade = data.Meteo_Sun_light_in_west_facade;
Meteo_Sun_light_in_east_facade = data.Meteo_Sun_light_in_east_facade;
Meteo_Sun_light_in_south_facade = data.Meteo_Sun_light_in_south_facade;
Meteo_Sun_light_in_north_facade = data.Meteo_Sun_light_in_north_facade;
Meteo_Sun_irradiance = data.Meteo_Sun_irradiance;
Outdoor_relative_humidity_Sensor = data.Outdoor_relative_humidity_Sensor;
Day_of_the_week = data.Day_of_the_week;
Occupancy_1 = data.Occupancy_1;
Occupancy_2 = data.Occupancy_2;
Occupancy_3 = data.Occupancy_3;
Indoor_temperature_room = data.Indoor_temperature_room;
Humidity = data.Humidity;
Outside_temp = data.Outside_temp;
Satisfaction = data.Satisfaction;
subplot(2,1,1)
plot(Outside_temp);title('outside temperature')
subplot(2,1,2)
plot(Indoor_temperature_room);title('Indoor temperature')