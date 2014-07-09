require 'i18n'
I18n.load_path += Dir[File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'locales', '*.yml'))]

require 'rs_paginator/collection'
require 'rs_paginator/page_info'
require 'rs_paginator/paginator'
