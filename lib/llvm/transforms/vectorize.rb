# frozen_string_literal: true

require 'llvm'
require 'llvm/core'
require 'llvm/transforms/vectorize_ffi'

module LLVM
  class PassManager
    # @LLVMpass bb_vectorize
    def bb_vectorize!
      C.add_bb_vectorize_pass(self)
    end

    # @LLVMpass loop_vectorize
    def loop_vectorize!
      C.add_loop_vectorize_pass(self)
    end

    # @LLVMpass slp_vectorize
    def slp_vectorize!
      C.add_slp_vectorize_pass(self)
    end
  end
end
