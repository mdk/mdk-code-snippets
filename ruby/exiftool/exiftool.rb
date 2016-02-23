#!/usr/bin/env ruby
require 'rubygems'
require 'thor'
require 'pathname'
require 'mini_exiftool'
require 'digest'
require 'fileutils'

# Voigtlander Nokton Classic 40mm f/1.4 MC

class MyThorCommand < Thor
  desc "fixlens", "Fixes the lens information for all given files"
  method_option :lens, :banner => 'LENS identifier string ie. Nikkor 50mm f/1.4 Ai-S', :default => 'Nikkor 50mm f/1.4 Ai-S'
  def fixlens(*args)
  	args.each { |file|
  		puts "Fixing lens for #{file} to #{options.lens}"

  		photo = MiniExiftool.new(file)
			photo[:lens] = options.lens
			photo.save
  	}
  end

  desc "fixcamera", "Fixes the camera information for all given files"
  method_option :make, :banner => 'MAKE identifier string ie. Nikon', :default => 'Nikon'
  method_option :model, :banner => 'MODEL identifier string ie. FM3A', :default => 'FM3A'
  def fixcamera(*args)
    args.each { |file|
      puts "Fixing camera for #{file} to #{options.camera}"

      photo = MiniExiftool.new(file)
      photo[:model] = options.model
      photo[:make] = options.make
      photo.save
    }
  end

	desc "albumize", "Prepares album for archival and online storage"
	method_option :prefix, :banner => 'PREFIX to use such as MDK', :aliases => :p, :default => 'MDK'
  method_option :directory, :banner => 'DIRECTORY with photos', :aliases => [:d, :dir], :required => true
  method_option :namespace, :banner => 'NAMESPACE of the album, two letters', :aliases => [:n, :name], :required => true
  def albumize

    item_list = []

    # Collect all items first...
    Dir.foreach(options.directory) do |item|
      next if not item =~ /jpg$|jpeg$JPG$JPEG$/
      next if item == '.' or item == '..'
      item_list << item
    end

  	album_index = 1
    date_bit = nil
  	item_list.sort.each do |item|
  		source_extension = File.extname(item)
  		source_basename = File.basename(item, source_extension)

  		id = ''
      photo = MiniExiftool.new(File.join(options.directory, item))

      if ! date_bit
        time = photo[:date_time_original]
        time = Date.parse("2015-11-1") if not time
        date_bit = time.strftime('%y%m%d')
      end

			id = "#{options.prefix}#{date_bit}-#{options.namespace}"
			id = id + sprintf('%03d', album_index);

      photo[:title] = id
      photo.save

  		Dir.foreach(options.directory) do |item_two|
  			extension = File.extname(item_two)
  			basename = File.basename(item_two, extension)
  			if basename == source_basename
  				source = File.join(options.directory, item_two)
  				target = File.join(options.directory, id + extension)
  				puts "Moving #{source} => #{target}"
          FileUtils.mv(source, target)
  			end
  		end

  		album_index += 1
  	end
  end
end

MyThorCommand.start
