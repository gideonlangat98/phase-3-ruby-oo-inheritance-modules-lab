require 'pry'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'


class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  include Paramable
  extend Findable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.find_by_name(name)
    @@songs.detect { |a| a.name == name }
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
