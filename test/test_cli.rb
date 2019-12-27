require_relative 'helper'
require 'kiba-legacy-cli/cli'

class TestCli < Minitest::Test
  def fixture(file)
    File.join(File.dirname(__FILE__), 'fixtures', file)
  end


  def test_cli_launches
    Kiba::Legacy::CLI.run([fixture('valid.etl')])
  end

  def test_cli_reports_filename_and_lineno
    exception = assert_raises(NameError) do
      Kiba::Legacy::CLI.run([fixture('bogus.etl')])
    end

    assert_match(/uninitialized constant(.*)UnknownThing/, exception.message)
    assert_includes exception.backtrace.to_s, 'test/fixtures/bogus.etl:2:in'
  end

  def test_namespace_conflict
    Kiba::Legacy::CLI.run([fixture('namespace_conflict.etl')])
  end
end
