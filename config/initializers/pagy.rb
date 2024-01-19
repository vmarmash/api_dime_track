require 'pagy/extras/metadata'
require "pagy/extras/array"
require 'pagy/extras/overflow'

Pagy::DEFAULT[:items] = 10
Pagy::DEFAULT[:overflow] = :last_page