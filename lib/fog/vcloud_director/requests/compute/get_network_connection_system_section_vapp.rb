module Fog
  module Compute
    class VcloudDirector
      class Real
        # Retrieve the network connection section of a VM.
        #
        # @param [String] vm_id The object identifier of the VM.
        # @return [Excon::Response]
        #   * body<~Hash>:
        # @see http://pubs.vmware.com/vcd-51/topic/com.vmware.vcloud.api.reference.doc_51/doc/operations/GET-NetworkConnectionSystemSection-vApp.html
        #   vCloud API Documentation
        # @since vCloud API version 0.9
        def get_network_connection_system_section_vapp(vm_id)
          request(
            :expects    => 200,
            :idempotent => true,
            :method     => 'GET',
            :parser     => Fog::ToHashDocument.new,
            :path       => "vApp/#{vm_id}/networkConnectionSection/"
          )
        end
      end
    end
  end
end
