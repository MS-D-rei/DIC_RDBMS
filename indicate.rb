# frozen_stirng_literal: true

require 'cgi'

cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['input_string']
  "<html>
    <body>
      <p>Received string is as follows</p>
      <p>string: #{get}</p>
    </body>
  </html>"
}