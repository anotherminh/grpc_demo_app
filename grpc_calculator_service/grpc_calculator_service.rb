require 'grpc'
require 'calculator_services_pb'

class CalculatorServer < Calculator::CalculatorService::Service
  def add_ints(call_req, _unused_call) # wtf is _unused_call
    compute(:+, call_req.nums)
  end

  def subtract_ints(call_req, _unused_call)
    compute(:-, call_req.nums)
  end

  def divide_ints(call_req, _unused_call)
    compute(:/, call_req.nums)
  end

  def multiply_ints(call_req, _unused_call)
    compute(:*, call_req.nums)
  end

  private

  def compute(op, ints)
    Calculator::CalculatorResponse.new(result: ints.inject(op))
  end
end

def start
  port = 50051
  puts "starting grpc server on port #{port}"
  s = GRPC::RpcServer.new
  s.add_http2_port("0.0.0.0:#{port}", :this_port_is_insecure)
  s.handle(CalculatorServer)
  puts "ready to go..."
  s.run_till_terminated
end

start

