# frozen_string_literal: true

require 'cgi'

cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['goya_quality_false']
  "<html>
  <body>
    <p>show goya false quality only</p>
    Strings: #{get}
  </body>
</html>"
}