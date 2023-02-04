class NucleusCoreTestConfiguration
  def self.init!
    NucleusCore.configure do |config|
      config.logger = nil
      config.default_response_format = nil
      config.response_adapter = nil
      config.exceptions = {
        bad_request: NotImplementedError,
        not_found: LoadError,
        unprocessable: RuntimeError,
        unauthorized: SecurityError,
        server_error: SignalException
      }
    end
  end
end
