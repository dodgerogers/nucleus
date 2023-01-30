require "test_helper"

describe Nucleus::Responder do
  before do
    Nucleus.configure do |config|
      config.responder = { adapter: TestAdapter }
    end
  end

  describe "success" do
    it "returns expected response" do
      response = TestController.new.index

      assert(response.is_a?(Nucleus::JsonResponse))
    end
  end
end
