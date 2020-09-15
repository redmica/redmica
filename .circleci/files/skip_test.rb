UTC_SKIP_TESTS = {}
TOKYO_SKIP_TESTS = {"unit/mailer_test.rb" => %w(test_reminder_should_include_issues_assigned_to_groups test_reminders_for_users test_reminders test_reminders_should_sort_issues_by_due_date test_reminders_language_auto),"functional/issues_controller_test.rb" => %w(test_index_grouped_by_created_on_if_time_zone_is_nil)}
SAMOA_SKIP_TESTS = {"unit/mailer_test.rb" => %w(test_reminder_should_include_issues_assigned_to_groups test_reminders_for_users test_reminders test_reminders_should_sort_issues_by_due_date test_reminders_language_auto)}
TEST_DIRECTORY_PATH = ARGV[1] || "../../test" 
Object.const_get(ARGV[0].upcase).each do |path, test_names|
     content = File.read("#{TEST_DIRECTORY_PATH}/#{path}").gsub(/def setup\n/, "def setup\nskip \'SKIP\' if #{test_names}.include?(self.name)\n")
File.write("#{TEST_DIRECTORY_PATH}/#{path}", content)
end
