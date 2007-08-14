require "unit_record/column_dumper"
require "unit_record/disconnected_active_record"
require "unit_record/disconnected_test_case"
require "unit_record/disconnected_fixtures"
ActiveRecord::Base.extend UnitRecord::DisconnectedActiveRecord
Test::Unit::TestCase.extend UnitRecord::DisconnectedTestCase
require "active_record/fixtures"
Fixtures.extend UnitRecord::DisconnectedFixtures