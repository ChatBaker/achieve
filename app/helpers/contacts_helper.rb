module ContactsHelper
    def choose_new_or_creat
    if action_name == 'new' || action_name == 'confirm'
      confirm_contacts_path
    elsif action_name == 'create'
      contact_path
    end
  end
end
