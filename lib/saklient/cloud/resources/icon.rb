# -*- encoding: UTF-8 -*-

# This code is automatically transpiled by Saklient Translator

require_relative '../../errors/saklient_exception'
require_relative '../client'
require_relative 'resource'
require_relative '../enums/escope'

module Saklient
  module Cloud
    module Resources

      # アイコンの実体1つに対応し, 属性の取得や操作を行うためのクラス.
      class Icon < Saklient::Cloud::Resources::Resource

        protected

        # ID
        #
        # @return [String]
        attr_accessor :m_id

        # スコープ {Saklient::Cloud::Enums::EScope}
        #
        # @return [String]
        attr_accessor :m_scope

        # 名前
        #
        # @return [String]
        attr_accessor :m_name

        # URL
        #
        # @return [String]
        attr_accessor :m_url

        # @private
        # @return [String]
        def _api_path
          return '/icon'
        end

        # @private
        # @return [String]
        def _root_key
          return 'Icon'
        end

        # @private
        # @return [String]
        def _root_key_m
          return 'Icons'
        end

        public

        # @private
        # @return [String]
        def _class_name
          return 'Icon'
        end

        # @private
        # @return [String]
        def _id
          return get_id
        end

        # このローカルオブジェクトに現在設定されているリソース情報をAPIに送信し, 新規作成または上書き保存します.
        #
        # @return [Icon] this
        def save
          return _save
        end

        # 最新のリソース情報を再取得します.
        #
        # @return [Icon] this
        def reload
          return _reload
        end

        # @private
        # @param [Saklient::Cloud::Client] client
        # @param [any] obj
        # @param [bool] wrapped
        def initialize(client, obj, wrapped = false)
          super(client)
          Saklient::Util::validate_type(client, 'Saklient::Cloud::Client')
          Saklient::Util::validate_type(wrapped, 'bool')
          api_deserialize(obj, wrapped)
        end

        protected

        # @return [bool]
        attr_accessor :n_id

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_id
          return @m_id
        end

        public

        # ID
        #
        # @return [String]
        attr_reader :id

        def id
          get_id
        end

        protected

        # @return [bool]
        attr_accessor :n_scope

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_scope
          return @m_scope
        end

        public

        # スコープ {Saklient::Cloud::Enums::EScope}
        #
        # @return [String]
        attr_reader :scope

        def scope
          get_scope
        end

        protected

        # @return [bool]
        attr_accessor :n_name

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_name
          return @m_name
        end

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @param [String] v
        # @return [String]
        def set_name(v)
          Saklient::Util::validate_type(v, 'String')
          @m_name = v
          @n_name = true
          return @m_name
        end

        public

        # 名前
        #
        # @return [String]
        attr_accessor :name

        def name
          get_name
        end

        def name=(v)
          set_name(v)
        end

        protected

        # @return [bool]
        attr_accessor :n_url

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_url
          return @m_url
        end

        public

        # URL
        #
        # @return [String]
        attr_reader :url

        def url
          get_url
        end

        protected

        # (This method is generated in Translator_default#buildImpl)
        #
        # @param [any] r
        def api_deserialize_impl(r)
          @is_new = (r).nil?
          r = {} if @is_new
          @is_incomplete = false
          if Saklient::Util::exists_path(r, 'ID')
            @m_id = (Saklient::Util::get_by_path(r, 'ID')).nil? ? nil : Saklient::Util::get_by_path(r, 'ID').to_s
          else
            @m_id = nil
            @is_incomplete = true
          end
          @n_id = false
          if Saklient::Util::exists_path(r, 'Scope')
            @m_scope = (Saklient::Util::get_by_path(r, 'Scope')).nil? ? nil : Saklient::Util::get_by_path(r, 'Scope').to_s
          else
            @m_scope = nil
            @is_incomplete = true
          end
          @n_scope = false
          if Saklient::Util::exists_path(r, 'Name')
            @m_name = (Saklient::Util::get_by_path(r, 'Name')).nil? ? nil : Saklient::Util::get_by_path(r, 'Name').to_s
          else
            @m_name = nil
            @is_incomplete = true
          end
          @n_name = false
          if Saklient::Util::exists_path(r, 'URL')
            @m_url = (Saklient::Util::get_by_path(r, 'URL')).nil? ? nil : Saklient::Util::get_by_path(r, 'URL').to_s
          else
            @m_url = nil
            @is_incomplete = true
          end
          @n_url = false
        end

        # @private
        # @param [bool] withClean
        # @return [any]
        def api_serialize_impl(withClean = false)
          Saklient::Util::validate_type(withClean, 'bool')
          missing = []
          ret = {}
          Saklient::Util::set_by_path(ret, 'ID', @m_id) if withClean || @n_id
          Saklient::Util::set_by_path(ret, 'Scope', @m_scope) if withClean || @n_scope
          if withClean || @n_name
            Saklient::Util::set_by_path(ret, 'Name', @m_name)
          else
            missing << 'name' if @is_new
          end
          Saklient::Util::set_by_path(ret, 'URL', @m_url) if withClean || @n_url
          raise Saklient::Errors::SaklientException.new('required_field', 'Required fields must be set before the Icon creation: ' + missing.join(', ')) if missing.length > 0
          return ret
        end

      end

    end
  end
end
