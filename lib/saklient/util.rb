# -*- encoding: UTF-8 -*-

require_relative 'errors/saklient_exception'
require 'uri'

module Saklient

  # @private
  class Util

    # @param [any] obj
    # @param [String] path
    # @return [any]
    def self.exists_path(obj, path)
      aPath = path.split('.')
      for seg in aPath
        return false if (obj).nil?
        return false if !obj.is_a?(Hash)
        next if seg == ''
        return false if !(!obj.nil? && obj.key?(seg.to_sym))
        obj = obj[seg.to_sym]
      end
      return true
    end

    # @param [any] obj
    # @param [String] path
    # @return [any]
    def self.get_by_path(obj, path)
      aPath = path.split('.')
      for seg in aPath
        return nil if (obj).nil?
        return nil if !obj.is_a?(Hash)
        next if seg == ''
        return nil if !(!obj.nil? && obj.key?(seg.to_sym))
        obj = obj[seg.to_sym]
      end
      return obj
    end
  
    def self.get_by_path_any(objects, pathes)
      for obj in objects
        for path in pathes
          ret = get_by_path(obj, path)
          return ret if !ret.nil?
        end
      end
      return nil
    end

    # @todo array support
    # @todo overwriting
    # @todo writing into children of non-object
    # @param [any] obj
    # @param [any] value
    # @param [String] path
    # @return [void]
    def self.set_by_path(obj, path, value)
      aPath = path.split('.')
      key = aPath.pop
      for seg in aPath
        next if seg == ''
        obj[seg.to_sym] = {} if !(!obj.nil? && obj.key?(seg.to_sym))
        obj = obj[seg.to_sym]
      end
      obj[key.to_sym] = value
    end

    # @param [String] classPath
    # @param [Array] args
    # @return [any]
    def self.create_class_instance(classPath, args)
      ret = nil
      if !(classPath).nil?
        apath = classPath.split('.')
        ret = apath.inject(Object) { |obj, name| obj.const_get(name[0].upcase + name[1..-1]) }.new(*args)
      end
      raise Exception.new('Could not create class instance of ' + classPath) if (ret).nil?
      return ret
    end
    
    # @param [String] s
    # @return [NativeDate]
    def self.str2date(s)
      return nil if (s).nil?
      return DateTime.parse(s)
    end

    # @param [NativeDate] d
    # @return [String]
    def self.date2str(d)
      return nil if (d).nil?
      return d.to_s
    end

    # @param [String] ip
    # @return [Integer]
    def self.ip2long(s)
      return nil unless s.is_a? String
      return nil unless /^\d+\.\d+\.\d+\.\d+$/.match(s)
      ret = 0
      s.split(/\./).each{|o|
        v = o.to_i
        ret = nil unless 0<=v && v<=255
        ret = ret<<8 | v if !ret.nil?
      }
      return ret
    end
    
    # @param [Integer] long
    # @return [String]
    def self.long2ip(v)
      v = v.to_i if v.is_a? String
      return nil unless v.is_a? Integer
      ret = []
      v += (1<<32) if v<0
      4.times{||
        ret.unshift(v & 255)
        v >>= 8
      }
      return nil if v != 0
      return ret.join(".")
    end
    
    # @param [String] s
    # @return [String]
    def self.url_encode(s)
      return URI.encode(s.to_s)
    end

    # @param [Integer] sec
    # @return [void]
    def self.sleep(sec)
      super self
    end

    # @param [any] value
    # @param [String] typeName
    # @return [void]
    def self.validate_type(value, typeName, force=false)
      isOk = false
      if !force then
        return if typeName=="any" || typeName=="void" || value.nil?
        clazz = value.class.to_s
        if typeName=="bool"
          isOk = clazz=="TrueClass" || clazz=="FalseClass"
        elsif typeName=="Float"
          isOk = clazz=="Fixnum" || clazz=="Float"
        elsif typeName=="String"
          isOk = clazz=="Fixnum" || clazz=="Float" || clazz=="String"
        else
          isOk = value.is_a?(Object.const_get(typeName))
        end
      end
      raise Saklient::Errors::SaklientException.new('argument_type_mismatch', 'Argument type mismatch (expected '+typeName+' but got '+clazz+')') unless isOk
    end
    
    def self.are_same(a, b)
      return a.equal?(b)
    end
    
    def self.auto_rename(name, candidates)
      m = /^(.*?)(\d+)(\W*)$/.match(name)
      if m then
        max = 0
        len = 0
        for c in candidates
          n = /^(.*?)(\d+)(\W*)$/.match(c)
          next unless n
          next unless m[1]==n[1] and m[3]==n[3]
          max = [max, n[2].to_i].max
          len = [len, n[2].length].max
        end
        if 0 < len
          return sprintf("%s%0" + len.to_s + "d%s", m[1], max+1, m[3])
        end
      end
      return name + "-2"
    end

  end

end
