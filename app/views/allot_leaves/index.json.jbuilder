json.array!(@allot_leaves) do |allot_leafe|
  json.extract! allot_leafe, :id, :employee_id, :paymonth_id
  json.url allot_leafe_url(allot_leafe, format: :json)
end
