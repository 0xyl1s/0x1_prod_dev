# encoding: utf-8

module X module Prod module Dev
  X_LIB_PATH_BASE = '.0x1/00mu/00sourcing/0x1_lib'
  X_PROD_LIB_DIR_BASE = '.0x1/00mu/00sourcing/0x1_prod/00scripts/lib/0x1_prod'

  require 'minitest/autorun'
  require File.join(Dir.home, "#{X_LIB_PATH_BASE}/0x1/lib/toolkit/standard.rb")

  class TestXLib < MiniTest::Unit::TestCase
    include X::Lib::Toolkit::Standard

    def setup
      @lib_dir = File.join(Dir.home, X_PROD_LIB_DIR_BASE)
      @x_lib_path_base = X_LIB_PATH_BASE
      x__lib_load_modules([:standard])
      @test_dir = Dir.pwd
    end

    def teardown
      FileUtils.rm_rf @test_datadir
    end

  end

end end end

# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim:
