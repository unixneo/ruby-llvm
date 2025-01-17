# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib ["libLLVM-13.so.1", "libLLVM.so.13", "LLVM-13"]

  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end

  # See llvm::createArgumentPromotionPass function.
  #
  # @method add_argument_promotion_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_argument_promotion_pass, :LLVMAddArgumentPromotionPass, [:pointer], :void

  # See llvm::createConstantMergePass function.
  #
  # @method add_constant_merge_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_constant_merge_pass, :LLVMAddConstantMergePass, [:pointer], :void

  # See llvm::createDeadArgEliminationPass function.
  #
  # @method add_dead_arg_elimination_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_dead_arg_elimination_pass, :LLVMAddDeadArgEliminationPass, [:pointer], :void

  # See llvm::createFunctionAttrsPass function.
  #
  # @method add_function_attrs_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_function_attrs_pass, :LLVMAddFunctionAttrsPass, [:pointer], :void

  # See llvm::createFunctionInliningPass function.
  #
  # @method add_function_inlining_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_function_inlining_pass, :LLVMAddFunctionInliningPass, [:pointer], :void

  # See llvm::createAlwaysInlinerPass function.
  #
  # @method add_always_inliner_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_always_inliner_pass, :LLVMAddAlwaysInlinerPass, [:pointer], :void

  # See llvm::createGlobalDCEPass function.
  #
  # @method add_global_dce_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_global_dce_pass, :LLVMAddGlobalDCEPass, [:pointer], :void

  # See llvm::createGlobalOptimizerPass function.
  #
  # @method add_global_optimizer_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_global_optimizer_pass, :LLVMAddGlobalOptimizerPass, [:pointer], :void

  # See llvm::createIPConstantPropagationPass function.
  #
  # @method add_ip_constant_propagation_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_ip_constant_propagation_pass, :LLVMAddIPConstantPropagationPass, [:pointer], :void

  # See llvm::createPruneEHPass function.
  #
  # @method add_prune_eh_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_prune_eh_pass, :LLVMAddPruneEHPass, [:pointer], :void

  # See llvm::createIPSCCPPass function.
  #
  # @method add_ipsccp_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_ipsccp_pass, :LLVMAddIPSCCPPass, [:pointer], :void

  # See llvm::createInternalizePass function.
  #
  # @method add_internalize_pass(pass_manager_ref, all_but_main)
  # @param [FFI::Pointer(PassManagerRef)] pass_manager_ref
  # @param [Integer] all_but_main
  # @return [nil]
  # @scope class
  attach_function :add_internalize_pass, :LLVMAddInternalizePass, [:pointer, :uint], :void

  # See llvm::createStripDeadPrototypesPass function.
  #
  # @method add_strip_dead_prototypes_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_strip_dead_prototypes_pass, :LLVMAddStripDeadPrototypesPass, [:pointer], :void

  # See llvm::createStripSymbolsPass function.
  #
  # @method add_strip_symbols_pass(pm)
  # @param [FFI::Pointer(PassManagerRef)] pm
  # @return [nil]
  # @scope class
  attach_function :add_strip_symbols_pass, :LLVMAddStripSymbolsPass, [:pointer], :void
end
