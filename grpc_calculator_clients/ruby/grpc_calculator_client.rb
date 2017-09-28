require 'calculator_services_pb'

module CalculatorStub
  class << self
    def add(*ints)
      stub.add_ints(request(ints))
    end

    def subtract(*ints)
      stub.subtract_ints(request(ints))
    end

    def divide(*ints)
      stub.divide_ints(request(ints))
    end

    def multiply(*ints)
      stub.multiply_ints(request(ints))
    end

    private

    def request(ints)
      Calculator::CalculatorRequest.new(nums: ints)
    end

    def stub
      @stub ||= Calculator::CalculatorService::Stub.new('localhost:50051', :this_channel_is_insecure)
    end
  end
end
