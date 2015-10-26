desc "install gems"
task :install do
  sh "bundle install"
end

task :default => :tu

desc "Pruebas unitarias de la clase fraccion"
task :tu do
  sh "ruby -I. test/tc_racional.rb"
end

=begin
desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/tc_point.rb -n /simple/"
end
=end