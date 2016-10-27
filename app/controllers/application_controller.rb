class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  $dic = Hash['municipios' => Hash[
    'Antolín del Campo' => 0,
'Arismendi' => 1,
'Díaz' => 2,
'García' => 3,
'Gómez' => 4,
'Maneiro' => 5,
'Marcano' => 6,
'Mariño' => 7,
'Península de Macanao' => 8,
'Tubores' => 9,
'Villalba' => 10],

'tipo_de_cedula' => Hash[
  'V' => 0,
'E' => 1],
'status' => Hash[
  'Normal' => 0,
'Urgente' => 1],
'sexo' => Hash[
  'Masculino' => 0,
'Femenino' => 1]]
end
