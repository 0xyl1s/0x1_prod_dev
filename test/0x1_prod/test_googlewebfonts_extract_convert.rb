# encoding: utf-8

module X module Prod module Dev
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/dev/dev.rb")
  include X::Lib::Dev

  class TestXGoogleWebfontsExtractConvert < TestXLib

    def setup
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_prod/lib/0x1_prod")
      @test_datadir_ini = true
      super
    end

    def test_x__
      target_value = "0xyl1s α --"
      tested_value = x__
      assert_equal target_value, tested_value
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
