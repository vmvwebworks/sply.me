class UserSearchOperation < Hyperloop::ServerOp
  param :receiver
  param :filter_result
  validate { }
  step{ self.user_filter(params.filter_result) }

  def user_filter(value)
    puts value
  end
  # dispatch_to { params.receiver }
end
