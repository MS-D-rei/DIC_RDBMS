# frozen_string_literal: true

require 'cgi'

cgi = CGI.new

cgi.out('type' => 'text/html', 'charset' => 'UTF-8') {
  get = cgi['goya']
  "<html>
    <body>
      <p>goya size and customers</p>
      Strings: #{get}
    </body>
  </html>"
}
