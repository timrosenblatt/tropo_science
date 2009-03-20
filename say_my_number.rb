answer

digits = $currentCall.callerID.to_s.split('')

area_code = digits[0..2]
city_code = digits[3..5]
subscriber_number = digits[6..9]


# single dashes get spoken as 'dash', use doubles for a pause.
# Double commas don't work, neither do extra spaces
say "-- -- -- S-up. Your phone number is -- #{area_code.join(',')}--#{city_code.join(',')}--#{subscriber_number.join(',')}"

hangup
