# -*- encoding: UTF-8 -*-

# This code is automatically transpiled by Saklient Translator

require_relative 'http_exception'
require_relative 'http_bad_gateway_exception'
require_relative 'http_bad_request_exception'
require_relative 'http_conflict_exception'
require_relative 'http_expectation_failed_exception'
require_relative 'http_failed_dependency_exception'
require_relative 'http_forbidden_exception'
require_relative 'http_gateway_timeout_exception'
require_relative 'http_gone_exception'
require_relative 'http_http_version_not_supported_exception'
require_relative 'http_insufficient_storage_exception'
require_relative 'http_internal_server_error_exception'
require_relative 'http_length_required_exception'
require_relative 'http_locked_exception'
require_relative 'http_method_not_allowed_exception'
require_relative 'http_not_acceptable_exception'
require_relative 'http_not_extended_exception'
require_relative 'http_not_found_exception'
require_relative 'http_not_implemented_exception'
require_relative 'http_payment_required_exception'
require_relative 'http_precondition_failed_exception'
require_relative 'http_proxy_authentication_required_exception'
require_relative 'http_request_entity_too_large_exception'
require_relative 'http_request_timeout_exception'
require_relative 'http_request_uri_too_long_exception'
require_relative 'http_requested_range_not_satisfiable_exception'
require_relative 'http_service_unavailable_exception'
require_relative 'http_unauthorized_exception'
require_relative 'http_unprocessable_entity_exception'
require_relative 'http_unsupported_media_type_exception'
require_relative 'http_upgrade_required_exception'
require_relative 'http_variant_also_negotiates_exception'
require_relative '../cloud/errors/access_api_key_disabled_exception'
require_relative '../cloud/errors/access_sakura_exception'
require_relative '../cloud/errors/access_staff_exception'
require_relative '../cloud/errors/access_token_exception'
require_relative '../cloud/errors/access_xhr_or_api_key_exception'
require_relative '../cloud/errors/account_not_found_exception'
require_relative '../cloud/errors/account_not_specified_exception'
require_relative '../cloud/errors/ambiguous_identifier_exception'
require_relative '../cloud/errors/ambiguous_zone_exception'
require_relative '../cloud/errors/api_proxy_timeout_exception'
require_relative '../cloud/errors/api_proxy_timeout_non_get_exception'
require_relative '../cloud/errors/archive_is_incomplete_exception'
require_relative '../cloud/errors/boot_failure_by_lock_exception'
require_relative '../cloud/errors/boot_failure_in_group_exception'
require_relative '../cloud/errors/busy_exception'
require_relative '../cloud/errors/cant_resize_smaller_exception'
require_relative '../cloud/errors/cdrom_device_locked_exception'
require_relative '../cloud/errors/cdrom_disabled_exception'
require_relative '../cloud/errors/cdrom_in_use_exception'
require_relative '../cloud/errors/cdrom_is_incomplete_exception'
require_relative '../cloud/errors/connect_to_same_switch_exception'
require_relative '../cloud/errors/contract_creation_exception'
require_relative '../cloud/errors/copy_to_itself_exception'
require_relative '../cloud/errors/delete_disk_b4_template_exception'
require_relative '../cloud/errors/delete_ip_v6_nets_first_exception'
require_relative '../cloud/errors/delete_res_b4_account_exception'
require_relative '../cloud/errors/delete_router_b4_switch_exception'
require_relative '../cloud/errors/delete_static_route_first_exception'
require_relative '../cloud/errors/disabled_in_sandbox_exception'
require_relative '../cloud/errors/disconnect_b4_delete_exception'
require_relative '../cloud/errors/disconnect_b4_update_exception'
require_relative '../cloud/errors/disk_connection_limit_exception'
require_relative '../cloud/errors/disk_is_copying_exception'
require_relative '../cloud/errors/disk_is_not_available_exception'
require_relative '../cloud/errors/disk_license_mismatch_exception'
require_relative '../cloud/errors/disk_or_ss_in_migration_exception'
require_relative '../cloud/errors/disk_stock_run_out_exception'
require_relative '../cloud/errors/dns_arecord_not_found_exception'
require_relative '../cloud/errors/dns_aaaa_record_not_found_exception'
require_relative '../cloud/errors/dns_ptr_update_failure_exception'
require_relative '../cloud/errors/dont_create_in_sandbox_exception'
require_relative '../cloud/errors/duplicate_account_code_exception'
require_relative '../cloud/errors/duplicate_entry_exception'
require_relative '../cloud/errors/duplicate_user_code_exception'
require_relative '../cloud/errors/file_not_uploaded_exception'
require_relative '../cloud/errors/filter_array_comparison_exception'
require_relative '../cloud/errors/filter_bad_operator_exception'
require_relative '../cloud/errors/filter_null_comparison_exception'
require_relative '../cloud/errors/filter_unknown_operator_exception'
require_relative '../cloud/errors/ftp_cannot_close_exception'
require_relative '../cloud/errors/ftp_is_already_close_exception'
require_relative '../cloud/errors/ftp_is_already_open_exception'
require_relative '../cloud/errors/ftp_must_be_closed_exception'
require_relative '../cloud/errors/host_operation_failure_exception'
require_relative '../cloud/errors/illegal_das_usage_exception'
require_relative '../cloud/errors/in_migration_exception'
require_relative '../cloud/errors/invalid_format_exception'
require_relative '../cloud/errors/invalid_param_comb_exception'
require_relative '../cloud/errors/invalid_range_exception'
require_relative '../cloud/errors/invalid_uri_argument_exception'
require_relative '../cloud/errors/ip_v6_net_already_attached_exception'
require_relative '../cloud/errors/limit_count_in_account_exception'
require_relative '../cloud/errors/limit_count_in_member_exception'
require_relative '../cloud/errors/limit_count_in_network_exception'
require_relative '../cloud/errors/limit_count_in_router_exception'
require_relative '../cloud/errors/limit_count_in_zone_exception'
require_relative '../cloud/errors/limit_memory_in_account_exception'
require_relative '../cloud/errors/limit_size_in_account_exception'
require_relative '../cloud/errors/missing_iso_image_exception'
require_relative '../cloud/errors/missing_param_exception'
require_relative '../cloud/errors/must_be_of_same_zone_exception'
require_relative '../cloud/errors/no_display_response_exception'
require_relative '../cloud/errors/not_for_router_exception'
require_relative '../cloud/errors/not_replicating_exception'
require_relative '../cloud/errors/not_with_hybridconn_exception'
require_relative '../cloud/errors/old_storage_plan_exception'
require_relative '../cloud/errors/operation_failure_exception'
require_relative '../cloud/errors/operation_timeout_exception'
require_relative '../cloud/errors/original_hash_mismatch_exception'
require_relative '../cloud/errors/packet_filter_applying_exception'
require_relative '../cloud/errors/packet_filter_version_mismatch_exception'
require_relative '../cloud/errors/param_ip_not_found_exception'
require_relative '../cloud/errors/param_res_not_found_exception'
require_relative '../cloud/errors/payment_credit_card_exception'
require_relative '../cloud/errors/payment_payment_exception'
require_relative '../cloud/errors/payment_registration_exception'
require_relative '../cloud/errors/payment_tel_certification_exception'
require_relative '../cloud/errors/payment_unpayable_exception'
require_relative '../cloud/errors/penalty_operation_exception'
require_relative '../cloud/errors/replica_already_exists_exception'
require_relative '../cloud/errors/replica_not_found_exception'
require_relative '../cloud/errors/res_already_connected_exception'
require_relative '../cloud/errors/res_already_disconnected_exception'
require_relative '../cloud/errors/res_already_exists_exception'
require_relative '../cloud/errors/res_used_in_zone_exception'
require_relative '../cloud/errors/resource_path_not_found_exception'
require_relative '../cloud/errors/run_out_of_ip_address_exception'
require_relative '../cloud/errors/same_license_required_exception'
require_relative '../cloud/errors/server_could_not_stop_exception'
require_relative '../cloud/errors/server_is_cleaning_exception'
require_relative '../cloud/errors/server_operation_failure_exception'
require_relative '../cloud/errors/server_power_must_be_down_exception'
require_relative '../cloud/errors/server_power_must_be_up_exception'
require_relative '../cloud/errors/service_temporarily_unavailable_exception'
require_relative '../cloud/errors/size_mismatch_exception'
require_relative '../cloud/errors/snapshot_in_migration_exception'
require_relative '../cloud/errors/still_creating_exception'
require_relative '../cloud/errors/storage_abnormal_exception'
require_relative '../cloud/errors/storage_operation_failure_exception'
require_relative '../cloud/errors/switch_hybrid_connected_exception'
require_relative '../cloud/errors/template_ftp_is_open_exception'
require_relative '../cloud/errors/template_is_incomplete_exception'
require_relative '../cloud/errors/too_many_request_exception'
require_relative '../cloud/errors/unknown_exception'
require_relative '../cloud/errors/unknown_os_type_exception'
require_relative '../cloud/errors/unsupported_res_class_exception'
require_relative '../cloud/errors/user_not_specified_exception'
require_relative '../cloud/errors/vnc_proxy_request_failure_exception'

