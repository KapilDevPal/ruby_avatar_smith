# frozen_string_literal: true

require 'rmagick'
require 'active_support'
require 'active_storage'

module RubyAvatarSmith
  class Error < StandardError; end

  # Generates a random image with the specified width, height, and text annotation.
  #
  # @param width [Integer] The width of the image.
  # @param height [Integer] The height of the image.
  # @param text [String] The text to be annotated on the image.
  # @return [ActiveStorage::Blob] The generated image blob.
  # record User to which image should attach
  def self.create_user_image(record, width, height, text)
    byebug
    rand_colour = "rgb(#{rand(0..256)}, #{rand(0..256)}, #{rand(0..256)})"
    randam_bg = Magick::Image.new(width, height) { |col| col.background_color = rand_colour }

    text_over_image = Magick::Draw.new
    text_over_image.annotate(randam_bg, 0, 0, 0, 0, text) do |x|
      x.fill = 'gray83'
      x.gravity = Magick::CenterGravity
      x.pointsize = 50
    end
    randam_bg.format = "PNG"
    random_image_blob = randam_bg.to_blob
    record.picture.attach(
      io: StringIO.new(random_image_blob),
      filename: 'random_image.png',
      content_type: 'image/png'
    )
  end
end

