# frozen_string_literal: true

require 'pg'

connection = PG::connect(dbname: 'goya')
connection.internal_encoding = 'UTF-8'

begin
  result = connection.exec('SELECT weight, give_for FROM crops;')
  result.each do |record|
    puts "goya size: #{record['weight']} customer: #{record['give_for']}"
  end
ensure
  connection.finish
end
