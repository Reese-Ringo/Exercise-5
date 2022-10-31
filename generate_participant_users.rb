class GenerateParticipantUsers

    def generate_participant_users_from_email_string
        return if @participants_email_string.blank?
          @participants_email_string.split.uniq.map do |email_address|
            User.create(email: email_address.downcase, password: Devise.friendly_token)
          end
        end
    end

end