module Saklient
  module Errors

    class ExceptionFactory

      # @param [Fixnum] status
      # @param [String] code
      # @param [String] message
      # @return [HttpException]
      def self.create(status, code = nil, message = '')
        case (code)
          when 'access_apikey_disabled'
            return Saklient::Cloud::Errors::AccessApiKeyDisabledException.new(status, code, message)
          when 'access_sakura'
            return Saklient::Cloud::Errors::AccessSakuraException.new(status, code, message)
          when 'access_staff'
            return Saklient::Cloud::Errors::AccessStaffException.new(status, code, message)
          when 'access_token'
            return Saklient::Cloud::Errors::AccessTokenException.new(status, code, message)
          when 'access_xhr_or_apikey'
            return Saklient::Cloud::Errors::AccessXhrOrApiKeyException.new(status, code, message)
          when 'account_not_found'
            return Saklient::Cloud::Errors::AccountNotFoundException.new(status, code, message)
          when 'account_not_specified'
            return Saklient::Cloud::Errors::AccountNotSpecifiedException.new(status, code, message)
          when 'ambiguous_identifier'
            return Saklient::Cloud::Errors::AmbiguousIdentifierException.new(status, code, message)
          when 'ambiguous_zone'
            return Saklient::Cloud::Errors::AmbiguousZoneException.new(status, code, message)
          when 'apiproxy_timeout'
            return Saklient::Cloud::Errors::ApiProxyTimeoutException.new(status, code, message)
          when 'apiproxy_timeout_non_get'
            return Saklient::Cloud::Errors::ApiProxyTimeoutNonGetException.new(status, code, message)
          when 'archive_is_incomplete'
            return Saklient::Cloud::Errors::ArchiveIsIncompleteException.new(status, code, message)
          when 'bad_gateway'
            return Saklient::Errors::HttpBadGatewayException.new(status, code, message)
          when 'bad_request'
            return Saklient::Errors::HttpBadRequestException.new(status, code, message)
          when 'boot_failure_by_lock'
            return Saklient::Cloud::Errors::BootFailureByLockException.new(status, code, message)
          when 'boot_failure_in_group'
            return Saklient::Cloud::Errors::BootFailureInGroupException.new(status, code, message)
          when 'busy'
            return Saklient::Cloud::Errors::BusyException.new(status, code, message)
          when 'cant_resize_smaller'
            return Saklient::Cloud::Errors::CantResizeSmallerException.new(status, code, message)
          when 'cdrom_device_locked'
            return Saklient::Cloud::Errors::CdromDeviceLockedException.new(status, code, message)
          when 'cdrom_disabled'
            return Saklient::Cloud::Errors::CdromDisabledException.new(status, code, message)
          when 'cdrom_in_use'
            return Saklient::Cloud::Errors::CdromInUseException.new(status, code, message)
          when 'cdrom_is_incomplete'
            return Saklient::Cloud::Errors::CdromIsIncompleteException.new(status, code, message)
          when 'conflict'
            return Saklient::Errors::HttpConflictException.new(status, code, message)
          when 'connect_to_same_switch'
            return Saklient::Cloud::Errors::ConnectToSameSwitchException.new(status, code, message)
          when 'contract_creation'
            return Saklient::Cloud::Errors::ContractCreationException.new(status, code, message)
          when 'copy_to_itself'
            return Saklient::Cloud::Errors::CopyToItselfException.new(status, code, message)
          when 'delete_disk_b4_template'
            return Saklient::Cloud::Errors::DeleteDiskB4TemplateException.new(status, code, message)
          when 'delete_ipv6nets_first'
            return Saklient::Cloud::Errors::DeleteIpV6NetsFirstException.new(status, code, message)
          when 'delete_res_b4_account'
            return Saklient::Cloud::Errors::DeleteResB4AccountException.new(status, code, message)
          when 'delete_router_b4_switch'
            return Saklient::Cloud::Errors::DeleteRouterB4SwitchException.new(status, code, message)
          when 'delete_static_route_first'
            return Saklient::Cloud::Errors::DeleteStaticRouteFirstException.new(status, code, message)
          when 'disabled_in_sandbox'
            return Saklient::Cloud::Errors::DisabledInSandboxException.new(status, code, message)
          when 'disconnect_b4_delete'
            return Saklient::Cloud::Errors::DisconnectB4DeleteException.new(status, code, message)
          when 'disconnect_b4_update'
            return Saklient::Cloud::Errors::DisconnectB4UpdateException.new(status, code, message)
          when 'disk_connection_limit'
            return Saklient::Cloud::Errors::DiskConnectionLimitException.new(status, code, message)
          when 'disk_is_copying'
            return Saklient::Cloud::Errors::DiskIsCopyingException.new(status, code, message)
          when 'disk_is_not_available'
            return Saklient::Cloud::Errors::DiskIsNotAvailableException.new(status, code, message)
          when 'disk_license_mismatch'
            return Saklient::Cloud::Errors::DiskLicenseMismatchException.new(status, code, message)
          when 'disk_stock_run_out'
            return Saklient::Cloud::Errors::DiskStockRunOutException.new(status, code, message)
          when 'diskorss_in_migration'
            return Saklient::Cloud::Errors::DiskOrSsInMigrationException.new(status, code, message)
          when 'dns_a_record_not_found'
            return Saklient::Cloud::Errors::DnsARecordNotFoundException.new(status, code, message)
          when 'dns_aaaa_record_not_found'
            return Saklient::Cloud::Errors::DnsAaaaRecordNotFoundException.new(status, code, message)
          when 'dns_ptr_update_failure'
            return Saklient::Cloud::Errors::DnsPtrUpdateFailureException.new(status, code, message)
          when 'dont_create_in_sandbox'
            return Saklient::Cloud::Errors::DontCreateInSandboxException.new(status, code, message)
          when 'duplicate_account_code'
            return Saklient::Cloud::Errors::DuplicateAccountCodeException.new(status, code, message)
          when 'duplicate_entry'
            return Saklient::Cloud::Errors::DuplicateEntryException.new(status, code, message)
          when 'duplicate_user_code'
            return Saklient::Cloud::Errors::DuplicateUserCodeException.new(status, code, message)
          when 'expectation_failed'
            return Saklient::Errors::HttpExpectationFailedException.new(status, code, message)
          when 'failed_dependency'
            return Saklient::Errors::HttpFailedDependencyException.new(status, code, message)
          when 'file_not_uploaded'
            return Saklient::Cloud::Errors::FileNotUploadedException.new(status, code, message)
          when 'filter_array_comparison'
            return Saklient::Cloud::Errors::FilterArrayComparisonException.new(status, code, message)
          when 'filter_bad_operator'
            return Saklient::Cloud::Errors::FilterBadOperatorException.new(status, code, message)
          when 'filter_null_comparison'
            return Saklient::Cloud::Errors::FilterNullComparisonException.new(status, code, message)
          when 'filter_unknown_operator'
            return Saklient::Cloud::Errors::FilterUnknownOperatorException.new(status, code, message)
          when 'forbidden'
            return Saklient::Errors::HttpForbiddenException.new(status, code, message)
          when 'ftp_cannot_close'
            return Saklient::Cloud::Errors::FtpCannotCloseException.new(status, code, message)
          when 'ftp_is_already_close'
            return Saklient::Cloud::Errors::FtpIsAlreadyCloseException.new(status, code, message)
          when 'ftp_is_already_open'
            return Saklient::Cloud::Errors::FtpIsAlreadyOpenException.new(status, code, message)
          when 'ftp_must_be_closed'
            return Saklient::Cloud::Errors::FtpMustBeClosedException.new(status, code, message)
          when 'gateway_timeout'
            return Saklient::Errors::HttpGatewayTimeoutException.new(status, code, message)
          when 'gone'
            return Saklient::Errors::HttpGoneException.new(status, code, message)
          when 'host_operation_failure'
            return Saklient::Cloud::Errors::HostOperationFailureException.new(status, code, message)
          when 'http_version_not_supported'
            return Saklient::Errors::HttpHttpVersionNotSupportedException.new(status, code, message)
          when 'illegal_das_usage'
            return Saklient::Cloud::Errors::IllegalDasUsageException.new(status, code, message)
          when 'in_migration'
            return Saklient::Cloud::Errors::InMigrationException.new(status, code, message)
          when 'insufficient_storage'
            return Saklient::Errors::HttpInsufficientStorageException.new(status, code, message)
          when 'internal_server_error'
            return Saklient::Errors::HttpInternalServerErrorException.new(status, code, message)
          when 'invalid_format'
            return Saklient::Cloud::Errors::InvalidFormatException.new(status, code, message)
          when 'invalid_param_comb'
            return Saklient::Cloud::Errors::InvalidParamCombException.new(status, code, message)
          when 'invalid_range'
            return Saklient::Cloud::Errors::InvalidRangeException.new(status, code, message)
          when 'invalid_uri_argument'
            return Saklient::Cloud::Errors::InvalidUriArgumentException.new(status, code, message)
          when 'ipv6net_already_attached'
            return Saklient::Cloud::Errors::IpV6NetAlreadyAttachedException.new(status, code, message)
          when 'length_required'
            return Saklient::Errors::HttpLengthRequiredException.new(status, code, message)
          when 'limit_count_in_account'
            return Saklient::Cloud::Errors::LimitCountInAccountException.new(status, code, message)
          when 'limit_count_in_member'
            return Saklient::Cloud::Errors::LimitCountInMemberException.new(status, code, message)
          when 'limit_count_in_network'
            return Saklient::Cloud::Errors::LimitCountInNetworkException.new(status, code, message)
          when 'limit_count_in_router'
            return Saklient::Cloud::Errors::LimitCountInRouterException.new(status, code, message)
          when 'limit_count_in_zone'
            return Saklient::Cloud::Errors::LimitCountInZoneException.new(status, code, message)
          when 'limit_memory_in_account'
            return Saklient::Cloud::Errors::LimitMemoryInAccountException.new(status, code, message)
          when 'limit_size_in_account'
            return Saklient::Cloud::Errors::LimitSizeInAccountException.new(status, code, message)
          when 'locked'
            return Saklient::Errors::HttpLockedException.new(status, code, message)
          when 'method_not_allowed'
            return Saklient::Errors::HttpMethodNotAllowedException.new(status, code, message)
          when 'missing_iso_image'
            return Saklient::Cloud::Errors::MissingIsoImageException.new(status, code, message)
          when 'missing_param'
            return Saklient::Cloud::Errors::MissingParamException.new(status, code, message)
          when 'must_be_of_same_zone'
            return Saklient::Cloud::Errors::MustBeOfSameZoneException.new(status, code, message)
          when 'no_display_response'
            return Saklient::Cloud::Errors::NoDisplayResponseException.new(status, code, message)
          when 'not_acceptable'
            return Saklient::Errors::HttpNotAcceptableException.new(status, code, message)
          when 'not_extended'
            return Saklient::Errors::HttpNotExtendedException.new(status, code, message)
          when 'not_for_router'
            return Saklient::Cloud::Errors::NotForRouterException.new(status, code, message)
          when 'not_found'
            return Saklient::Errors::HttpNotFoundException.new(status, code, message)
          when 'not_implemented'
            return Saklient::Errors::HttpNotImplementedException.new(status, code, message)
          when 'not_replicating'
            return Saklient::Cloud::Errors::NotReplicatingException.new(status, code, message)
          when 'not_with_hybridconn'
            return Saklient::Cloud::Errors::NotWithHybridconnException.new(status, code, message)
          when 'old_storage_plan'
            return Saklient::Cloud::Errors::OldStoragePlanException.new(status, code, message)
          when 'operation_failure'
            return Saklient::Cloud::Errors::OperationFailureException.new(status, code, message)
          when 'operation_timeout'
            return Saklient::Cloud::Errors::OperationTimeoutException.new(status, code, message)
          when 'original_hash_mismatch'
            return Saklient::Cloud::Errors::OriginalHashMismatchException.new(status, code, message)
          when 'packetfilter_applying'
            return Saklient::Cloud::Errors::PacketFilterApplyingException.new(status, code, message)
          when 'packetfilter_version_mismatch'
            return Saklient::Cloud::Errors::PacketFilterVersionMismatchException.new(status, code, message)
          when 'param_ip_not_found'
            return Saklient::Cloud::Errors::ParamIpNotFoundException.new(status, code, message)
          when 'param_res_not_found'
            return Saklient::Cloud::Errors::ParamResNotFoundException.new(status, code, message)
          when 'payment_creditcard'
            return Saklient::Cloud::Errors::PaymentCreditCardException.new(status, code, message)
          when 'payment_payment'
            return Saklient::Cloud::Errors::PaymentPaymentException.new(status, code, message)
          when 'payment_registration'
            return Saklient::Cloud::Errors::PaymentRegistrationException.new(status, code, message)
          when 'payment_required'
            return Saklient::Errors::HttpPaymentRequiredException.new(status, code, message)
          when 'payment_telcertification'
            return Saklient::Cloud::Errors::PaymentTelCertificationException.new(status, code, message)
          when 'payment_unpayable'
            return Saklient::Cloud::Errors::PaymentUnpayableException.new(status, code, message)
          when 'penalty_operation'
            return Saklient::Cloud::Errors::PenaltyOperationException.new(status, code, message)
          when 'precondition_failed'
            return Saklient::Errors::HttpPreconditionFailedException.new(status, code, message)
          when 'proxy_authentication_required'
            return Saklient::Errors::HttpProxyAuthenticationRequiredException.new(status, code, message)
          when 'replica_already_exists'
            return Saklient::Cloud::Errors::ReplicaAlreadyExistsException.new(status, code, message)
          when 'replica_not_found'
            return Saklient::Cloud::Errors::ReplicaNotFoundException.new(status, code, message)
          when 'request_entity_too_large'
            return Saklient::Errors::HttpRequestEntityTooLargeException.new(status, code, message)
          when 'request_timeout'
            return Saklient::Errors::HttpRequestTimeoutException.new(status, code, message)
          when 'request_uri_too_long'
            return Saklient::Errors::HttpRequestUriTooLongException.new(status, code, message)
          when 'requested_range_not_satisfiable'
            return Saklient::Errors::HttpRequestedRangeNotSatisfiableException.new(status, code, message)
          when 'res_already_connected'
            return Saklient::Cloud::Errors::ResAlreadyConnectedException.new(status, code, message)
          when 'res_already_disconnected'
            return Saklient::Cloud::Errors::ResAlreadyDisconnectedException.new(status, code, message)
          when 'res_already_exists'
            return Saklient::Cloud::Errors::ResAlreadyExistsException.new(status, code, message)
          when 'res_used_in_zone'
            return Saklient::Cloud::Errors::ResUsedInZoneException.new(status, code, message)
          when 'resource_path_not_found'
            return Saklient::Cloud::Errors::ResourcePathNotFoundException.new(status, code, message)
          when 'run_out_of_ipaddress'
            return Saklient::Cloud::Errors::RunOutOfIpAddressException.new(status, code, message)
          when 'same_license_required'
            return Saklient::Cloud::Errors::SameLicenseRequiredException.new(status, code, message)
          when 'server_could_not_stop'
            return Saklient::Cloud::Errors::ServerCouldNotStopException.new(status, code, message)
          when 'server_is_cleaning'
            return Saklient::Cloud::Errors::ServerIsCleaningException.new(status, code, message)
          when 'server_operation_failure'
            return Saklient::Cloud::Errors::ServerOperationFailureException.new(status, code, message)
          when 'server_power_must_be_down'
            return Saklient::Cloud::Errors::ServerPowerMustBeDownException.new(status, code, message)
          when 'server_power_must_be_up'
            return Saklient::Cloud::Errors::ServerPowerMustBeUpException.new(status, code, message)
          when 'service_temporarily_unavailable'
            return Saklient::Cloud::Errors::ServiceTemporarilyUnavailableException.new(status, code, message)
          when 'service_unavailable'
            return Saklient::Errors::HttpServiceUnavailableException.new(status, code, message)
          when 'size_mismatch'
            return Saklient::Cloud::Errors::SizeMismatchException.new(status, code, message)
          when 'snapshot_in_migration'
            return Saklient::Cloud::Errors::SnapshotInMigrationException.new(status, code, message)
          when 'still_creating'
            return Saklient::Cloud::Errors::StillCreatingException.new(status, code, message)
          when 'storage_abnormal'
            return Saklient::Cloud::Errors::StorageAbnormalException.new(status, code, message)
          when 'storage_operation_failure'
            return Saklient::Cloud::Errors::StorageOperationFailureException.new(status, code, message)
          when 'switch_hybrid_connected'
            return Saklient::Cloud::Errors::SwitchHybridConnectedException.new(status, code, message)
          when 'template_ftp_is_open'
            return Saklient::Cloud::Errors::TemplateFtpIsOpenException.new(status, code, message)
          when 'template_is_incomplete'
            return Saklient::Cloud::Errors::TemplateIsIncompleteException.new(status, code, message)
          when 'too_many_request'
            return Saklient::Cloud::Errors::TooManyRequestException.new(status, code, message)
          when 'unauthorized'
            return Saklient::Errors::HttpUnauthorizedException.new(status, code, message)
          when 'unknown'
            return Saklient::Cloud::Errors::UnknownException.new(status, code, message)
          when 'unknown_os_type'
            return Saklient::Cloud::Errors::UnknownOsTypeException.new(status, code, message)
          when 'unprocessable_entity'
            return Saklient::Errors::HttpUnprocessableEntityException.new(status, code, message)
          when 'unsupported_media_type'
            return Saklient::Errors::HttpUnsupportedMediaTypeException.new(status, code, message)
          when 'unsupported_res_class'
            return Saklient::Cloud::Errors::UnsupportedResClassException.new(status, code, message)
          when 'upgrade_required'
            return Saklient::Errors::HttpUpgradeRequiredException.new(status, code, message)
          when 'user_not_specified'
            return Saklient::Cloud::Errors::UserNotSpecifiedException.new(status, code, message)
          when 'variant_also_negotiates'
            return Saklient::Errors::HttpVariantAlsoNegotiatesException.new(status, code, message)
          when 'vnc_proxy_request_failure'
            return Saklient::Cloud::Errors::VncProxyRequestFailureException.new(status, code, message)
        end
        case (status)
          when 400
            return Saklient::Errors::HttpBadRequestException.new(status, code, message)
          when 401
            return Saklient::Errors::HttpUnauthorizedException.new(status, code, message)
          when 402
            return Saklient::Errors::HttpPaymentRequiredException.new(status, code, message)
          when 403
            return Saklient::Errors::HttpForbiddenException.new(status, code, message)
          when 404
            return Saklient::Errors::HttpNotFoundException.new(status, code, message)
          when 405
            return Saklient::Errors::HttpMethodNotAllowedException.new(status, code, message)
          when 406
            return Saklient::Errors::HttpNotAcceptableException.new(status, code, message)
          when 407
            return Saklient::Errors::HttpProxyAuthenticationRequiredException.new(status, code, message)
          when 408
            return Saklient::Errors::HttpRequestTimeoutException.new(status, code, message)
          when 409
            return Saklient::Errors::HttpConflictException.new(status, code, message)
          when 410
            return Saklient::Errors::HttpGoneException.new(status, code, message)
          when 411
            return Saklient::Errors::HttpLengthRequiredException.new(status, code, message)
          when 412
            return Saklient::Errors::HttpPreconditionFailedException.new(status, code, message)
          when 413
            return Saklient::Errors::HttpRequestEntityTooLargeException.new(status, code, message)
          when 415
            return Saklient::Errors::HttpUnsupportedMediaTypeException.new(status, code, message)
          when 416
            return Saklient::Errors::HttpRequestedRangeNotSatisfiableException.new(status, code, message)
          when 417
            return Saklient::Errors::HttpExpectationFailedException.new(status, code, message)
          when 422
            return Saklient::Errors::HttpUnprocessableEntityException.new(status, code, message)
          when 423
            return Saklient::Errors::HttpLockedException.new(status, code, message)
          when 424
            return Saklient::Errors::HttpFailedDependencyException.new(status, code, message)
          when 426
            return Saklient::Errors::HttpUpgradeRequiredException.new(status, code, message)
          when 500
            return Saklient::Errors::HttpRequestUriTooLongException.new(status, code, message)
          when 501
            return Saklient::Errors::HttpNotImplementedException.new(status, code, message)
          when 502
            return Saklient::Errors::HttpBadGatewayException.new(status, code, message)
          when 503
            return Saklient::Errors::HttpServiceUnavailableException.new(status, code, message)
          when 504
            return Saklient::Errors::HttpGatewayTimeoutException.new(status, code, message)
          when 505
            return Saklient::Errors::HttpHttpVersionNotSupportedException.new(status, code, message)
          when 506
            return Saklient::Errors::HttpVariantAlsoNegotiatesException.new(status, code, message)
          when 507
            return Saklient::Errors::HttpInsufficientStorageException.new(status, code, message)
          when 510
            return Saklient::Errors::HttpNotExtendedException.new(status, code, message)
        end
        return Saklient::Errors::HttpException.new(status, code, message)
      end

    end

  end
end
