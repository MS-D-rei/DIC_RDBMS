# frozen_string_literal: true

require 'cgi'

cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['goya_not_self_consumption']
  "<html>
  <body>
    <p>show not self consumption</p>
    Strings: #{get}
  </body>
</html>"
}
