class TestGenerateParticipantUsers < Test::Unit::TestCase

    def test_blank
        discussion = Discussion.new(title: "fake", ...)
        host = User.find(42)
        participants = ""
  
        workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)

        assert_equal(nil, workflow.generate_participant_users_from_email_string)
    end

end