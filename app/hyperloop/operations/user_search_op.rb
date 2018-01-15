class UserSearchOperation < Hyperloop::ServerOp
  param :filter_result
  step{ self.user_filter(params.filter_result) }

  def user_filter(value)
    result = User.search(params.filter_result, fields: [:name])
    puts result
    result
  end
end
