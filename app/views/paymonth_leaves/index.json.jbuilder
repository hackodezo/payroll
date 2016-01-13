json.array!(@paymonth_leaves) do |paymonth_leafe|
  json.extract! paymonth_leafe, :id, :leave_id, :paymonth_id, :value
  json.url paymonth_leafe_url(paymonth_leafe, format: :json)
end
