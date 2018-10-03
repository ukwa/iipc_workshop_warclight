# frozen_string_literal: true

module ApplicationHelper
	def thumbnail_image(document, options = {})
  	return unless document.first(:content_type_norm) == 'image'
  	image_tag(document.first(:url), options.merge(alt: document.first(:resourcename)))
	end
end
