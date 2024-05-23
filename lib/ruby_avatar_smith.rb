# frozen_string_literal: true

require 'rmagick'
require_relative 'ruby_avatar_smith/version'

module RubyAvatarSmith
  class Error < StandardError; end

  # Generates a random image with the specified width, height, and text annotation.
  #
  # @param width [Integer] The width of the image.
  # @param height [Integer] The height of the image.
  # @param text [String] The text to be annotated on the image.
  # @return [Magick::Image] The generated image with the text annotation.
  def self.create_random_image(width, height, text)
    rand_colour = "rgb(#{rand(0..256)}, #{rand(0..256)}, #{rand(0..256)})"
    randam_bg = Magick::Image.new(width, height) { |col| col.background_color = rand_colour }

    text_over_image = Magick::Draw.new
    text_over_image.annotate(randam_bg, 0, 0, 0, 0, text) do |x|
      x.fill = 'gray83'
      x.gravity = Magick::CenterGravity
      x.pointsize = 50
    end

    randam_bg
  end
end
