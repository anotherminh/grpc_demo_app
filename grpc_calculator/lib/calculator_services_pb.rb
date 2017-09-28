# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: calculator.proto for package 'calculator'

require 'grpc'
require 'calculator_pb'

module Calculator
  module CalculatorService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'calculator.CalculatorService'

      rpc :AddInts, CalculatorRequest, CalculatorResponse
      rpc :SubtractInts, CalculatorRequest, CalculatorResponse
      rpc :DivideInts, CalculatorRequest, CalculatorResponse
      rpc :MultiplyInts, CalculatorRequest, CalculatorResponse
    end

    Stub = Service.rpc_stub_class
  end
end