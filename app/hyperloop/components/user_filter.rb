class UserFilter < Hyperloop::Component
  def render
    DIV(class: "input-field col s6") do
      I(class: "material-icons prefix"){"search"}
      INPUT(type: :text, id: "icon_prefix2").on(:change)do |e|
        UserSearchStore.mutate.filter_result e.target.value
        UserFilter.search_users
      end
      LABEL(htmlFor: "icon_prefix2") {"search by keyword"}
    end
  end
  def self.search_users
    UserSearchOperation.run(filter_result: UserSearchStore.state.filter_result)
  end
end
