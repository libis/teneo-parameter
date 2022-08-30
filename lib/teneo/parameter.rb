# frozen_string_literal: true

require_relative "parameter/version"

module Teneo
  module Parameter
    # Exception that will be raised when a parameter value does not pass the validation checks.
    class ValidationError < RuntimeError
    end

    # Exception that will be raised when an attempt is made to change the value of a frozen parameter.
    class FrozenError < RuntimeError
    end

    autoload :Definition, "teneo/parameter/definition"
    autoload :Container, "teneo/parameter/container"
  end
end
